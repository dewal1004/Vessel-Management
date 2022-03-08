page 50164 "Inventory-Report"
{

    layout
    {
    }

    actions
    {
        area(navigation)
        {
        }
        area(reporting)
        {
            group(Inventory)
            {
                Image = "report";
                action("Vendor _Purchased Items")
                {
                    Image = "Report";
                    //*** RunObject = Report "Vendor/Item Purchases";
                }
                action("Inventory-Transaction Detail(Bin card)")
                {
                    Caption = 'Inventory-Transaction Detail(Bin card)';
                    Image = "report";
                    //*** RunObject = Report "Inventory - Transaction Detail";
                }
                action("Issues to cost centers")
                {
                    Image = "report";
                    //*** RunObject = Report "Issues To Cost Centers";
                }
                action("Periodic stock position")
                {
                    Image = "report";
                    //*** RunObject = Report "Periodic Stock Position";
                }
                action("Job-Transaction Detail 2")
                {
                    Image = "Report";
                    //*** RunObject = Report "Job - Transaction Detail 2";
                }
                action("Phys. Inventory List")
                {
                    Image = "report";
                    //*** RunObject = Report "Phys. Inventory List";
                }
                action("Inventory avaliability")
                {
                    Image = "report";
                    //*** RunObject = Report "Inventory Availability";
                }
                action("Inventory-Trans for D period")
                {
                    Image = "report";
                    //*** RunObject = Report "Inventory - Transaction -test";
                }
                action("Inventory Valuation")
                {
                    Image = "report";
                    //*** RunObject = Report "Inventory Valuation";
                }
            }
        }
    }
}

