tableextension 50281 tableextension50281 extends "Payment Registration Buffer"
{
    fields
    {

        //Unsupported feature: Code Modification on ""Payment Made"(Field 9).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if not "Payment Made" then begin
          "Amount Received" := 0;
          "Date Received" := 0D;
        #4..6
        end;

        AutoFillDate;
        if "Amount Received" = 0 then
          SuggestAmountReceivedBasedOnDate;
        UpdateRemainingAmount;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..9

        SuggestAmountReceivedBasedOnDate;
        UpdateRemainingAmount;
        */
        //end;
    }


    //Unsupported feature: Code Modification on "RestoreUserValues(PROCEDURE 13)".

    //procedure RestoreUserValues();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if TempSavePmtRegnBuf.FindSet then
      repeat
        if Get(TempSavePmtRegnBuf."Ledger Entry No.") then begin
          "Payment Made" := TempSavePmtRegnBuf."Payment Made";
          "Date Received" := TempSavePmtRegnBuf."Date Received";
          "Pmt. Discount Date" := TempSavePmtRegnBuf."Pmt. Discount Date";
          SuggestAmountReceivedBasedOnDate;
          "Remaining Amount" := TempSavePmtRegnBuf."Remaining Amount";
          "Amount Received" := TempSavePmtRegnBuf."Amount Received";
          "External Document No." := TempSavePmtRegnBuf."External Document No.";
          Modify;
        end;
      until TempSavePmtRegnBuf.Next = 0;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6
          "Amount Received" := TempSavePmtRegnBuf."Amount Received";
    #8..13
    */
    //end;
}

