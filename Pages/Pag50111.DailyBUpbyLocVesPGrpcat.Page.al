page 50111 "Daily B/Up by Loc/Ves PGrp cat"
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
    }

    actions
    {
    }
}

