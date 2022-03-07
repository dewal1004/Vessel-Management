pageextension 50301 pageextension50301 extends "Native - Sales Inv. Entity"
{

    //Unsupported feature: Code Modification on "ClearCalculatedFields(PROCEDURE 10)".

    //procedure ClearCalculatedFields();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Clear(BillingPostalAddressJSONText);
    Clear(SalesInvoiceLinesJSON);
    Clear(PreviousSalesInvoiceLinesJSON);
    #4..10
    Clear(WorkDescription);
    Clear(DueDateSet);
    Clear(CurrencyCodeTxt);
    "Due Date" := 19990101D;
    Clear(DocumentDateSet);
    Clear(DocumentDateVar);
    Clear(RemainingAmountVar);
    Clear(TaxAreaDisplayName);
    Clear(LastEmailSentTime);
    Clear(LastEmailSentStatus);
    TempFieldBuffer.DeleteAll;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..13
    "Due Date" := DMY2Date(1,1,9999);
    #15..21
    */
    //end;
}

