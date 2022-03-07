pageextension 50272 pageextension50272 extends "Phys. Inventory Journal"
{
    layout
    {
        modify(ShortcutDimCode8)
        {
            Visible = false;
        }
        addafter(ShortcutDimCode7)
        {
            field(ShortcutDimCode8; ShortcutDimCode[8])
            {
                ApplicationArea = Dimensions;
                CaptionClass = '1,2,8';
                TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (8),
                                                              "Dimension Value Type" = CONST (Standard),
                                                              Blocked = CONST (false));
                Visible = DimVisible8;
            }
        }
    }
    actions
    {
        addafter("Phys. In&ventory Ledger Entries")
        {
            action("Item &Tracking Entries")
            {
                RunObject = Page "Item Tracking Entries";
            }
        }
    }
}

