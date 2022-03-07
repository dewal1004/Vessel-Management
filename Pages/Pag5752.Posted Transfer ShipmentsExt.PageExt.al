pageextension 50329 pageextension50329 extends "Posted Transfer Shipments"
{
    layout
    {
        addafter("Shortcut Dimension 1 Code")
        {
            field("Transfer Order No."; "Transfer Order No.")
            {
            }
        }
        addafter("Shipping Agent Code")
        {
            // field("TransShptHeader.""Transfer Value"""; TransShptHeader."Transfer Value")
            // {
            //     Caption = 'Value';
            // }
        }
    }
}

