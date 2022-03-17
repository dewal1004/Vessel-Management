report 50094 "Appraisal List"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING ("Document Type", "No.") WHERE ("Document Type" = CONST ("Order"));
            RequestFilterHeading = 'Sales Order';
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING (Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING (Number) WHERE (Number = CONST (1));
                    dataitem("Sales Line"; "Sales Line")
                    {
                        DataItemLink = "Document Type" = FIELD ("Document Type"), "Document No." = FIELD ("No.");
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING ("Document Type", "Document No.", "Line No.");

                        trigger OnPreDataItem()
                        begin
                            CurrReport.Break;
                        end;
                    }
                    dataitem("Skill Appraisal"; "Skill Appraisal")
                    {
                        DataItemTableView = SORTING (Type) ORDER(Descending);

                        trigger OnAfterGetRecord()
                        begin
                            // Univision start 31/10/01 Yusuf
                            Slno := Slno + 10;
                            "Sales Line".Init;
                            "Sales Line"."Document Type" := 5;
                            "Sales Line"."Document No." := "Sales Header"."No.";
                            "Sales Line"."Line No." := Slno;
                            "Sales Line"."No." := "Skill code";
                            "Sales Line".Type := Type;
                            "Sales Line".Description := "Skill Description";
                            "Sales Line"."Gen. Bus. Posting Group" := "Sales Header"."Gen. Bus. Posting Group";
                            "Sales Line"."Gen. Prod. Posting Group" := "Gen. Prod. Posting Group";
                            "Sales Line"."VAT Bus. Posting Group" := "Sales Header"."Gen. Bus. Posting Group";
                            "Sales Line"."VAT Prod. Posting Group" := "VAT Prod. Posting Group";
                            if not "Sales Line".Insert then "Sales Line".Modify;
                            // Univision Finish 31/10/01 Yusuf
                        end;

                        trigger OnPreDataItem()
                        begin
                            Slno := 10000;
                            //Univision Start 24/10/01 Yusuf
                            case "Sales Header"."Appraisal Selection" of
                                "Sales Header"."Appraisal Selection"::Interview:
                                    case "Sales Header"."Contr. Code/Postn.  Applied" of
                                        2:
                                            begin
                                                SetRange("3", true);
                                                SetRange(Interview, false);
                                            end;
                                        3:
                                            begin
                                                SetRange("4", true);
                                                SetRange(Interview, false);
                                            end;
                                        5:
                                            begin
                                                SetRange("6", true);
                                                SetRange(Interview, false);
                                            end;
                                        1:
                                            begin
                                                SetRange("2", true);
                                                SetRange(Interview, false);
                                            end;
                                        6:
                                            begin
                                                SetRange("7", true);
                                                SetRange(Interview, false);
                                            end;
                                        4:
                                            begin
                                                SetRange("5", true);
                                                SetRange(Interview, false);
                                            end;
                                        0:
                                            begin
                                                SetRange("1", true);
                                                SetRange(Interview, false);
                                            end;


                                    end;

                                "Sales Header"."Appraisal Selection"::"Skill & Performance":
                                    case "Sales Header"."Contr. Code/Postn.  Applied" of
                                        2:
                                            SetRange("3", true);
                                        3:
                                            SetRange("4", true);
                                        5:
                                            SetRange("6", true);
                                        1:
                                            SetRange("2", true);
                                        6:
                                            SetRange("7", true);
                                        4:
                                            SetRange("5", true);
                                        0:
                                            SetRange("1", true);
                                    end;
                            end;
                            // Univision Finish 24/10/01 Yusuf
                        end;
                    }
                    dataitem(RoundLoop; "Integer")
                    {
                        DataItemTableView = SORTING (Number);

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then
                                SalesLine2.Find('-')
                            else
                                SalesLine2.Next;
                            "Sales Line" := SalesLine2;

                            VATAmountLine.Init;
                            VATAmountLine."VAT %" := "Sales Line"."VAT %";
                            VATAmountLine."VAT Base" := "Sales Line".Amount;
                            VATAmountLine."Amount Including VAT" := "Sales Line"."Amount Including VAT";
                            VATAmountLine.InsertLine;
                        end;

                        trigger OnPostDataItem()
                        begin
                            SalesLine2.DeleteAll;
                        end;

                        trigger OnPreDataItem()
                        begin
                            VATAmountLine.DeleteAll;
                            MoreLines := SalesLine2.Find('+');
                            while MoreLines and (SalesLine2.Description = '') and
                                  (SalesLine2."No." = '') and (SalesLine2.Quantity = 0) and
                                  (SalesLine2.Amount = 0)
                            do
                                MoreLines := SalesLine2.Next(-1) <> 0;
                            if not MoreLines then
                                CurrReport.Break;
                            SalesLine2.SetRange("Line No.", 0, SalesLine2."Line No.");
                            SetRange(Number, 1, SalesLine2.Count);
                            CurrReport.CreateTotals(SalesLine2.Amount, SalesLine2."Amount Including VAT", SalesLine2."Inv. Discount Amount");
                        end;
                    }
                    dataitem(VATCounter; "Integer")
                    {
                        DataItemTableView = SORTING (Number);

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            if VATAmountLine.Count <= 1 then
                                CurrReport.Break;
                            SetRange(Number, 1, VATAmountLine.Count);
                            CurrReport.CreateTotals(VATAmountLine."VAT Base", VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(Total; "Integer")
                    {
                        DataItemTableView = SORTING (Number) WHERE (Number = CONST (1));
                    }
                    dataitem(Total2; "Integer")
                    {
                        DataItemTableView = SORTING (Number) WHERE (Number = CONST (1));

                        trigger OnPreDataItem()
                        begin
                            if not ShowShippingAddr then
                                CurrReport.Break;
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    Clear(SalesLine2);
                    Clear(SalesPost);
                    SalesPost.GetSalesLines("Sales Header", SalesLine2, 0);

                    if Number > 1 then
                        CopyText := 'COPY';
                    CurrReport.PageNo := 1;
                end;

                trigger OnPostDataItem()
                begin
                    if not CurrReport.Preview then
                        SalesCountPrinted.Run("Sales Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := Abs(NoOfCopies) + 1;
                    CopyText := '';
                    SetRange(Number, 1, NoOfLoops);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                if "Salesperson Code" = '' then begin
                    Clear(SalesPurchPerson);
                    SalesPersonText := '';
                end else begin
                    SalesPurchPerson.Get("Salesperson Code");
                    SalesPersonText := 'Salesperson';
                end;
                if "Your Reference" = '' then
                    ReferenceText := ''
                else
                    ReferenceText := FieldName("Your Reference");
                if "VAT Registration No." = '' then
                    VATNoText := ''
                else
                    VATNoText := FieldName("VAT Registration No.");
                if "Currency Code" = '' then begin
                    GLSetup.TestField("LCY Code");
                    TotalText := StrSubstNo('Total %1', GLSetup."LCY Code");
                    TotalInclVATText := StrSubstNo('Total %1 Incl. VAT', GLSetup."LCY Code");
                end else begin
                    TotalText := StrSubstNo('Total %1', "Currency Code");
                    TotalInclVATText := StrSubstNo('Total %1 Incl. VAT', "Currency Code");
                end;
                FormatAddr.SalesHeaderBillTo(CustAddr, "Sales Header");

                if "Payment Terms Code" = '' then
                    PaymentTerms.Init
                else
                    PaymentTerms.Get("Payment Terms Code");
                if "Shipment Method Code" = '' then
                    ShipmentMethod.Init
                else
                    ShipmentMethod.Get("Shipment Method Code");

                //FormatAddr.SalesHeaderShipTo(ShipToAddr,"Sales Header");
                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                for i := 1 to ArrayLen(ShipToAddr) do
                    if ShipToAddr[i] <> CustAddr[i] then
                        ShowShippingAddr := true;
            end;

            trigger OnPreDataItem()
            begin
                CompanyInfo.Get;
                FormatAddr.Company(CompanyAddr, CompanyInfo);
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        GLSetup.Get;
    end;

    var
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        VATAmountLine: Record "VAT Amount Line" temporary;
        SalesLine2: Record "Sales Line" temporary;
        SalesCountPrinted: Codeunit "Sales-Printed";
        FormatAddr: Codeunit "Format Address";
        SalesPost: Codeunit "Sales-Post";
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        SalesPersonText: Text[30];
        VATNoText: Text[30];
        ReferenceText: Text[30];
        TotalText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        "---": Text[30];
        Slno: Integer;
}

