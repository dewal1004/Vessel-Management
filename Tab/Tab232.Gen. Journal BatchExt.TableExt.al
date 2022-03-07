tableextension 50250 tableextension50250 extends "Gen. Journal Batch"
{
    fields
    {
        field(50329; "Shortcut Dimension 1 Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(50330; "Shortcut Dimension 2 Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
    }


    //Unsupported feature: Code Modification on "CheckBalance(PROCEDURE 11)".

    //procedure CheckBalance();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Balance := GetBalance;

    if Balance = 0 then
      OnGeneralJournalBatchBalanced
    else
      OnGeneralJournalBatchNotBalanced;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    Balance := GetBalance;
    */
    //end;


    //Unsupported feature: Property Modification (Id) on "CannotBeSpecifiedForRecurrJnlErr(Variable 1007)".

    //var
    //>>>> ORIGINAL VALUE:
    //CannotBeSpecifiedForRecurrJnlErr : 1007;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CannotBeSpecifiedForRecurrJnlErr : 10007;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "BalAccountIdDoesNotMatchAGLAccountErr(Variable 1008)".

    //var
    //>>>> ORIGINAL VALUE:
    //BalAccountIdDoesNotMatchAGLAccountErr : 1008;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BalAccountIdDoesNotMatchAGLAccountErr : 10008;
    //Variable type has not been exported.

    var
        "--------------------": Text[30];
        DimMgt: Codeunit DimensionManagement;
}

