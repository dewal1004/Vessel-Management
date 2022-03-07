pageextension 50206 pageextension50206 extends "G/L Account Card"
{
    layout
    {
        modify("New Page")
        {
            ToolTip = 'Specifies whether you want a new page to start immediately after this general ledger account when you print the chart of accounts. Select this field toÙstart a new page after thisÙgeneral ledgerÙaccount.';
        }
    }
    actions
    {
        modify("&Balance")
        {
            Visible = false;
        }
    }
}

