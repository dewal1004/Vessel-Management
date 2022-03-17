page 50163 "Purchase&Pay-Reports"
{

    layout
    {
    }

    actions
    {
        area(creation)
        {
        }
        area(reporting)
        {
            group("Purchase&Payables")
            {
                
                action("Vendor -summary Agng")
                {
                    
                    RunObject = Report "Vendor - Summary Aging";
                }
                action("Vendor-top 10 List")
                {
                    
                    RunObject = Report "Vendor - Top 10 List";
                }
                action("Vendor- Item purchase")
                {
                    
                    RunObject = Report "Vendor/Item Purchases";
                }
                action("Quotes Comparision Report")
                {
                    
                    RunObject = Report "Payroll Rprt- WITH DELETED EMP";
                }
                action("Compare Standard &Atual Rate")
                {
                    
                    RunObject = Report Update;
                }
                action("Purchase Import status ")
                {
                    
                    RunObject = Report "Purchase Import Status";
                }
                action("Pending purchase Orde")
                {
                    
                    RunObject = Report "Pending Purchase Orders";
                }
                action("Purchase variance report")
                {
                    
                    RunObject = Report "Purch var";
                }
                action("Purchase reorder")
                {
                    
                    RunObject = Report "Purchase Re-order";
                }
                action("Vendor -Balance to date")
                {
                    
                    RunObject = Report "Vendor - Balance to Date";
                }
                action("Purchase register ")
                {
                    
                    RunObject = Report "Purchase Register(LCY)";
                }
                action("Purchase return register")
                {
                    
                    RunObject = Report "Purchase Returns Register";
                }
            }
        }
    }
}

