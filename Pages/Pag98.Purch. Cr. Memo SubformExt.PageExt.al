pageextension 50237 pageextension50237 extends "Purch. Cr. Memo Subform"
{
    layout
    {
        addafter(ShortcutDimCode8)
        {
            field("External Document No."; "External Document No.")
            {
                Visible = false;
            }
            // field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
            // {
            // }
        }
    }
}

