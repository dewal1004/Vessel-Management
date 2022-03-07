pageextension 50284 pageextension50284 extends "View Applied Entries"
{

    //Unsupported feature: Code Modification on "RemoveApplications(PROCEDURE 1)".

    //procedure RemoveApplications();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Application.SetCurrentKey("Inbound Item Entry No.","Outbound Item Entry No.");
    Application.SetRange("Inbound Item Entry No.",Inbound);
    Application.SetRange("Outbound Item Entry No.",OutBound);
    if Application.FindSet then
      repeat
        Apply.UnApply(Application);
        Apply.LogUnapply(Application);
      until Application.Next = 0;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6
      until Application.Next = 0;
    */
    //end;


    //Unsupported feature: Code Modification on "ApplyRec(PROCEDURE 5)".

    //procedure ApplyRec();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Applyrec.Get(RecordToShow."Entry No.");
    CurrPage.SetSelectionFilter(TempItemLedgEntry);
    if TempItemLedgEntry.FindSet then
    #4..7
          Apply.LogApply(Applyrec,AppliedItemLedgEntry);
        end;
      until TempItemLedgEntry.Next = 0;

    if Applyrec.Positive then
      RemoveDuplicateApplication(Applyrec."Entry No.");

    Show;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..10
    if Applyrec.Positive then
      RemoveDuplicateApplication(Applyrec."Entry No.");
    Show;
    */
    //end;
}

