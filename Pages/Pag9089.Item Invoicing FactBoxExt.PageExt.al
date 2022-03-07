pageextension 50354 pageextension50354 extends "Item Invoicing FactBox"
{
    layout
    {
        addafter("Unit Price")
        {
            field(GROUPINV; Inventory)
            {
            }
            field("STORE MAIN"; "CRM / STR")
            {
            }
        }
    }
}

