page 50083 "Voyage Catch Default"
{
    // //

    PageType = Card;
    SourceTable = "Job catch Default";
    SourceTableView = SORTING ("S/No.");

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Table Name"; "Table Name")
                {
                    Visible = false;
                }
                field("No."; "No.")
                {
                    Visible = false;
                }
                field("Code"; Code)
                {
                }
                field(Vessel; Vessel)
                {
                }
                field("Pack Size"; "Pack Size")
                {
                }
                field(Brand; Brand)
                {
                }
                field("Budget Quantity"; "Budget Quantity")
                {
                }
                field(Description; Description)
                {
                }
                field("S/No."; "S/No.")
                {
                }
                field(GroupSort; GroupSort)
                {
                    Visible = false;
                }
                field("Marked Rec"; "Marked Rec")
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Set Default")
            {
                Caption = 'Set Default';
                Ellipsis = false;
                Image = "Action";
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
            }
        }
    }
}

