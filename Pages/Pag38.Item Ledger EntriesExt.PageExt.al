pageextension 50215 pageextension50215 extends "Item Ledger Entries"
{
    layout
    {
        modify(Quantity)
        {
            AssistEdit = true;
        }
        addafter("Remaining Quantity")
        {
            field("Applied Negative"; rec."Applied Negative")
            {
            }
            field("Applied Positive"; rec."Applied Positive")
            {
            }
        }
        addafter("Job Task No.")
        {
            field("Source Code"; rec."Source Code")
            {
            }
            field("Source No."; rec."Source No.")
            {
                Visible = false;
            }
            field("External Document No."; rec."External Document No.")
            {
                Visible = false;
            }
            field("Source Type"; rec."Source Type")
            {
            }
        }
    }

    //Unsupported feature: Property Insertion (Length) on "GetCaption(PROCEDURE 3).ReturnValue".


    //Unsupported feature: Property Insertion (Length) on "GetCaption(PROCEDURE 3).SourceTableName(Variable 1002)".

}

