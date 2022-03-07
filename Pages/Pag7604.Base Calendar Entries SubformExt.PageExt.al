pageextension 50350 pageextension50350 extends "Base Calendar Entries Subform"
{

    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Reset;
    SetFilter("Period Start",'>=%1',00000101D);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Reset;
    SetFilter("Period Start",'>=%1',DMY2Date(1,1,0));
    */
    //end;
}

