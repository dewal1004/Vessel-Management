pageextension 50291 pageextension50291 extends "Select Source"
{
    layout
    {

        //Unsupported feature: Property Modification (IndentationControls) on "Group(Control 2)".


        //Unsupported feature: Property Modification (Name) on "Name(Control 3)".


        //Unsupported feature: Property Modification (SourceExpr) on "Name(Control 3)".

    }

    //Unsupported feature: Code Modification on "SetStyle(PROCEDURE 1)".

    //procedure SetStyle();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if HasChildNodes then
      StyleText := 'Strong'
    else
      StyleText := '';
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Is Parent" or "Has Attributes" then
    #2..4
    */
    //end;
}

