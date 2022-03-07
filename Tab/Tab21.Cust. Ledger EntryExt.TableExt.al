tableextension 50209 tableextension50209 extends "Cust. Ledger Entry"
{
    fields
    {
        field(50301; "Loan ID"; Code[10])
        {
            TableRelation = "Loan.";
        }
        field(90016; "Remaining Amt. (LCY)1"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE ("Cust. Ledger Entry No." = FIELD ("Entry No."),
                                                                                 "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Remaining Amt. (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
    }


    //Unsupported feature: Code Modification on "ShowDoc(PROCEDURE 7)".

    //procedure ShowDoc();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    case "Document Type" of
      "Document Type"::Invoice:
        begin
          if SalesInvoiceHdr.Get("Document No.") then begin
            PAGE.Run(PAGE::"Posted Sales Invoice",SalesInvoiceHdr);
            exit(true);
          end;
          if ServiceInvoiceHeader.Get("Document No.") then begin
            PAGE.Run(PAGE::"Posted Service Invoice",ServiceInvoiceHeader);
            exit(true);
          end;
        end;
      "Document Type"::"Credit Memo":
        begin
          if SalesCrMemoHdr.Get("Document No.") then begin
            PAGE.Run(PAGE::"Posted Sales Credit Memo",SalesCrMemoHdr);
            exit(true);
          end;
          if ServiceCrMemoHeader.Get("Document No.") then begin
            PAGE.Run(PAGE::"Posted Service Credit Memo",ServiceCrMemoHeader);
            exit(true);
          end;
        end;
      "Document Type"::"Finance Charge Memo":
        if IssuedFinChargeMemoHeader.Get("Document No.") then begin
          PAGE.Run(PAGE::"Issued Finance Charge Memo",IssuedFinChargeMemoHeader);
          exit(true);
        end;
      "Document Type"::Reminder:
        if IssuedReminderHeader.Get("Document No.") then begin
          PAGE.Run(PAGE::"Issued Reminder",IssuedReminderHeader);
          exit(true);
        end;
    end;

    OnAfterShowDoc(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    case "Document Type" of
      "Document Type"::Invoice: begin
        if SalesInvoiceHdr.Get("Document No.") then begin
          PAGE.Run(PAGE::"Posted Sales Invoice",SalesInvoiceHdr);
          exit(true);
        end;
        if ServiceInvoiceHeader.Get("Document No.") then begin
    #9..14
           if SalesCrMemoHdr.Get("Document No.") then begin
             PAGE.Run(PAGE::"Posted Sales Credit Memo",SalesCrMemoHdr);
             exit(true);
           end;
           if ServiceCrMemoHeader.Get("Document No.") then begin
             PAGE.Run(PAGE::"Posted Service Credit Memo",ServiceCrMemoHeader);
             exit(true);
           end;
         end;
       "Document Type"::"Finance Charge Memo":
         if IssuedFinChargeMemoHeader.Get("Document No.") then begin
           PAGE.Run(PAGE::"Issued Finance Charge Memo",IssuedFinChargeMemoHeader);
           exit(true);
         end;
       "Document Type"::Reminder:
         if IssuedReminderHeader.Get("Document No.") then begin
           PAGE.Run(PAGE::"Issued Reminder",IssuedReminderHeader);
           exit(true);
         end;
       end;
    */
    //end;


    //Unsupported feature: Code Modification on "ShowPostedDocAttachment(PROCEDURE 15)".

    //procedure ShowPostedDocAttachment();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    case "Document Type" of
      "Document Type"::Invoice:
        if SalesInvoiceHdr.Get("Document No.") then
          OpenDocumentAttachmentDetails(SalesInvoiceHdr);
      "Document Type"::"Credit Memo":
        if SalesCrMemoHdr.Get("Document No.") then
          OpenDocumentAttachmentDetails(SalesCrMemoHdr);
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    case "Document Type" of
      "Document Type"::Invoice: begin
        if SalesInvoiceHdr.Get("Document No.") then
          OpenDocumentAttachmentDetails(SalesInvoiceHdr);
        end;
      "Document Type"::"Credit Memo": begin
        if SalesCrMemoHdr.Get("Document No.") then
          OpenDocumentAttachmentDetails(SalesCrMemoHdr);
      end;
      end;
    */
    //end;
}

