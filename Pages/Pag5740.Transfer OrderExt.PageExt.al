pageextension 50325 pageextension50325 extends "Transfer Order"
{
    // layout
    // {
    //     modify("Direct Transfer")
    //     {
    //         Visible = false;
    //     }
    //     modify("Transfer-from County")
    //     {
    //         Visible = false;
    //     }
    //     addafter("Transfer-to Code")
    //     {
    //         field("Direct Transfer"; "Direct Transfer")
    //         {
    //             ApplicationArea = Location;
    //             Editable = (Status = Status::Open) AND EnableTransferFields;
    //             Importance = Promoted;
    //             ToolTip = 'Specifies that the transfer does not use an in-transit location. When you transfer directly, the Qty. to Receive field will be locked with the same value as the quantity to ship.';
    //         }
    //     }
    //     addfirst(Control17)
    //     {
    //         field("Transfer-from County"; "Transfer-from County")
    //         {
    //             ApplicationArea = Location;
    //             Caption = 'County';
    //             Importance = Additional;
    //             QuickEntry = false;
    //         }
    //     }
    // }
    actions
    {
        addfirst("O&rder")
        {
            action("Short Supply")
            {
                RunObject = Report "Sales Register";
            }
        }
        addafter(PostAndPrint)
        {
            action("Post Through")
            {
                Caption = 'Post Through';
                Image = Post;
            }
        }
    }


    //Unsupported feature: Property Modification (Id) on "DocNoVisible(Variable 1001)".

    //var
    //>>>> ORIGINAL VALUE:
    //DocNoVisible : 1001;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DocNoVisible : 1002;
    //Variable type has not been exported.

    var
        Loc: Record Location;
}

