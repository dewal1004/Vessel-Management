page 50137 "Sales Manager 2"
{
    Caption = 'Role Center';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group(Control1900724808)
            {
                ShowCaption = false;
                part(Control1907692008; "My Customers")
                {
                }
            }
            group(Control1900724708)
            {
                ShowCaption = false;
                part(Control11; "Sales Performance")
                {
                }
                part(Control4; "Trailing Sales Orders Chart")
                {
                }
                part(Control1; "My Job Queue")
                {
                    Visible = false;
                }
                part(Control1902476008; "My Vendors")
                {
                    Visible = false;
                }
                part(Control6; "Report Inbox Part")
                {
                }
                systempart(Control31; MyNotes)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            action("S&ales Statistics")
            {
                Caption = 'S&ales Statistics';
                Image = "Report";
                //*** RunObject = Report "Sales Statistics";
            }
            action("Salesperson - Sales &Statistics")
            {
                Caption = 'Salesperson - Sales &Statistics';
                Image = "Report";
                //*** RunObject = Report "Salesperson - Sales Statistics";
            }
            action("Salesperson - &Commission")
            {
                Caption = 'Salesperson - &Commission';
                Image = "Report";
                //*** RunObject = Report "Salesperson - Commission";
            }
            separator(Action22)
            {
            }
            action("New Report")
            {
                Image = "Report";
                //*** RunObject = Report Statement;
            }
            action("Campaign - &Details")
            {
                Caption = 'Campaign - &Details';
                Image = "Report";
                //*** RunObject = Report "Campaign - Details";
            }
        }
        area(embedding)
        {
            action("Sales Analysis Reports")
            {
                Caption = 'Sales Analysis Reports';
                RunObject = Page "Analysis Report Sale";
            }
            action("Sales Analysis by Dimensions")
            {
                Caption = 'Sales Analysis by Dimensions';
                RunObject = Page "Analysis View List Sales";
            }
            action("Sales Budgets")
            {
                Caption = 'Sales Budgets';
                RunObject = Page "Budget Names Sales";
            }
            action("Sales Quotes")
            {
                Caption = 'Sales Quotes';
                Image = Quote;
                RunObject = Page "Sales Quotes";
            }
            action("Sales Orders")
            {
                Caption = 'Sales Orders';
                Image = "Order";
                RunObject = Page "Sales Order List";
            }
            action(Open)
            {
                Caption = 'Open';
                Image = Edit;
                RunObject = Page "Sales Order List";
                RunPageView = WHERE(Status = FILTER(Open));
                ShortCutKey = 'Return';
            }
            action("Dynamics CRM Sales Orders")
            {
                Caption = 'Dynamics CRM Sales Orders';
                RunObject = Page "CRM Sales Order List";
                RunPageView = WHERE(StateCode = FILTER(Submitted),
                                    LastBackofficeSubmit = FILTER(0D));
            }
            action("Sales Invoices")
            {
                Caption = 'Sales Invoices';
                Image = Invoice;
                RunObject = Page "Sales Invoice List";
            }
            action(Action16)
            {
                Caption = 'Open';
                Image = Edit;
                RunObject = Page "Sales Invoice List";
                RunPageView = WHERE(Status = FILTER(Open));
                ShortCutKey = 'Return';
            }
            action(Items)
            {
                Caption = 'Items';
                Image = Item;
                RunObject = Page "Item List";
            }
            action(Contacts)
            {
                Caption = 'Contacts';
                Image = CustomerContact;
                RunObject = Page "Contact List";
            }
            action(Customers)
            {
                Caption = 'Customers';
                Image = Customer;
                RunObject = Page "Customer List";
            }
            action(Campaigns)
            {
                Caption = 'Campaigns';
                Image = Campaign;
                RunObject = Page "Campaign List";
            }
            action(Segments)
            {
                Caption = 'Segments';
                Image = Segment;
                RunObject = Page "Segment List";
            }
            action("To-dos")
            {
                Caption = 'To-dos';
                Image = TaskList;
                RunObject = Page "Task List";
            }
            action(Teams)
            {
                Caption = 'Teams';
                Image = TeamSales;
                RunObject = Page Teams;
            }
        }
        area(sections)
        {
            group("Administration Sales/Purchase")
            {
                Caption = 'Administration Sales/Purchase';
                Image = AdministrationSalesPurchases;
                action("Salespeople/Purchasers")
                {
                    Caption = 'Salespeople/Purchasers';
                    RunObject = Page "Salespersons/Purchasers";
                }
                action("Cust. Invoice Discounts")
                {
                    Caption = 'Cust. Invoice Discounts';
                    RunObject = Page "Cust. Invoice Discounts";
                }
                action("Vend. Invoice Discounts")
                {
                    Caption = 'Vend. Invoice Discounts';
                    RunObject = Page "Vend. Invoice Discounts";
                }
                action("Item Disc. Groups")
                {
                    Caption = 'Item Disc. Groups';
                    RunObject = Page "Item Disc. Groups";
                }
            }
        }
        area(processing)
        {
            separator(Tasks)
            {
                Caption = 'Tasks';
                IsHeader = true;
            }
            action("Sales Price &Worksheet")
            {
                Caption = 'Sales Price &Worksheet';
                Image = PriceWorksheet;
                RunObject = Page "Sales Price Worksheet";
            }
            separator(Action2)
            {
            }
            action("Sales &Prices")
            {
                Caption = 'Sales &Prices';
                Image = SalesPrices;
                RunObject = Page "Sales Prices";
            }
            action("Sales Line &Discounts")
            {
                Caption = 'Sales Line &Discounts';
                Image = SalesLineDisc;
                RunObject = Page "Sales Line Discounts";
            }
        }
    }
}

