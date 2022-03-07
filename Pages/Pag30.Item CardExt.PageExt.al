pageextension 50213 pageextension50213 extends "Item Card"
{
    layout
    {

        //Unsupported feature: Property Modification (Level) on "GTIN(Control 135)".

        modify("Item Category Code")
        {
            Visible = true;
        }
        modify("Shelf No.")
        {
            Caption = 'Phy. Verification Date';
        }

        //Unsupported feature: Property Modification (Name) on "Inventory(Control 14)".


        //Unsupported feature: Property Modification (SourceExpr) on "Inventory(Control 14)".

        modify("Qty. on Prod. Order")
        {
            Visible = false;
        }
        modify("Qty. on Component Lines")
        {
            Visible = false;
        }

        //Unsupported feature: Property Modification (Level) on ""Unit Volume"(Control 60)".

        modify("Costing Method")
        {

            //Unsupported feature: Property Modification (Level) on ""Costing Method"(Control 24)".

            Editable = false;
        }
        modify("Standard Cost")
        {

            //Unsupported feature: Property Modification (Level) on ""Standard Cost"(Control 28)".

            Editable = false;
        }

        //Unsupported feature: Property Modification (Level) on ""Unit Cost"(Control 30)".


        //Unsupported feature: Property Modification (Level) on ""Indirect Cost %"(Control 155)".


        //Unsupported feature: Property Modification (Name) on ""Indirect Cost %"(Control 155)".


        //Unsupported feature: Property Modification (SourceExpr) on ""Indirect Cost %"(Control 155)".


        //Unsupported feature: Property Modification (ImplicitType) on ""Indirect Cost %"(Control 155)".

        modify("Last Direct Cost")
        {

            //Unsupported feature: Property Modification (Level) on ""Last Direct Cost"(Control 32)".

            Editable = false;
        }

        //Unsupported feature: Property Modification (Level) on ""Cost is Adjusted"(Control 238)".


        //Unsupported feature: Property Modification (Level) on ""Cost is Posted to G/L"(Control 26)".


        //Unsupported feature: Property Modification (Level) on ""Gen. Prod. Posting Group"(Control 95)".


        //Unsupported feature: Property Modification (Level) on ""VAT Prod. Posting Group"(Control 66)".


        //Unsupported feature: Property Modification (Level) on ""Inventory Posting Group"(Control 40)".


        //Unsupported feature: Property Modification (Level) on ""Default Deferral Template Code"(Control 136)".


        //Unsupported feature: Property Modification (Level) on "CalcUnitPriceExclVAT(Control 173)".


        //Unsupported feature: Property Modification (Level) on ""Price Includes VAT"(Control 175)".


        //Unsupported feature: Property Modification (Level) on ""Profit %"(Control 181)".

        modify("Allow Invoice Disc.")
        {
            Visible = false;
        }

        //Unsupported feature: Property Modification (Level) on ""Sales Blocked"(Control 214)".


        //Unsupported feature: Property Modification (Level) on ""VAT Bus. Posting Gr. (Price)"(Control 151)".


        //Unsupported feature: Property Modification (Level) on ""Overhead Rate"(Control 153)".


        //Unsupported feature: Property Modification (Name) on "Reserve(Control 59)".


        //Unsupported feature: Property Modification (SourceExpr) on "Reserve(Control 59)".


        //Unsupported feature: Property Modification (ImplicitType) on "Reserve(Control 59)".

        modify("Stockkeeping Unit Exists")
        {
            Visible = false;
        }
        modify("Safety Lead Time")
        {
            Visible = false;
        }
        modify("Safety Stock Quantity")
        {
            Visible = false;
        }
        modify("Maximum Inventory")
        {
            Visible = false;
        }

        //Unsupported feature: Property Modification (Level) on ""Overflow Level"(Control 31)".


        //Unsupported feature: Property Modification (Level) on ""Time Bucket"(Control 29)".

        modify("Minimum Order Quantity")
        {
            Visible = false;
        }
        modify("Maximum Order Quantity")
        {
            Visible = true;
        }

        //Unsupported feature: Property Deletion (Importance) on "Inventory(Control 14)".

        modify(ItemAttributesFactbox)
        {
            Visible = false;
        }
        addafter("Item Category Code")
        {
            field("Last Imported Cost"; "Last Imported Cost")
            {
            }
        }
        addafter("Unit Price")
        {
            field("Foreign Posting Group"; "Foreign Posting Group")
            {
            }
            field("Local Posting Group"; "Local Posting Group")
            {
            }
        }
        // addfirst("Order Modifiers")
        // {
            // field("Monthly Consumption"; "Monthly Consumption")
            // {
            // }
        // }
        addafter("Use Cross-Docking")
        {
            field("Commission Group"; "Commission Group")
            {
            }
            field("SF Cat"; "SF Cat")
            {
            }
            field("Pack Size (Kg)."; "Pack Size (Kg).")
            {
            }
            field(Pack; Pack)
            {
            }
            field("Ves Budg Type 1"; "Ves Budg Type 1")
            {
            }
            field("Ves Budg Type 2"; "Ves Budg Type 2")
            {
            }
            field("Ves Budg Type 3"; "Ves Budg Type 3")
            {
            }
            field("Annual Budget Method"; "Annual Budget Method")
            {
            }
            field("Transferred (Qty.)"; "Transferred (Qty.)")
            {
            }
        }
        addafter("Attached Documents")
        {
            /*part(ItemAttributesFactbox; "Item Attributes Factbox")
            {
                ApplicationArea = Basic, Suite;
            }*/
        }
        moveafter(Description; Type)
        moveafter("Base Unit of Measure"; "Item Category Code")
        moveafter("Item Category Code"; "Last Direct Cost")
        moveafter("Last Direct Cost"; "Service Item Group")
        moveafter("Search Description"; "Qty. on Purch. Order")
        moveafter("Qty. on Job Order"; Reserve)
        // moveafter("Product Group Code"; "Qty. on Assembly Order")
        moveafter("Last Date Modified"; StockoutWarningDefaultYes)
        moveafter(PreventNegInventoryDefaultNo; "Prices & Sales")
        moveafter("Prices & Sales"; "Costing Method")
        moveafter("Costing Method"; "Cost is Adjusted")
        moveafter("Cost is Posted to G/L"; "Standard Cost")
        moveafter("Unit Cost"; "Overhead Rate")
        moveafter("Overhead Rate"; "Price/Profit Calculation")
        moveafter("Price/Profit Calculation"; SpecialPricesAndDiscountsTxt)
        moveafter(SpecialPricesAndDiscountsTxt; "Unit Price")
        moveafter("Unit Price"; "Gen. Prod. Posting Group")
        moveafter("Default Deferral Template Code"; "Allow Invoice Disc.")
        moveafter("Sales Unit of Measure"; "Application Wksh. User ID")
        moveafter("Application Wksh. User ID"; "Indirect Cost %")
        moveafter(Reserve; Replenishment)
        // moveafter("Purch. Unit of Measure"; Control230)
        moveafter("Flushing Method"; "Scrap %")
        moveafter("Assembly Policy"; Planning)
        moveafter("Reordering Policy"; "Order Tracking Policy")
       // moveafter("Order Modifiers"; "Unit Volume")
        moveafter("Unit Volume"; Control61)
        moveafter(GTIN; "Tariff No.")
        moveafter("Country/Region of Origin Code"; "Net Weight")
    }
    actions
    {
       /* modify(ActionContainer1900000003)
        {

            //Unsupported feature: Property Modification (Name) on "ActionContainer1900000003(Action 1900000003)".

            Caption = 'Operation';
        }
        modify("S&ales")
        {
            Visible = false;
        }

        //Unsupported feature: Property Deletion (Level) on "ActionContainer1900000003(Action 1900000003)".

        addafter(Warehouse)
        {
            group(Action201)
            {
                Caption = 'Operation';
            }
        }*/
    }
}

