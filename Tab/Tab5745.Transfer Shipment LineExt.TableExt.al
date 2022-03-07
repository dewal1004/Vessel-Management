tableextension 50314 tableextension50314 extends "Transfer Shipment Line"
{
    fields
    {
        field(6; "Quantity Shipped"; Decimal)
        {
            Caption = 'Quantity Shipped';
            DecimalPlaces = 0 : 5;
        }
        field(50300; "Qty. Reqd."; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50301; ROB; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
    }
}

