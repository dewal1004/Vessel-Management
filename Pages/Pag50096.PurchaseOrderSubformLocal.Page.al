page 50096 "Purchase Order Subform Local"
{
    AutoSplitKey = true;
    Caption = 'Purchase Order Subform';
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = Card;
    SourceTable = "Purchase Line";
    SourceTableView = WHERE ("Document Type" = FILTER (Order));

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Type; Type)
                {
                }
                field(ProdCd; ProdCd)
                {
                    Visible = ProdCdVisible;
                }
                field("Pack Size"; "Pack Size")
                {
                    Visible = "Pack SizeVisible";
                }
                field(Brand; Brand)
                {
                    Visible = BrandVisible;
                }
                field("No."; "No.")
                {
                }
                field("Reason Code"; "Reason Code")
                {
                    Visible = "Reason CodeVisible";
                }
                field("External Document No."; "External Document No.")
                {
                    Visible = "External Document No.Visible";
                }
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                }
                field("Gen. Bus. Posting Group"; "Gen. Bus. Posting Group")
                {
                }
                field("Cross-Reference No."; "Cross-Reference No.")
                {
                    Visible = false;
                }
                field("Variant Code"; "Variant Code")
                {
                    Visible = false;
                }
                field(Nonstock; Nonstock)
                {
                    Visible = false;
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                    Visible = false;
                }
                field(Description; Description)
                {
                }
                field("Duty Rate%"; "Duty Rate%")
                {
                    Visible = false;
                }
                field("Quantity Ordered"; "Quantity Ordered")
                {
                    Visible = false;
                }
                field("Drop Shipment"; "Drop Shipment")
                {
                    Visible = false;
                }
                field("Location Code"; "Location Code")
                {
                }
                field(Quantity; Quantity)
                {
                    BlankZero = true;
                }
                field("Reserved Quantity"; "Reserved Quantity")
                {
                    BlankZero = true;
                    Visible = false;
                }
                field("Unit of Measure Code"; "Unit of Measure Code")
                {
                }
                field("Unit of Measure"; "Unit of Measure")
                {
                    Visible = false;
                }
                field("Direct Unit Cost"; "Direct Unit Cost")
                {
                    BlankZero = true;
                }
                field("Indirect Cost %"; "Indirect Cost %")
                {
                    Visible = false;
                }
                field("Unit Cost (LCY)"; "Unit Cost (LCY)")
                {
                    Visible = false;
                }
                field("Unit Price (LCY)"; "Unit Price (LCY)")
                {
                    Visible = false;
                }
                field(Amount; Amount)
                {
                    Visible = false;
                }
                field("Line Amount"; "Line Amount")
                {
                    BlankZero = true;
                }
                field("Line Discount %"; "Line Discount %")
                {
                    BlankZero = true;
                }
                field("Line Discount Amount"; "Line Discount Amount")
                {
                    Visible = false;
                }
                field("Allow Invoice Disc."; "Allow Invoice Disc.")
                {
                    Visible = false;
                }
                field("Inv. Discount Amount"; "Inv. Discount Amount")
                {
                    Visible = false;
                }
                field("Qty. to Receive"; "Qty. to Receive")
                {
                    BlankZero = true;
                }
                field("Quantity Received"; "Quantity Received")
                {
                    BlankZero = true;
                    Visible = false;
                }
                field("Qty. to Invoice"; "Qty. to Invoice")
                {
                    BlankZero = true;
                    Visible = false;
                }
                field("Quantity Invoiced"; "Quantity Invoiced")
                {
                    BlankZero = true;
                    Visible = false;
                }
                field("Allow Item Charge Assignment"; "Allow Item Charge Assignment")
                {
                    Visible = false;
                }
                field("Requested Receipt Date"; "Requested Receipt Date")
                {
                    Visible = false;
                }
                field("Promised Receipt Date"; "Promised Receipt Date")
                {
                    Visible = false;
                }
                field("Planned Receipt Date"; "Planned Receipt Date")
                {
                    Visible = false;
                }
                field("Expected Receipt Date"; "Expected Receipt Date")
                {
                    Visible = false;
                }
                field("Order Date"; "Order Date")
                {
                    Visible = false;
                }
                field("Lead Time Calculation"; "Lead Time Calculation")
                {
                    Visible = false;
                }
                field("Job No."; "Job No.")
                {
                    Visible = false;
                }
                field("Planning Flexibility"; "Planning Flexibility")
                {
                    Visible = false;
                }
                field("Prod. Order Line No."; "Prod. Order Line No.")
                {
                    Visible = false;
                }
                field("Prod. Order No."; "Prod. Order No.")
                {
                    Visible = false;
                }
                field("Operation No."; "Operation No.")
                {
                    Visible = false;
                }
                field("Work Center No."; "Work Center No.")
                {
                    Visible = false;
                }
                field(Finished; Finished)
                {
                    Visible = false;
                }
                field("Whse. Outstanding Qty. (Base)"; "Whse. Outstanding Qty. (Base)")
                {
                    Visible = false;
                }
                field("Inbound Whse. Handling Time"; "Inbound Whse. Handling Time")
                {
                    Visible = false;
                }
                field("Blanket Order No."; "Blanket Order No.")
                {
                    Visible = false;
                }
                field("Blanket Order Line No."; "Blanket Order Line No.")
                {
                    Visible = false;
                }
                field("Appl.-to Item Entry"; "Appl.-to Item Entry")
                {
                    Visible = false;
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                    Visible = false;
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                    Visible = false;
                }
                field("ShortcutDimCode[3]"; ShortcutDimCode[3])
                {
                    CaptionClass = '1,2,3';
                    Visible = false;
                }
                field("ShortcutDimCode[4]"; ShortcutDimCode[4])
                {
                    CaptionClass = '1,2,4';
                    Visible = false;
                }
                field("ShortcutDimCode[5]"; ShortcutDimCode[5])
                {
                    CaptionClass = '1,2,5';
                    Visible = false;
                }
                field("ShortcutDimCode[6]"; ShortcutDimCode[6])
                {
                    CaptionClass = '1,2,6';
                    Visible = false;
                }
                field("ShortcutDimCode[7]"; ShortcutDimCode[7])
                {
                    CaptionClass = '1,2,7';
                    Visible = false;
                }
                field("ShortcutDimCode[8]"; ShortcutDimCode[8])
                {
                    CaptionClass = '1,2,8';
                    Visible = false;
                }
                field("Freight(LCY)"; "Freight(LCY)")
                {
                    Visible = false;
                }
                field("Ancillary(LCY)"; "Ancillary(LCY)")
                {
                    Visible = false;
                }
                field("Duty(LCY)"; "Duty(LCY)")
                {
                    Visible = false;
                }
                field("Insurance(LCY)"; "Insurance(LCY)")
                {
                    Visible = false;
                }
                field("Surcharge Duty(LCY)"; "Surcharge Duty(LCY)")
                {
                    Visible = false;
                }
                field("Ecowas Duty(LCY)"; "Ecowas Duty(LCY)")
                {
                    Visible = false;
                }
                field("CISS(LCY)"; "CISS(LCY)")
                {
                    Visible = false;
                }
                field("Vat (LCY)"; "Vat (LCY)")
                {
                    Visible = false;
                }
                field("Clearing(LCY)"; "Clearing(LCY)")
                {
                    Visible = false;
                }
                field("Interest(LCY)"; "Interest(LCY)")
                {
                    Visible = false;
                }
                field("Total Overhead(LCY)"; "Total Overhead(LCY)")
                {
                    Visible = false;
                }
                field("LandedAmount(LCY)"; "LandedAmount(LCY)")
                {
                    Visible = false;
                }
                field("ActualFreight(LCY)"; "ActualFreight(LCY)")
                {
                    Visible = false;
                }
                field("ActualAncillary(LCY)"; "ActualAncillary(LCY)")
                {
                    Visible = false;
                }
                field("ActualDuty(LCY)"; "ActualDuty(LCY)")
                {
                    Visible = false;
                }
                field("ActualInsurance(LCY)"; "ActualInsurance(LCY)")
                {
                    Visible = false;
                }
                field("ActualSurcharge Duty(LCY)"; "ActualSurcharge Duty(LCY)")
                {
                    Visible = false;
                }
                field("ActualEcowas Duty(LCY)"; "ActualEcowas Duty(LCY)")
                {
                    Visible = false;
                }
                field("ActualCISS(LCY)"; "ActualCISS(LCY)")
                {
                    Visible = false;
                }
                field("ActualVat (LCY)"; "ActualVat (LCY)")
                {
                    Visible = false;
                }
                field("ActualClearing(LCY)"; "ActualClearing(LCY)")
                {
                    Visible = false;
                }
                field("ActualInterest(LCY)"; "ActualInterest(LCY)")
                {
                    Visible = false;
                }
                field("ActualDuty Rate%"; "ActualDuty Rate%")
                {
                    Visible = false;
                }
                field("ActualTotal Overhead(LCY)"; "ActualTotal Overhead(LCY)")
                {
                    Visible = false;
                }
                field("ActualLandedAmount(LCY)"; "ActualLandedAmount(LCY)")
                {
                    Visible = false;
                }
                field("Original Purc. Order No."; "Original Purc. Order No.")
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
    }
}

