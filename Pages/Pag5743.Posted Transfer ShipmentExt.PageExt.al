pageextension 50327 pageextension50327 extends "Posted Transfer Shipment"
{
    // layout
    // {
    //     modify("Direct Transfer")
    //     {
    //         Visible = false;
    //     }
    //     modify(Shipment)
    //     {
    //         Visible = false;
    //     }
    //     addafter("Transfer-to Code")
    //     {
    //         field("Direct Transfer"; "Direct Transfer")
    //         {
    //             ApplicationArea = Location;
    //             Editable = false;
    //             ToolTip = 'Specifies that the transfer does not use an in-transit location.';
    //         }
    //     }
    //     addafter(TransferShipmentLines)
    //     {
    //         group(Shipment)
    //         {
    //             Caption = 'Shipment';
    //         }
    //     }
    // }
    actions
    {
        addfirst("&Shipment")
        {
            action(List)
            {
                ShortCutKey = 'F5';
            }
        }
        addafter(Dimensions)
        {
            action("Item &Tracking Lines")
            {
            }
        }
    }
}

