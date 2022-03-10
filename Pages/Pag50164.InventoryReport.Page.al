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
                
                action("Vendor _Purchased Items")
                {
                    
                    RunObject = Report "Vendor/Item Purchases";
                }
                action("Inventory-Transaction Detail(Bin card)")
                {
                    Caption = 'Inventory-Transaction Detail(Bin card)';
                    
                    RunObject = Report "Inventory - Transaction Detail";
                }
                action("Issues to cost centers")
                {
                    
                    RunObject = Report "Issues To Cost Centers";
                }
                action("Periodic stock position")
                {
                    
                    RunObject = Report "Periodic Stock Position";
                }
                action("Job-Transaction Detail 2")
                {
                    
                    RunObject = Report "Job - Transaction Detail 2";
                }
                action("Phys. Inventory List")
                {
                    
                    RunObject = Report "Phys. Inventory List";
                }
                action("Inventory avaliability")
                {
                    
                    RunObject = Report "Inventory Availability";
                }
                action("Inventory-Trans for D period")
                {
                    
                    RunObject = Report "Inventory - Transaction -test";
                }
                action("Inventory Valuation")
                {
                    
                    RunObject = Report "Inventory Valuation";
                }
            }
        }
    }
}

