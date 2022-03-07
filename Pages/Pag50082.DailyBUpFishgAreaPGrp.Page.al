page 50082 "Daily B/Up Fishg Area/PGrp"
{
    PageType = Card;
    SaveValues = true;
    SourceTable = "Inventory Posting Group";
    SourceTableView = SORTING ("S/No.")
                      WHERE (Category = FILTER ('1' ..),
                            "In Use" = CONST (true));

    layout
    {
    }

    actions
    {
    }
}

