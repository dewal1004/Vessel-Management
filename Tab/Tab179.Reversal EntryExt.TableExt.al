tableextension 50244 tableextension50244 extends "Reversal Entry"
{

    //Unsupported feature: Code Modification on "CheckFAPostingDate(PROCEDURE 24)".

    //procedure CheckFAPostingDate();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if (AllowPostingFrom = 0D) and (AllowPostingto = 0D) then begin
      if UserId <> '' then
        if UserSetup.Get(UserId) then begin
    #4..9
        AllowPostingto := FASetup."Allow FA Posting To";
      end;
      if AllowPostingto = 0D then
        AllowPostingto := 99981231D;
    end;
    if (FAPostingDate < AllowPostingFrom) or (FAPostingDate > AllowPostingto) then
      Error(Text005,Caption,EntryNo,FALedgEntry.FieldCaption("FA Posting Date"));
    if FAPostingDate > MaxPostingDate then
      MaxPostingDate := FAPostingDate;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..12
        AllowPostingto := DMY2Date(31,12,9998);
    #14..18
    */
    //end;
}

