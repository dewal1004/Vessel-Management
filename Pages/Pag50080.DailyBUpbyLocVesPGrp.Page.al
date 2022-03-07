page 50080 "Daily B/Up by Loc/Ves PGrp"
{
    // Code
    // //

    PageType = Card;
    SaveValues = true;
    SourceTable = "Inventory Posting Group";
    SourceTableView = SORTING ("S/No.")
                      WHERE ("Statistics Group" = FILTER (> 0),
                            "In Use" = CONST (true));

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Code"; Code)
                {
                }
                field(Description; Description)
                {
                }
            }
        }
    }

    actions
    {
    }
}

