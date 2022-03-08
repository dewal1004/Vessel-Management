pageextension 50221 pageextension50221 extends "Sales Order Subform"
{
    layout
    {
        modify("Unit Cost (LCY)")
        {
            Visible = false;
        }
        addafter("Unit of Measure")
        {
            field("Unit Cost"; rec."Unit Cost")
            {
            }
        }
    }

    var
        Item: Record Item;
}

