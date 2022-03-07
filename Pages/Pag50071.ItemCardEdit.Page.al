page 50071 "Item Card Edit"
{
    Caption = 'Item Card';
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = Item;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                }
                field(Description; Description)
                {
                }
                field("Base Unit of Measure"; "Base Unit of Measure")
                {
                }
                field(Points; Points)
                {
                }
                field("Shelf No."; "Shelf No.")
                {
                }
                field("Automatic Ext. Texts"; "Automatic Ext. Texts")
                {
                }
                field("Stockkeeping Unit Exists"; "Stockkeeping Unit Exists")
                {
                    Editable = false;
                    Visible = false;
                }
                field("Created From Nonstock Item"; "Created From Nonstock Item")
                {
                    Editable = false;
                    Visible = false;
                }
                field("Order Tracking Policy"; "Order Tracking Policy")
                {
                    Editable = false;
                    Visible = false;
                }
                field("Search Description"; "Search Description")
                {
                }
                field("CRM / STR"; "CRM / STR")
                {
                }
                field("Qty. on Purch. Order"; "Qty. on Purch. Order")
                {
                }
                field("Qty. on Sales Order"; "Qty. on Sales Order")
                {
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                }
                field(Blocked; Blocked)
                {
                }
                field("Qty. on Prod. Order"; "Qty. on Prod. Order")
                {
                    Editable = false;
                    Visible = false;
                }
                field("Qty. on Component Lines"; "Qty. on Component Lines")
                {
                    Editable = false;
                    Visible = false;
                }
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';
                field("Costing Method"; "Costing Method")
                {
                }
                field(AverageCostLCY; AverageCostLCY)
                {
                    AutoFormatType = 2;
                    Caption = 'Average Cost (LCY)';
                    Editable = false;
                }
                field("Indirect Cost %"; "Indirect Cost %")
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                    DecimalPlaces = 2 : 2;
                }
                field("Last Direct Cost"; "Last Direct Cost")
                {
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field("Last Imported Cost"; "Last Imported Cost")
                {
                    Visible = false;
                }
                field("Last Local Cost"; "Last Local Cost")
                {
                    Visible = false;
                }
                field("Last Purchase Cost"; "Last Purchase Cost")
                {
                    Visible = false;
                }
                field("Standard Cost"; "Standard Cost")
                {
                    Visible = false;
                }
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                }
                field("Inventory Posting Group"; "Inventory Posting Group")
                {
                }
                field("Net Invoiced Qty."; "Net Invoiced Qty.")
                {
                }
                field("Allow Invoice Disc."; "Allow Invoice Disc.")
                {
                    Visible = false;
                }
                field("Item Disc. Group"; "Item Disc. Group")
                {
                }
                field("Sales Unit of Measure"; "Sales Unit of Measure")
                {
                }
                field("Price/Profit Calculation"; "Price/Profit Calculation")
                {
                }
                field("Profit %"; "Profit %")
                {
                }
            }
            group(Ordering)
            {
                Caption = 'Ordering';
                field("Replenishment System"; "Replenishment System")
                {
                    OptionCaption = 'Purchase,Prod. Order';
                }
                field("Lead Time Calculation"; "Lead Time Calculation")
                {
                    Enabled = "Lead Time CalculationEnable";
                }
                field("Vendor No."; "Vendor No.")
                {
                    Enabled = "Vendor No.Enable";
                }
                field("Vendor Item No."; "Vendor Item No.")
                {
                    Enabled = "Vendor Item No.Enable";
                }
                field(Reserve; Reserve)
                {
                }
                field("Item Category Code"; "Item Category Code")
                {
                }
                field("Country/Region Purchased Code"; "Country/Region Purchased Code")
                {
                }
                field("Product Group Code"; "Product Group Code")
                {
                    Visible = false;
                }
                field("Manufacturer Code"; "Manufacturer Code")
                {
                    Visible = false;
                }
                field("Monthly Consumption"; "Monthly Consumption")
                {
                }
                field("Reorder Point"; "Reorder Point")
                {
                }
                field("Reorder Quantity"; "Reorder Quantity")
                {
                }
                field("Purch. Unit of Measure"; "Purch. Unit of Measure")
                {
                }
                field("Minimum Order Quantity"; "Minimum Order Quantity")
                {
                    Visible = false;
                }
                field("Maximum Order Quantity"; "Maximum Order Quantity")
                {
                    Visible = true;
                }
                field("Order Multiple"; "Order Multiple")
                {
                }
                field("Maximum Inventory"; "Maximum Inventory")
                {
                    Visible = false;
                }
                field("Lot Size"; "Lot Size")
                {
                    Visible = false;
                }
                field("Safety Stock Quantity"; "Safety Stock Quantity")
                {
                    Visible = false;
                }
                field("Safety Lead Time"; "Safety Lead Time")
                {
                    Visible = false;
                }
            }
            group("Foreign Trade")
            {
                Caption = 'Foreign Trade';
                field("Duty Rate%"; "Duty Rate%")
                {
                }
            }
            group(Reporting)
            {
                Caption = 'Reporting';
                field(AverageCostACY; AverageCostACY)
                {
                    AutoFormatType = 2;
                    Caption = 'Average Cost (ACY)';
                    Editable = false;
                }
                field(Inventory; Inventory)
                {
                }
                field("VReceived Qty"; "VReceived Qty")
                {
                    DrillDownPageID = 50000;
                    Visible = false;
                }
                field("VSupplimentary Qty"; "VSupplimentary Qty")
                {
                    DrillDownPageID = 50000;
                    Visible = false;
                }
                field("VOrdered Qty"; "VOrdered Qty")
                {
                    DrillDownPageID = 50000;
                    Visible = false;
                }
                field("Statistics Group"; "Statistics Group")
                {
                }
                field("Commission Group"; "Commission Group")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Operation)
            {
                Caption = 'Operation';
                action(Organoleptic)
                {
                    Caption = 'Organoleptic';
                    RunObject = Page "Organoleptic Sheet";
                    RunPageLink = "Table Name" = CONST (Item),
                                  "No." = FIELD ("No.");
                }
            }
            group("&Item")
            {
                Caption = '&Item';
                action("Stockkeepin&g Units")
                {
                    Caption = 'Stockkeepin&g Units';
                    RunObject = Page "Stockkeeping Unit List";
                    RunPageLink = "Item No." = FIELD ("No.");
                    RunPageView = SORTING ("Item No.");
                }
                group("E&ntries")
                {
                    Caption = 'E&ntries';
                    action("Ledger E&ntries")
                    {
                        Caption = 'Ledger E&ntries';
                        RunObject = Page "Item Ledger Entries";
                        RunPageLink = "Item No." = FIELD ("No.");
                        RunPageView = SORTING ("Item No.");
                        ShortCutKey = 'Ctrl+F7';
                    }
                    action("&Reservation Entries")
                    {
                        Caption = '&Reservation Entries';
                        Image = ReservationLedger;
                        RunObject = Page "Reservation Entries";
                        RunPageLink = "Reservation Status" = CONST (Reservation),
                                      "Item No." = FIELD ("No.");
                        RunPageView = SORTING ("Reservation Status", "Item No.", "Variant Code", "Location Code");
                    }
                    action("&Phys. Inventory Ledger Entries")
                    {
                        Caption = '&Phys. Inventory Ledger Entries';
                        Image = PhysicalInventoryLedger;
                        RunObject = Page "Phys. Inventory Ledger Entries";
                        RunPageLink = "Item No." = FIELD ("No.");
                        RunPageView = SORTING ("Item No.");
                    }
                    action("&Value Entries")
                    {
                        Caption = '&Value Entries';
                        Image = ValueLedger;
                        RunObject = Page "Value Entries";
                        RunPageLink = "Item No." = FIELD ("No.");
                        RunPageView = SORTING ("Item No.");
                    }
                    action("Item &Tracking Entries")
                    {
                        Caption = 'Item &Tracking Entries';
                        Image = ItemTrackingLedger;
                        RunObject = Page "Item Tracking Entries";
                        RunPageLink = "Item No." = FIELD ("No.");
                        RunPageView = SORTING ("Item No.");
                    }
                }
                group(Statistics)
                {
                    Caption = 'Statistics';
                    action(Action107)
                    {
                        Caption = 'Statistics';
                        Image = Statistics;
                        Promoted = true;
                        PromotedCategory = Process;
                        ShortCutKey = 'F7';
                    }
                    action("Entry Statistics")
                    {
                        Caption = 'Entry Statistics';
                        RunObject = Page "Item Entry Statistics";
                        RunPageLink = "No." = FIELD ("No."),
                                      "Date Filter" = FIELD ("Date Filter"),
                                      "Global Dimension 1 Filter" = FIELD ("Global Dimension 1 Filter"),
                                      "Global Dimension 2 Filter" = FIELD ("Global Dimension 2 Filter"),
                                      "Location Filter" = FIELD ("Location Filter"),
                                      "Drop Shipment Filter" = FIELD ("Drop Shipment Filter"),
                                      "Variant Filter" = FIELD ("Variant Filter"),
                                      "Bin Filter" = FIELD ("Bin Filter");
                    }
                    action("T&urnover")
                    {
                        Caption = 'T&urnover';
                        RunObject = Page "Item Turnover";
                        RunPageLink = "No." = FIELD ("No."),
                                      "Global Dimension 1 Filter" = FIELD ("Global Dimension 1 Filter"),
                                      "Global Dimension 2 Filter" = FIELD ("Global Dimension 2 Filter"),
                                      "Location Filter" = FIELD ("Location Filter"),
                                      "Drop Shipment Filter" = FIELD ("Drop Shipment Filter"),
                                      "Variant Filter" = FIELD ("Variant Filter"),
                                      "Bin Filter" = FIELD ("Bin Filter");
                    }
                }
                action("Items b&y Location")
                {
                    Caption = 'Items b&y Location';
                    Image = ItemAvailbyLoc;
                }
                group("&Item Availability by")
                {
                    Caption = '&Item Availability by';
                    action(Period)
                    {
                        Caption = 'Period';
                        RunObject = Page "Item Availability by Periods";
                        RunPageLink = "No." = FIELD ("No."),
                                      "Global Dimension 1 Filter" = FIELD ("Global Dimension 1 Filter"),
                                      "Global Dimension 2 Filter" = FIELD ("Global Dimension 2 Filter"),
                                      "Location Filter" = FIELD ("Location Filter"),
                                      "Drop Shipment Filter" = FIELD ("Drop Shipment Filter"),
                                      "Variant Filter" = FIELD ("Variant Filter"),
                                      "Bin Filter" = FIELD ("Bin Filter");
                    }
                    action(Variant)
                    {
                        Caption = 'Variant';
                        RunObject = Page "Item Availability by Variant";
                        RunPageLink = "No." = FIELD ("No."),
                                      "Global Dimension 1 Filter" = FIELD ("Global Dimension 1 Filter"),
                                      "Global Dimension 2 Filter" = FIELD ("Global Dimension 2 Filter"),
                                      "Location Filter" = FIELD ("Location Filter"),
                                      "Drop Shipment Filter" = FIELD ("Drop Shipment Filter"),
                                      "Variant Filter" = FIELD ("Variant Filter"),
                                      "Bin Filter" = FIELD ("Bin Filter");
                    }
                    action(Location)
                    {
                        Caption = 'Location';
                        RunObject = Page "Item Availability by Location";
                        RunPageLink = "No." = FIELD ("No."),
                                      "Global Dimension 1 Filter" = FIELD ("Global Dimension 1 Filter"),
                                      "Global Dimension 2 Filter" = FIELD ("Global Dimension 2 Filter"),
                                      "Location Filter" = FIELD ("Location Filter"),
                                      "Drop Shipment Filter" = FIELD ("Drop Shipment Filter"),
                                      "Variant Filter" = FIELD ("Variant Filter"),
                                      "Bin Filter" = FIELD ("Bin Filter");
                    }
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page "Comment Sheet";
                    RunPageLink = "Table Name" = CONST (Item),
                                  "No." = FIELD ("No.");
                }
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    RunObject = Page "Default Dimensions";
                    RunPageLink = "Table ID" = CONST (27),
                                  "No." = FIELD ("No.");
                    ShortCutKey = 'Shift+Ctrl+D';
                }
                action("&Picture")
                {
                    Caption = '&Picture';
                    RunObject = Page "Item Picture";
                    RunPageLink = "No." = FIELD ("No."),
                                  "Date Filter" = FIELD ("Date Filter"),
                                  "Global Dimension 1 Filter" = FIELD ("Global Dimension 1 Filter"),
                                  "Global Dimension 2 Filter" = FIELD ("Global Dimension 2 Filter"),
                                  "Location Filter" = FIELD ("Location Filter"),
                                  "Drop Shipment Filter" = FIELD ("Drop Shipment Filter"),
                                  "Variant Filter" = FIELD ("Variant Filter"),
                                  "Bin Filter" = FIELD ("Bin Filter");
                }
                separator(Action113)
                {
                }
                action("&Units of Measure")
                {
                    Caption = '&Units of Measure';
                    RunObject = Page "Item Units of Measure";
                    RunPageLink = "Item No." = FIELD ("No.");
                }
                action("Va&riants")
                {
                    Caption = 'Va&riants';
                    RunObject = Page "Item Variants";
                    RunPageLink = "Item No." = FIELD ("No.");
                }
                action("Cross Re&ferences")
                {
                    Caption = 'Cross Re&ferences';
                    RunObject = Page "Item Cross Reference Entries";
                    RunPageLink = "Item No." = FIELD ("No.");
                }
                action("Substituti&ons")
                {
                    Caption = 'Substituti&ons';
                    RunObject = Page "Item Substitution Entry";
                    RunPageLink = Type = CONST (Item),
                                  "No." = FIELD ("No.");
                }
                action("Nonstoc&k Items")
                {
                    Caption = 'Nonstoc&k Items';
                    RunObject = Page "Catalog Item List";
                }
                separator(Action115)
                {
                }
                action(Translations)
                {
                    Caption = 'Translations';
                    RunObject = Page "Item Translations";
                    RunPageLink = "Item No." = FIELD ("No."),
                                  "Variant Code" = CONST ('');
                }
                action("E&xtended Texts")
                {
                    Caption = 'E&xtended Texts';
                    RunObject = Page "Extended Text List";
                    RunPageLink = "Table Name" = CONST (Item),
                                  "No." = FIELD ("No.");
                    RunPageView = SORTING ("Table Name", "No.", "Language Code", "All Language Codes", "Starting Date", "Ending Date");
                }
                separator(Action120)
                {
                }
                group("Assembly List")
                {
                    Caption = 'Assembly List';
                    action("Bill of Materials")
                    {
                        Caption = 'Bill of Materials';
                        RunObject = Page "Assembly BOM";
                        RunPageLink = "Parent Item No." = FIELD ("No.");
                    }
                    action("Where-Used List")
                    {
                        Caption = 'Where-Used List';
                        RunObject = Page "Where-Used List";
                        RunPageLink = Type = CONST (Item),
                                      "No." = FIELD ("No.");
                        RunPageView = SORTING (Type, "No.");
                    }
                    action("Calc. Stan&dard Cost")
                    {
                        Caption = 'Calc. Stan&dard Cost';
                    }
                }
                group("Manufa&cturing")
                {
                    Caption = 'Manufa&cturing';
                    action("Where-Used")
                    {
                        Caption = 'Where-Used';
                    }
                    action(Action123)
                    {
                        Caption = 'Calc. Stan&dard Cost';
                    }
                }
                separator(Action182)
                {
                    Caption = '';
                }
                action("Ser&vice Items")
                {
                    Caption = 'Ser&vice Items';
                    RunObject = Page "Service Items";
                    RunPageLink = "Item No." = FIELD ("No.");
                    RunPageView = SORTING ("Item No.");
                }
                group("Troubles&hooting")
                {
                    Caption = 'Troubles&hooting';
                    action("Troubleshooting &Setup")
                    {
                        Caption = 'Troubleshooting &Setup';
                        Image = Troubleshoot;
                        RunObject = Page "Troubleshooting Setup";
                        RunPageLink = Type = CONST (Item),
                                      "No." = FIELD ("No.");
                    }
                    action(Action186)
                    {
                        Caption = 'Troubles&hooting';
                    }
                }
                group("R&esource")
                {
                    Caption = 'R&esource';
                    action("Resource Skills")
                    {
                        Caption = 'Resource Skills';
                        RunObject = Page "Resource Skills";
                        RunPageLink = Type = CONST (Item),
                                      "No." = FIELD ("No.");
                    }
                    action("Skilled Resources")
                    {
                        Caption = 'Skilled Resources';
                    }
                }
            }
            group("S&ales")
            {
                Caption = 'S&ales';
                action("Item/Cust. Discounts")
                {
                    Caption = 'Item/Cust. Discounts';
                }
                action("Quantity Discounts")
                {
                    Caption = 'Quantity Discounts';
                    RunObject = Page "Vendor Lookup";
                    RunPageLink = "No." = FIELD (Field13);
                }
                action(Prices)
                {
                    Caption = 'Prices';
                    Image = ResourcePrice;
                    RunObject = Page "Customer Lookup";
                    RunPageLink = "No." = FIELD ("No.");
                    Visible = false;
                }
                action(Orders)
                {
                    Caption = 'Orders';
                    Image = Document;
                    RunObject = Page "Sales Orders";
                    RunPageLink = Type = CONST (Item),
                                  "No." = FIELD ("No.");
                    RunPageView = SORTING ("Document Type", Type, "No.");
                }
            }
            group("&Purchases")
            {
                Caption = '&Purchases';
                action("Ven&dors")
                {
                    Caption = 'Ven&dors';
                    RunObject = Page "Item Vendor Catalog";
                    RunPageLink = "Item No." = FIELD ("No.");
                }
                action(Action86)
                {
                    Caption = 'Quantity Discounts';
                    RunObject = Page "G/L Posting Preview";
                    RunPageLink = "Table ID" = FIELD ("No."),
                                  "No. of Records" = FIELD ("Vendor No.");
                }
                action(Action87)
                {
                    Caption = 'Orders';
                    Image = Document;
                    RunObject = Page "Purchase Orders";
                    RunPageLink = Type = CONST (Item),
                                  "No." = FIELD ("No.");
                    RunPageView = SORTING ("Document Type", Type, "No.");
                }
            }
        }
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                action("&Create Stockkeeping Unit")
                {
                    Caption = '&Create Stockkeeping Unit';
                }
            }
        }
    }
}

