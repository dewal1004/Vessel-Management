pageextension 50208 pageextension50208 extends "General Ledger Entries"
{
    layout
    {
        addafter("Entry No.")
        {
            field("Transaction No."; "Transaction No.")
            {
            }
            field("Source Type"; "Source Type")
            {
                Visible = false;
            }
            field("Source No."; "Source No.")
            {
                Visible = false;
            }
        }
    }
}

