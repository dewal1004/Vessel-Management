report 50097 "Create Cust. Acct. for Staff"
{
    ProcessingOnly = true;
    ShowPrintStatus = false;
    UseRequestPage = false;

    dataset
    {
        dataitem(Employee; Employee)
        {
            DataItemTableView = SORTING ("No.");
            RequestFilterFields = "No.", "Region Code", "Global Dimension 1 Code", Class;

            trigger OnAfterGetRecord()
            begin
                Cust.Init;
                FullNm := Employee.FullName;
                Cust.Name := CopyStr(FullNm, 1, MaxStrLen(Cust.Name));
                Cust."Search Name" := Employee."First Name";
                Cust.Address := Employee.Address;
                Cust."Address 2" := Employee."Address 2";
                Cust.City := Employee.City;
                Cust."Phone No." := Employee."Phone No.";
                Cust."Global Dimension 1 Code" := Employee."Global Dimension 1 Code";
                Cust."Global Dimension 2 Code" := Employee."Global Dimension 2 Code";
                Cust."Last Date Modified" := Today;
                Cust."Fax No." := Employee."Fax No.";
                //Cust.Picture := Employee.Picture;
                Cust.County := Employee."Country/Region Code";
                Cust."E-Mail" := Employee."E-Mail";
                Cust.Validate(Cust."Gen. Bus. Posting Group", 'STAFF');
                Cust."Customer Posting Group" := 'STAFF';
                Cust."No." := 'EC' + CopyStr(Employee."No.", 2);
                if not Cust.Insert then begin
                    if Confirm('Staff Account Already Exist, Modify Entry?', false) then begin
                        Cust.Modify;
                        Message('Staff Account Modified');
                    end
                end
                else
                    Message('Staff Account Created');

                Employee."Acct. type" := Employee."Acct. type"::Customer;
                Employee."Acct. No" := Cust."No.";
                Employee.Modify;
                CustCount := CustCount + 1;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo("No.");
                CustCount := 0;
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

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        Cust: Record Customer;
        PPSetup: Record "Purchases & Payables Setup";
        NoSeriesRec: Record "No. Series Line";
        NumCode: Code[10];
        NewVendNum: Code[10];
        ContractRec: Record "Employment Contract";
        k: Integer;
        LnoUsed: Code[10];
        CustCount: Integer;
        FullNm: Text[250];
}

