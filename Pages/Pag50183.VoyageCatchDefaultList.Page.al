page 50183 "Voyage Catch Default List"
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
                Editable = false;
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
                Ellipsis = true;
                Promoted = true;
                PromotedCategory = Process;
            }
        }
    }
}

