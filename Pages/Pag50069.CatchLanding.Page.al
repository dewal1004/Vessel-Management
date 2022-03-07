page 50069 "Catch Landing"
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

