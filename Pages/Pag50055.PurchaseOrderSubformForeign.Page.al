page 50055 "Purchase Order Subform Foreign"
{
    AutoSplitKey = true;
    Caption = 'Lines';
    DelayedInsert = true;
    LinksAllowed = false;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = "Purchase Line";
    SourceTableView = WHERE ("Document Type" = FILTER (Order));

    layout
    {
        area(content)
        {
            group(Control83)
            {
                ShowCaption = false;
                // group(Control35)
                // {
                //     ShowCaption = false;
                //     field("Invoice Discount Amount"; TotalPurchaseLine."Inv. Discount Amount")
                //     {
                //         AutoFormatExpression = TotalPurchaseHeader."Currency Code";
                //         AutoFormatType = 1;
                //         Caption = 'Invoice Discount Amount';
                //         Editable = InvDiscAmountEditable;
                //         Style = Subordinate;
                //         StyleExpr = RefreshMessageEnabled;
                //     }
                //     field("Invoice Disc. Pct."; PurchCalcDiscByType.GetVendInvoiceDiscountPct(Rec))
                //     {
                //         Caption = 'Invoice Discount %';
                //         DecimalPlaces = 0 : 2;
                //         Editable = false;
                //         Style = Subordinate;
                //         StyleExpr = RefreshMessageEnabled;
                //         Visible = true;
                //     }
                // }
                // group(Control33)
                // {
                //     ShowCaption = false;
                //     field("Total Amount Excl. VAT"; TotalPurchaseLine.Amount)
                //     {
                //         AutoFormatExpression = TotalPurchaseHeader."Currency Code";
                //         AutoFormatType = 1;
                //         CaptionClass = DocumentTotals.GetTotalExclVATCaption(PurchHeader."Currency Code");
                //         Caption = 'Total Amount Excl. VAT';
                //         DrillDown = false;
                //         Editable = false;
                //         Style = Subordinate;
                //         StyleExpr = RefreshMessageEnabled;
                //     }
                //     field("Total VAT Amount"; VATAmount)
                //     {
                //         AutoFormatExpression = TotalPurchaseHeader."Currency Code";
                //         AutoFormatType = 1;
                //         CaptionClass = DocumentTotals.GetTotalVATCaption(PurchHeader."Currency Code");
                //         Caption = 'Total VAT';
                //         Editable = false;
                //         Style = Subordinate;
                //         StyleExpr = RefreshMessageEnabled;
                //     }
                //     field("Total Amount Incl. VAT"; TotalPurchaseLine."Amount Including VAT")
                //     {
                //         AutoFormatExpression = TotalPurchaseHeader."Currency Code";
                //         AutoFormatType = 1;
                //         CaptionClass = DocumentTotals.GetTotalInclVATCaption(PurchHeader."Currency Code");
                //         Caption = 'Total Amount Incl. VAT';
                //         Editable = false;
                //         StyleExpr = TotalAmountStyle;
                //     }
                //     field(RefreshTotals; RefreshMessageText)
                //     {
                //         DrillDown = true;
                //         Editable = false;
                //         Enabled = RefreshMessageEnabled;
                //         ShowCaption = false;
                //     }
                // }
            }
            // repeater(Control1)
            // {
            //     ShowCaption = false;
            //     field(Type; Type)
            //     {
            //     }
            //     field("No."; "No.")
            //     {
            //         ShowMandatory = TypeChosen;
            //     }
            //     field(Description; Description)
            //     {
            //     }
            //     field(Quantity; Quantity)
            //     {
            //         BlankZero = true;
            //         ShowMandatory = TypeChosen;
            //     }
            //     field("Unit of Measure Code"; "Unit of Measure Code")
            //     {
            //     }
            //     field("Direct Unit Cost"; "Direct Unit Cost")
            //     {
            //     }
            //     field("Line Amount"; "Line Amount")
            //     {
            //     }
            //     field("ActualFreight(LCY)"; "ActualFreight(LCY)")
            //     {
            //     }
            //     field("ActualDuty(LCY)"; "ActualDuty(LCY)")
            //     {
            //     }
            //     field("ActualInsurance(LCY)"; "ActualInsurance(LCY)")
            //     {
            //     }
            //     field("ActualClearing(LCY)"; "ActualClearing(LCY)")
            //     {
            //     }
            //     field("ActualInterest(LCY)"; "ActualInterest(LCY)")
            //     {
            //     }
            //     field("ActualDuty Rate%"; "ActualDuty Rate%")
            //     {
            //     }
            //     field("ActualTotal Overhead(LCY)"; "ActualTotal Overhead(LCY)")
            //     {
            //     }
            //     field("IC Partner Code"; "IC Partner Code")
            //     {
            //         Visible = false;
            //     }
            //     field("IC Partner Ref. Type"; "IC Partner Ref. Type")
            //     {
            //         Visible = false;
            //     }
            //     field("IC Partner Reference"; "IC Partner Reference")
            //     {
            //         Visible = false;
            //     }
            //     field("Variant Code"; "Variant Code")
            //     {
            //         Visible = false;
            //     }
            //     field(Nonstock; Nonstock)
            //     {
            //         Visible = false;
            //     }
            //     field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
            //     {
            //         Visible = false;
            //     }
            //     field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
            //     {
            //     }
            //     field("Drop Shipment"; "Drop Shipment")
            //     {
            //         Visible = false;
            //     }
            //     field("QtytoReceiveAmount(LCY)"; "QtytoReceiveAmount(LCY)")
            //     {
            //     }
            //     field("Return Reason Code"; "Return Reason Code")
            //     {
            //         Visible = false;
            //     }
            //     field("Location Code"; "Location Code")
            //     {
            //     }
            //     field("Duty Rate%"; "Duty Rate%")
            //     {
            //     }
            //     field("Bin Code"; "Bin Code")
            //     {
            //         Visible = false;
            //     }
            //     field("Reserved Quantity"; "Reserved Quantity")
            //     {
            //         BlankZero = true;
            //     }
            //     field("Job Remaining Qty."; "Job Remaining Qty.")
            //     {
            //         BlankZero = true;
            //         Visible = false;
            //     }
            //     field("Unit of Measure"; "Unit of Measure")
            //     {
            //         Visible = false;
            //     }
            //     field("ActualAncillary(LCY)"; "ActualAncillary(LCY)")
            //     {
            //     }
            //     field("ActualSurcharge Duty(LCY)"; "ActualSurcharge Duty(LCY)")
            //     {
            //     }
            //     field("ActualEcowas Duty(LCY)"; "ActualEcowas Duty(LCY)")
            //     {
            //     }
            //     field("ActualCISS(LCY)"; "ActualCISS(LCY)")
            //     {
            //     }
            //     field("ActualLandedAmount(LCY)"; "ActualLandedAmount(LCY)")
            //     {
            //     }
            //     field("Indirect Cost %"; "Indirect Cost %")
            //     {
            //         Visible = false;
            //     }
            //     field("Unit Cost (LCY)"; "Unit Cost (LCY)")
            //     {
            //         Visible = false;
            //     }
            //     field("ActualVat (LCY)"; "ActualVat (LCY)")
            //     {
            //     }
            //     field("Clearing(LCY)"; "Clearing(LCY)")
            //     {
            //     }
            //     field("Interest(LCY)"; "Interest(LCY)")
            //     {
            //     }
            //     field("Unit Price (LCY)"; "Unit Price (LCY)")
            //     {
            //         BlankZero = true;
            //         Visible = false;
            //     }
            //     field("Line Discount %"; "Line Discount %")
            //     {
            //         BlankZero = true;
            //     }
            //     field("Line Discount Amount"; "Line Discount Amount")
            //     {
            //         Visible = false;
            //     }
            //     field("Prepayment %"; "Prepayment %")
            //     {
            //         Visible = false;
            //     }
            //     field("Prepmt. Line Amount"; "Prepmt. Line Amount")
            //     {
            //         Visible = false;
            //     }
            //     field("Prepmt. Amt. Inv."; "Prepmt. Amt. Inv.")
            //     {
            //         Visible = false;
            //     }
            //     field("Allow Invoice Disc."; "Allow Invoice Disc.")
            //     {
            //         Visible = false;
            //     }
            //     field("Inv. Discount Amount"; "Inv. Discount Amount")
            //     {
            //         Visible = false;
            //     }
            //     field("Qty. to Receive"; "Qty. to Receive")
            //     {
            //         BlankZero = true;
            //     }
            //     field("Quantity Received"; "Quantity Received")
            //     {
            //         BlankZero = true;
            //     }
            //     field("Qty. to Invoice"; "Qty. to Invoice")
            //     {
            //         BlankZero = true;
            //     }
            //     field("Quantity Invoiced"; "Quantity Invoiced")
            //     {
            //         BlankZero = true;
            //     }
            //     field("Job No."; "Job No.")
            //     {
            //         Visible = false;
            //     }
            //     field("Job Task No."; "Job Task No.")
            //     {
            //         Visible = false;
            //     }
            //     field("Job Planning Line No."; "Job Planning Line No.")
            //     {
            //         Visible = false;
            //     }
            //     field("Job Line Type"; "Job Line Type")
            //     {
            //         Visible = false;
            //     }
            //     field("Job Unit Price"; "Job Unit Price")
            //     {
            //         Visible = false;
            //     }
            //     field("Job Line Amount"; "Job Line Amount")
            //     {
            //         Visible = false;
            //     }
            //     field("Job Line Discount Amount"; "Job Line Discount Amount")
            //     {
            //         Visible = false;
            //     }
            //     field("Job Line Discount %"; "Job Line Discount %")
            //     {
            //         Visible = false;
            //     }
            //     field("Job Total Price"; "Job Total Price")
            //     {
            //         Visible = false;
            //     }
            //     field("Job Unit Price (LCY)"; "Job Unit Price (LCY)")
            //     {
            //         Visible = false;
            //     }
            //     field("Job Total Price (LCY)"; "Job Total Price (LCY)")
            //     {
            //         Visible = false;
            //     }
            //     field("Job Line Amount (LCY)"; "Job Line Amount (LCY)")
            //     {
            //         Visible = false;
            //     }
            //     field("Job Line Disc. Amount (LCY)"; "Job Line Disc. Amount (LCY)")
            //     {
            //         Visible = false;
            //     }
            //     field("Requested Receipt Date"; "Requested Receipt Date")
            //     {
            //         Visible = false;
            //     }
            //     field("Promised Receipt Date"; "Promised Receipt Date")
            //     {
            //         Visible = false;
            //     }
            //     field("Planned Receipt Date"; "Planned Receipt Date")
            //     {
            //     }
            //     field("Expected Receipt Date"; "Expected Receipt Date")
            //     {
            //     }
            //     field("Order Date"; "Order Date")
            //     {
            //     }
            //     field("Lead Time Calculation"; "Lead Time Calculation")
            //     {
            //         Visible = false;
            //     }
            //     field("Planning Flexibility"; "Planning Flexibility")
            //     {
            //         Visible = false;
            //     }
            //     field("Prod. Order No."; "Prod. Order No.")
            //     {
            //         Visible = false;
            //     }
            //     field("Prod. Order Line No."; "Prod. Order Line No.")
            //     {
            //         Visible = false;
            //     }
            //     field("Operation No."; "Operation No.")
            //     {
            //         Visible = false;
            //     }
            //     field("Work Center No."; "Work Center No.")
            //     {
            //         Visible = false;
            //     }
            //     field(Finished; Finished)
            //     {
            //         Visible = false;
            //     }
            //     field("Whse. Outstanding Qty. (Base)"; "Whse. Outstanding Qty. (Base)")
            //     {
            //         Visible = false;
            //     }
            //     field("Inbound Whse. Handling Time"; "Inbound Whse. Handling Time")
            //     {
            //         Visible = false;
            //     }
            //     field("Blanket Order No."; "Blanket Order No.")
            //     {
            //         Visible = false;
            //     }
            //     field("Blanket Order Line No."; "Blanket Order Line No.")
            //     {
            //         Visible = false;
            //     }
            //     field("Appl.-to Item Entry"; "Appl.-to Item Entry")
            //     {
            //         Visible = false;
            //     }
            //     field("Deferral Code"; "Deferral Code")
            //     {
            //         Enabled = (Type <> Type::"Fixed Asset") AND (Type <> Type::" ");
            //         TableRelation = "Deferral Template"."Deferral Code";
            //     }
            //     field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
            //     {
            //         Visible = false;
            //     }
            //     field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
            //     {
            //         Visible = false;
            //     }
            //     field("ShortcutDimCode[3]"; ShortcutDimCode[3])
            //     {
            //         CaptionClass = '1,2,3';
            //         TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (3),
            //                                                       "Dimension Value Type" = CONST (Standard),
            //                                                       Blocked = CONST (false));
            //         Visible = false;
            //     }
            //     field("ShortcutDimCode[4]"; ShortcutDimCode[4])
            //     {
            //         CaptionClass = '1,2,4';
            //         TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (4),
            //                                                       "Dimension Value Type" = CONST (Standard),
            //                                                       Blocked = CONST (false));
            //         Visible = false;
            //     }
            //     field("ShortcutDimCode[5]"; ShortcutDimCode[5])
            //     {
            //         CaptionClass = '1,2,5';
            //         TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (5),
            //                                                       "Dimension Value Type" = CONST (Standard),
            //                                                       Blocked = CONST (false));
            //         Visible = false;
            //     }
            //     field("ShortcutDimCode[6]"; ShortcutDimCode[6])
            //     {
            //         CaptionClass = '1,2,6';
            //         TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (6),
            //                                                       "Dimension Value Type" = CONST (Standard),
            //                                                       Blocked = CONST (false));
            //         Visible = false;
            //     }
            //     field("ShortcutDimCode[7]"; ShortcutDimCode[7])
            //     {
            //         CaptionClass = '1,2,7';
            //         TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (7),
            //                                                       "Dimension Value Type" = CONST (Standard),
            //                                                       Blocked = CONST (false));
            //         Visible = false;
            //     }
            //     field("ShortcutDimCode[8]"; ShortcutDimCode[8])
            //     {
            //         CaptionClass = '1,2,8';
            //         TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (8),
            //                                                       "Dimension Value Type" = CONST (Standard),
            //                                                       Blocked = CONST (false));
            //         Visible = false;
            //     }
            //     field("Outstanding Amount (LCY)"; "Outstanding Amount (LCY)")
            //     {
            //     }
            //     field("Freight(LCY)"; "Freight(LCY)")
            //     {
            //     }
            //     field("Ancillary(LCY)"; "Ancillary(LCY)")
            //     {
            //     }
            //     field("Duty(LCY)"; "Duty(LCY)")
            //     {
            //     }
            //     field("Insurance(LCY)"; "Insurance(LCY)")
            //     {
            //     }
            //     field("Surcharge Duty(LCY)"; "Surcharge Duty(LCY)")
            //     {
            //     }
            //     field("Ecowas Duty(LCY)"; "Ecowas Duty(LCY)")
            //     {
            //     }
            //     field("CISS(LCY)"; "CISS(LCY)")
            //     {
            //     }
            //     field("Vat (LCY)"; "Vat (LCY)")
            //     {
            //     }
            // }
        }
    }

    actions
    {
        area(processing)
        {
            group("&Line")
            {
                Caption = '&Line';
                Image = Line;
                group("Item Availability by")
                {
                    Caption = 'Item Availability by';
                    Image = ItemAvailability;
                    action("Event")
                    {
                        Caption = 'Event';
                        Image = "Event";
                    }
                    action(Period)
                    {
                        Caption = 'Period';
                        Image = Period;
                    }
                    action(Variant)
                    {
                        Caption = 'Variant';
                        Image = ItemVariant;
                    }
                    action(Location)
                    {
                        AccessByPermission = TableData Location = R;
                        Caption = 'Location';
                        Image = Warehouse;
                    }
                    action("BOM Level")
                    {
                        Caption = 'BOM Level';
                        Image = BOMLevel;
                    }
                }
                action("Reservation Entries")
                {
                    AccessByPermission = TableData Item = R;
                    Caption = 'Reservation Entries';
                    Image = ReservationLedger;
                }
                action("Item Tracking Lines")
                {
                    Caption = 'Item &Tracking Lines';
                    Image = ItemTrackingLines;
                    ShortCutKey = 'Shift+Ctrl+I';
                }
                action(Dimensions)
                {
                    AccessByPermission = TableData Dimension = R;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                }
                action(ItemChargeAssignment)
                {
                    AccessByPermission = TableData "Item Charge" = R;
                    Caption = 'Item Charge &Assignment';
                    Image = ItemCosts;
                }
                action(DeferralSchedule)
                {
                    Caption = 'Deferral Schedule';
                    Enabled = "Deferral Code" <> '';
                    Image = PaymentPeriod;
                }
            }
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action("E&xplode BOM")
                {
                    AccessByPermission = TableData "BOM Component" = R;
                    Caption = 'E&xplode BOM';
                    Image = ExplodeBOM;
                }
                action("Insert Ext. Texts")
                {
                    AccessByPermission = TableData "Extended Text Header" = R;
                    Caption = 'Insert &Ext. Texts';
                    Image = Text;
                }
                action(Reserve)
                {
                    Caption = '&Reserve';
                    Ellipsis = true;
                    Image = Reserve;
                }
                action(OrderTracking)
                {
                    Caption = 'Order &Tracking';
                    Image = OrderTracking;
                }
            }
            group("O&rder")
            {
                Caption = 'O&rder';
                Image = "Order";
                group("Dr&op Shipment")
                {
                    Caption = 'Dr&op Shipment';
                    Image = Delivery;
                    action("Sales &Order")
                    {
                        AccessByPermission = TableData "Sales Shipment Header" = R;
                        Caption = 'Sales &Order';
                        Image = Document;
                    }
                }
                group("Speci&al Order")
                {
                    Caption = 'Speci&al Order';
                    Image = SpecialOrder;
                    action(Action1901038504)
                    {
                        AccessByPermission = TableData "Sales Shipment Header" = R;
                        Caption = 'Sales &Order';
                        Image = Document;
                    }
                }
            }
        }
    }
}

