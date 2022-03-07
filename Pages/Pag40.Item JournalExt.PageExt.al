pageextension 50217 pageextension50217 extends "Item Journal"
{
    layout
    {
        modify("Entry Type")
        {
            OptionCaption = 'Purchase,Sale,Positive Adjmt.,Negative Adjmt.,Transfer';
        }
        modify("Applies-to Entry")
        {
            Visible = false;
        }
    }

    //Unsupported feature: Code Modification on "OnInsertRecord".

    //trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "Entry Type" > "Entry Type"::"Negative Adjmt." then
      Error(Text000,"Entry Type");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Entry Type" > "Entry Type"::Transfer then
      Error(Text000,"Entry Type");
    */
    //end;
}

