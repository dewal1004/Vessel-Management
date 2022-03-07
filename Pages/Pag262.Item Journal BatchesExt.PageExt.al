pageextension 50266 pageextension50266 extends "Item Journal Batches"
{
    layout
    {
        modify("Posting No. Series")
        {
            Visible = false;
        }
        addafter("Posting No. Series")
        {
            field("Entry Type"; "Entry Type")
            {
            }
            field("Transfer From"; "Transfer From")
            {
            }
            field("Transfer To"; "Transfer To")
            {
            }
            field("Document No."; "Document No.")
            {
            }
            field("Gen. Bus. Posting Group"; "Gen. Bus. Posting Group")
            {
            }
        }
    }
}

