pageextension 50228 pageextension50228 extends "Purchase Order Subform"
{
    // layout
    // {

    //     //Unsupported feature: Property Modification (Name) on ""Line Discount Amount"(Control 60)".


    //     //Unsupported feature: Property Modification (SourceExpr) on ""Line Discount Amount"(Control 60)".


    //     //Unsupported feature: Property Modification (Name) on ""Allow Invoice Disc."(Control 58)".


    //     //Unsupported feature: Property Modification (SourceExpr) on ""Allow Invoice Disc."(Control 58)".


    //     //Unsupported feature: Property Modification (ImplicitType) on ""Allow Invoice Disc."(Control 58)".

    //     modify("Inv. Discount Amount")
    //     {

    //         //Unsupported feature: Property Modification (Name) on ""Inv. Discount Amount"(Control 26)".


    //         //Unsupported feature: Property Modification (SourceExpr) on ""Inv. Discount Amount"(Control 26)".

    //         BlankZero = true;
    //     }
    //     modify("Qty. to Receive")
    //     {

    //         //Unsupported feature: Property Modification (Name) on ""Qty. to Receive"(Control 18)".


    //         //Unsupported feature: Property Modification (SourceExpr) on ""Qty. to Receive"(Control 18)".


    //         //Unsupported feature: Property Modification (ImplicitType) on ""Qty. to Receive"(Control 18)".

    //         Visible = false;
    //     }

    //     //Unsupported feature: Property Modification (Name) on ""Quantity Received"(Control 20)".


    //     //Unsupported feature: Property Modification (SourceExpr) on ""Quantity Received"(Control 20)".


    //     //Unsupported feature: Property Modification (Name) on ""Qty. to Invoice"(Control 22)".


    //     //Unsupported feature: Property Modification (SourceExpr) on ""Qty. to Invoice"(Control 22)".


    //     //Unsupported feature: Property Modification (Name) on ""Quantity Invoiced"(Control 24)".


    //     //Unsupported feature: Property Modification (SourceExpr) on ""Quantity Invoiced"(Control 24)".


    //     //Unsupported feature: Property Modification (Name) on ""Allow Item Charge Assignment"(Control 56)".


    //     //Unsupported feature: Property Modification (SourceExpr) on ""Allow Item Charge Assignment"(Control 56)".


    //     //Unsupported feature: Property Modification (ImplicitType) on ""Allow Item Charge Assignment"(Control 56)".


    //     //Unsupported feature: Property Modification (Name) on ""Qty. to Assign"(Control 66)".


    //     //Unsupported feature: Property Modification (SourceExpr) on ""Qty. to Assign"(Control 66)".


    //     //Unsupported feature: Property Modification (Name) on ""Qty. Assigned"(Control 54)".


    //     //Unsupported feature: Property Modification (SourceExpr) on ""Qty. Assigned"(Control 54)".


    //     //Unsupported feature: Property Modification (Name) on ""Document No."(Control 25)".


    //     //Unsupported feature: Property Modification (SourceExpr) on ""Document No."(Control 25)".


    //     //Unsupported feature: Property Modification (ImplicitType) on ""Document No."(Control 25)".


    //     //Unsupported feature: Property Modification (Name) on ""Line No."(Control 27)".


    //     //Unsupported feature: Property Modification (SourceExpr) on ""Line No."(Control 27)".


    //     //Unsupported feature: Property Modification (ImplicitType) on ""Line No."(Control 27)".


    //     //Unsupported feature: Property Modification (Level) on "Control43(Control 43)".


    //     //Unsupported feature: Property Modification (ControlType) on "Control43(Control 43)".


    //     //Unsupported feature: Property Modification (Name) on "Control43(Control 43)".


    //     //Unsupported feature: Property Insertion (SourceExpr) on "Control43(Control 43)".


    //     //Unsupported feature: Property Insertion (ImplicitType) on "Control43(Control 43)".

    //     modify(Control37)
    //     {

    //         //Unsupported feature: Property Modification (Level) on "Control37(Control 37)".


    //         //Unsupported feature: Property Modification (ControlType) on "Control37(Control 37)".


    //         //Unsupported feature: Property Modification (Name) on "Control37(Control 37)".

    //         Caption = 'Invoice Discount Amount';

    //         //Unsupported feature: Property Insertion (SourceExpr) on "Control37(Control 37)".


    //         //Unsupported feature: Property Insertion (AutoFormatType) on "Control37(Control 37)".


    //         //Unsupported feature: Property Insertion (AutoFormatExpr) on "Control37(Control 37)".

    //         Editable = InvDiscAmountEditable;
    //         Style = Subordinate;
    //     }
    //     modify("Invoice Discount Amount")
    //     {

    //         //Unsupported feature: Property Modification (Level) on ""Invoice Discount Amount"(Control 35)".


    //         //Unsupported feature: Property Modification (ControlType) on ""Invoice Discount Amount"(Control 35)".


    //         //Unsupported feature: Property Modification (Name) on ""Invoice Discount Amount"(Control 35)".


    //         //Unsupported feature: Property Insertion (GroupType) on ""Invoice Discount Amount"(Control 35)".


    //         //Unsupported feature: Property Insertion (InstructionalTextML) on ""Invoice Discount Amount"(Control 35)".

    //         ShowCaption = false;
    //     }
    //     modify("Invoice Disc. Pct.")
    //     {

    //         //Unsupported feature: Property Modification (Level) on ""Invoice Disc. Pct."(Control 33)".


    //         //Unsupported feature: Property Modification (ControlType) on ""Invoice Disc. Pct."(Control 33)".


    //         //Unsupported feature: Property Modification (Name) on ""Invoice Disc. Pct."(Control 33)".


    //         //Unsupported feature: Property Insertion (GroupType) on ""Invoice Disc. Pct."(Control 33)".


    //         //Unsupported feature: Property Insertion (InstructionalTextML) on ""Invoice Disc. Pct."(Control 33)".

    //         ShowCaption = false;
    //     }
    //     modify(Control19)
    //     {

    //         //Unsupported feature: Property Modification (Level) on "Control19(Control 19)".


    //         //Unsupported feature: Property Modification (ControlType) on "Control19(Control 19)".


    //         //Unsupported feature: Property Modification (Name) on "Control19(Control 19)".

    //         Caption = 'Invoice Discount %';

    //         //Unsupported feature: Property Insertion (DecimalPlaces) on "Control19(Control 19)".


    //         //Unsupported feature: Property Insertion (SourceExpr) on "Control19(Control 19)".

    //         Visible = true;
    //         Editable = false;
    //         Style = Subordinate;
    //     }
    //     modify("Total Amount Excl. VAT")
    //     {

    //         //Unsupported feature: Property Modification (Name) on ""Total Amount Excl. VAT"(Control 17)".

    //         Caption = 'Total VAT';

    //         //Unsupported feature: Property Modification (SourceExpr) on ""Total Amount Excl. VAT"(Control 17)".


    //         //Unsupported feature: Property Insertion (ImplicitType) on ""Total Amount Excl. VAT"(Control 17)".

    //     }
    //     modify("Total VAT Amount")
    //     {

    //         //Unsupported feature: Property Modification (Name) on ""Total VAT Amount"(Control 15)".

    //         Caption = 'Total Amount Excl. VAT';

    //         //Unsupported feature: Property Modification (SourceExpr) on ""Total VAT Amount"(Control 15)".


    //         //Unsupported feature: Property Insertion (DrillDown) on ""Total VAT Amount"(Control 15)".

    //     }

    //     //Unsupported feature: Property Deletion (Visible) on ""Line Discount Amount"(Control 60)".

    //     modify("Prepayment %")
    //     {
    //         Visible = false;
    //     }
    //     modify("Prepmt. Line Amount")
    //     {
    //         Visible = false;
    //     }
    //     modify("Prepmt. Amt. Inv.")
    //     {
    //         Visible = false;
    //     }

    //     //Unsupported feature: Property Deletion (Visible) on ""Allow Invoice Disc."(Control 58)".


    //     //Unsupported feature: Property Deletion (Visible) on ""Inv. Discount Amount"(Control 26)".


    //     //Unsupported feature: Property Deletion (BlankZero) on ""Qty. to Receive"(Control 18)".


    //     //Unsupported feature: Code Insertion on ""Prepayment %"(Control 56)".

    //     //trigger OnValidate()
    //     //Parameters and return type have not been exported.
    //     //begin
    //     /*
    //     //RedistributeTotalsOnAfterValidate;
    //     DeltaUpdateTotals;
    //     */
    //     //end;
    //     modify("Qty. to Assign")
    //     {
    //         Visible = false;
    //     }
    //     modify("Qty. Assigned")
    //     {
    //         Visible = false;
    //     }

    //     //Unsupported feature: Property Deletion (BlankZero) on ""Qty. Assigned"(Control 54)".

    //     modify("Job No.")
    //     {
    //         Visible = false;
    //     }
    //     modify("Job Total Price")
    //     {
    //         Visible = false;
    //     }
    //     modify("Job Total Price (LCY)")
    //     {
    //         Visible = false;
    //     }
    //     modify("Promised Receipt Date")
    //     {
    //         Visible = false;
    //     }
    //     modify("Planned Receipt Date")
    //     {
    //         Visible = false;
    //     }
    //     modify("Expected Receipt Date")
    //     {
    //         Visible = false;
    //     }

    //     //Unsupported feature: Property Deletion (Visible) on ""Document No."(Control 25)".


    //     //Unsupported feature: Property Deletion (Editable) on ""Document No."(Control 25)".


    //     //Unsupported feature: Property Deletion (Visible) on ""Line No."(Control 27)".


    //     //Unsupported feature: Property Deletion (Editable) on ""Line No."(Control 27)".


    //     //Unsupported feature: Property Deletion (GroupType) on "Control43(Control 43)".


    //     //Unsupported feature: Property Deletion (ShowCaption) on "Control43(Control 43)".



    //     //Unsupported feature: Code Insertion on ""Invoice Discount Amount"(Control 37)".

    //     //trigger OnValidate()
    //     //Parameters and return type have not been exported.
    //     //var
    //     //PurchaseHeader: Record "Purchase Header";
    //     //begin
    //     /*
    //     PurchaseHeader.Get("Document Type","Document No.");
    //     PurchCalcDiscByType.ApplyInvDiscBasedOnAmt(TotalPurchaseLine."Inv. Discount Amount",PurchaseHeader);
    //     CurrPage.Update(false);
    //     */
    //     //end;

    //     //Unsupported feature: Property Deletion (GroupType) on "Control37(Control 37)".


    //     //Unsupported feature: Property Deletion (ShowCaption) on "Control37(Control 37)".

    //     modify("Invoice Discount Amount")
    //     {
    //         Visible = false;
    //     }

    //     //Unsupported feature: Property Deletion (CaptionML) on ""Invoice Discount Amount"(Control 35)".


    //     //Unsupported feature: Property Deletion (ToolTipML) on ""Invoice Discount Amount"(Control 35)".


    //     //Unsupported feature: Property Deletion (ApplicationArea) on ""Invoice Discount Amount"(Control 35)".


    //     //Unsupported feature: Property Deletion (SourceExpr) on ""Invoice Discount Amount"(Control 35)".


    //     //Unsupported feature: Property Deletion (AutoFormatType) on ""Invoice Discount Amount"(Control 35)".


    //     //Unsupported feature: Property Deletion (AutoFormatExpr) on ""Invoice Discount Amount"(Control 35)".


    //     //Unsupported feature: Property Deletion (CaptionClass) on ""Invoice Discount Amount"(Control 35)".


    //     //Unsupported feature: Property Deletion (Editable) on ""Invoice Discount Amount"(Control 35)".


    //     //Unsupported feature: Property Deletion (ImplicitType) on ""Invoice Discount Amount"(Control 35)".

    //     modify("Invoice Disc. Pct.")
    //     {
    //         Visible = false;
    //     }

    //     //Unsupported feature: Property Deletion (CaptionML) on ""Invoice Disc. Pct."(Control 33)".


    //     //Unsupported feature: Property Deletion (ToolTipML) on ""Invoice Disc. Pct."(Control 33)".


    //     //Unsupported feature: Property Deletion (ApplicationArea) on ""Invoice Disc. Pct."(Control 33)".


    //     //Unsupported feature: Property Deletion (DecimalPlaces) on ""Invoice Disc. Pct."(Control 33)".


    //     //Unsupported feature: Property Deletion (SourceExpr) on ""Invoice Disc. Pct."(Control 33)".


    //     //Unsupported feature: Property Deletion (ImplicitType) on ""Invoice Disc. Pct."(Control 33)".


    //     //Unsupported feature: Property Deletion (GroupType) on "Control19(Control 19)".


    //     //Unsupported feature: Property Deletion (ShowCaption) on "Control19(Control 19)".


    //     //Unsupported feature: Property Deletion (DrillDown) on ""Total Amount Excl. VAT"(Control 17)".


    //     //Unsupported feature: Property Deletion (ImplicitType) on ""Total VAT Amount"(Control 15)".

    //     modify("Total Amount Incl. VAT")
    //     {
    //         Visible = false;
    //     }
    //     addafter("Bin Code")
    //     {
    //         field("Duty Rate%"; "Duty Rate%")
    //         {
    //         }
    //     }
    //     addafter("Line Discount %")
    //     {
    //         field("Line Discount Amount"; "Line Discount Amount")
    //         {
    //             Visible = false;
    //         }
    //     }
    //     addfirst(Control43)
    //     {
    //         field("Prepmt. Line Amount"; "Prepmt. Line Amount")
    //         {
    //             Visible = false;
    //         }
    //         field("Prepmt. Amt. Inv."; "Prepmt. Amt. Inv.")
    //         {
    //             Visible = false;
    //         }
    //         field("Allow Invoice Disc."; "Allow Invoice Disc.")
    //         {
    //             Visible = false;
    //         }
    //         field("Inv. Discount Amount"; "Inv. Discount Amount")
    //         {
    //             Visible = false;
    //         }
    //     }
    //     addafter("Quantity Received")
    //     {
    //         field("Clearing(LCY)"; "Clearing(LCY)")
    //         {
    //         }
    //     }
    //     addafter("Allow Invoice Disc.")
    //     {
    //         field("ActualFreight(LCY)"; "ActualFreight(LCY)")
    //         {
    //         }
    //     }
    //     addafter("Line Discount Amount")
    //     {
    //         field("ActualDuty(LCY)"; "ActualDuty(LCY)")
    //         {
    //         }
    //         field("ActualInsurance(LCY)"; "ActualInsurance(LCY)")
    //         {
    //         }
    //         field("ActualSurcharge Duty(LCY)"; "ActualSurcharge Duty(LCY)")
    //         {
    //         }
    //     }
    //     addafter("Qty. to Assign")
    //     {
    //         field("ActualCISS(LCY)"; "ActualCISS(LCY)")
    //         {
    //         }
    //         field("ActualVat (LCY)"; "ActualVat (LCY)")
    //         {
    //         }
    //         field("ActualClearing(LCY)"; "ActualClearing(LCY)")
    //         {
    //         }
    //         field("ActualInterest(LCY)"; "ActualInterest(LCY)")
    //         {
    //         }
    //         field("ActualTotal Overhead(LCY)"; "ActualTotal Overhead(LCY)")
    //         {
    //         }
    //         field("ActualLandedAmount(LCY)"; "ActualLandedAmount(LCY)")
    //         {
    //         }
    //         field("Previous Purchase Price(LCY)"; "Previous Purchase Price(LCY)")
    //         {
    //         }
    //         field("Quantity Ordered"; "Quantity Ordered")
    //         {
    //         }
    //     }
    //     addafter("Job Line Discount %")
    //     {
    //         field("Job Total Price"; "Job Total Price")
    //         {
    //             Visible = false;
    //         }
    //         field("Job Total Price (LCY)"; "Job Total Price (LCY)")
    //         {
    //             Visible = false;
    //         }
    //     }
    //     addafter("Requested Receipt Date")
    //     {
    //         field("Promised Receipt Date"; "Promised Receipt Date")
    //         {
    //             Visible = false;
    //         }
    //     }
    //     addafter("Operation No.")
    //     {
    //         field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
    //         {
    //         }
    //     }
    //     addafter(Control43)
    //     {
    //         group(Control87)
    //         {
    //             ShowCaption = false;
    //         }
    //     }
    //     moveafter("Line Discount %"; "Allow Item Charge Assignment")
    //     moveafter("Prepayment %"; Control43)
    //     moveafter("Line No."; "Inv. Discount Amount")
    //     moveafter("Qty. to Receive"; "Qty. to Invoice")
    //     moveafter("Qty. to Invoice"; "Quantity Received")
    //     moveafter("Quantity Invoiced"; "Allow Invoice Disc.")
    //     moveafter("ActualAncillary(LCY)"; "Qty. to Assign")
    //     moveafter("Job No."; "Job Task No.")
    //     moveafter("Job Line Discount %"; "Requested Receipt Date")
    //     moveafter("Requested Receipt Date"; "Line No.")
    //     moveafter("Planned Receipt Date"; "Document No.")
    //     moveafter("Expected Receipt Date"; "Order Date")
    //     moveafter(ShortcutDimCode8; "Invoice Discount Amount")
    //     moveafter("Invoice Discount Amount"; Control19)
    //     moveafter(Control33; "Total VAT Amount")
    // }
}

