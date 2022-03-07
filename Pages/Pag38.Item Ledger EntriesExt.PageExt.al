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
            field("Applied Negative"; "Applied Negative")
            {
            }
            field("Applied Positive"; "Applied Positive")
            {
            }
        }
        addafter("Job Task No.")
        {
            field("Source Code"; "Source Code")
            {
            }
            field("Source No."; "Source No.")
            {
                Visible = false;
            }
            field("External Document No."; "External Document No.")
            {
                Visible = false;
            }
            field("Source Type"; "Source Type")
            {
            }
        }
    }

    //Unsupported feature: Property Insertion (Length) on "GetCaption(PROCEDURE 3).ReturnValue".


    //Unsupported feature: Property Insertion (Length) on "GetCaption(PROCEDURE 3).SourceTableName(Variable 1002)".

}

