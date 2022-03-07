page 50029 "Appraisal Entry Subform."
{
    AutoSplitKey = true;
    Caption = 'Appraisal Entry Subform';
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = Card;
    SourceTable = "Sales Line";
    SourceTableView = WHERE ("Document Type" = FILTER ("Return Order"));

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Line No."; "Line No.")
                {
                    Visible = false;
                }
                field(Type; Type)
                {
                    Visible = true;
                }
                field("No."; "No.")
                {
                    Visible = false;
                }
                field("Document Type"; "Document Type")
                {
                    Visible = false;
                }
                field(Description; Description)
                {
                }
                field(Grade; Grade)
                {
                }
                field(Quantity; Quantity)
                {
                    BlankZero = true;
                    Visible = false;
                }
                field(Comment; Comment)
                {
                }
                field("Gen. Bus. Posting Group"; "Gen. Bus. Posting Group")
                {
                    Visible = false;
                }
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Line")
            {
                Caption = '&Line';
                group("Item Availability by")
                {
                    Caption = 'Item Availability by';
                    Visible = false;
                    action(Period)
                    {
                        Caption = 'Period';
                        Visible = true;
                    }
                    action(Variant)
                    {
                        Caption = 'Variant';
                        Visible = true;
                    }
                    action(Location)
                    {
                        Caption = 'Location';
                        Visible = true;
                    }
                }
                action("Reservation Entries")
                {
                    Caption = 'Reservation Entries';
                    Image = ReservationLedger;
                    Visible = true;
                }
                action("Select Item Substitution")
                {
                    Caption = 'Select Item Substitution';
                    Image = SelectItemSubstitution;
                    Visible = true;
                }
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';
                }
                action("Item Charge &Assignment")
                {
                    Caption = 'Item Charge &Assignment';
                    Ellipsis = true;
                    Visible = true;
                }
                action("Item &Tracking Lines")
                {
                    Caption = 'Item &Tracking Lines';
                    Image = ItemTrackingLines;
                    Visible = true;
                }
            }
        }
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                action("Calculate &Invoice Discount")
                {
                    Caption = 'Calculate &Invoice Discount';
                    Enabled = true;
                    Image = CalculateInvoiceDiscount;
                    Visible = true;
                }
                action("E&xplode BOM")
                {
                    Caption = 'E&xplode BOM';
                    Enabled = true;
                    Image = ExplodeBOM;
                    Visible = true;
                }
                action("Insert &Ext. Texts")
                {
                    Caption = 'Insert &Ext. Texts';
                    Visible = true;
                }
                group("Drop Shipment")
                {
                    Caption = 'Drop Shipment';
                    Enabled = false;
                    Visible = false;
                    action("Purchase &Order")
                    {
                        Caption = 'Purchase &Order';
                        Enabled = true;
                        Image = Document;
                        Visible = true;
                    }
                }
                group("Special Order")
                {
                    Caption = 'Special Order';
                    Enabled = false;
                    Visible = false;
                    action(Action1902819104)
                    {
                        Caption = 'Purchase &Order';
                        Image = Document;
                        Visible = true;
                    }
                }
                action("&Reserve")
                {
                    Caption = '&Reserve';
                    Ellipsis = true;
                    Enabled = true;
                    Visible = true;
                }
                action("Order &Tracking")
                {
                    Caption = 'Order &Tracking';
                    Enabled = true;
                    Visible = true;
                }
            }
        }
    }
}

