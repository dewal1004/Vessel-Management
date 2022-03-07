page 50097 "Purchase Order Foreign"
{
    Caption = 'Purchase Order Foreign';
    PageType = Document;
    PromotedActionCategories = 'New,Process,Report,Approve,Release,Posting,Prepare,Invoice,Request Approval';
    RefreshOnActivate = true;
    SourceTable = "Purchase Header";
    SourceTableView = WHERE ("Document Type" = FILTER (Order),
                            "Order Type" = FILTER (Foreign));

    layout
    {
        area(content)
        {
            // group(General)
            // {
            //     Caption = 'General';
            //     field("No."; "No.")
            //     {
            //         Importance = Promoted;
            //         Visible = true;
            //     }
            //     field("Buy-from Vendor No."; "Buy-from Vendor No.")
            //     {
            //         Importance = Promoted;
            //         ShowMandatory = true;
            //     }
            //     field("Buy-from Contact No."; "Buy-from Contact No.")
            //     {
            //     }
            //     field("Buy-from Vendor Name"; "Buy-from Vendor Name")
            //     {
            //     }
            //     field("Buy-from Address"; "Buy-from Address")
            //     {
            //         Importance = Additional;
            //     }
            //     field("Buy-from Address 2"; "Buy-from Address 2")
            //     {
            //         Importance = Additional;
            //     }
            //     field("Buy-from Post Code"; "Buy-from Post Code")
            //     {
            //         Importance = Additional;
            //     }
            //     field("Buy-from City"; "Buy-from City")
            //     {
            //     }
            //     field("Buy-from Contact"; "Buy-from Contact")
            //     {
            //         Importance = Additional;
            //     }
            //     field("No. of Archived Versions"; "No. of Archived Versions")
            //     {
            //         Importance = Additional;
            //     }
            //     field("Posting Date"; "Posting Date")
            //     {
            //     }
            //     field("Order Date"; "Order Date")
            //     {
            //         Importance = Promoted;
            //     }
            //     field("Document Date"; "Document Date")
            //     {
            //     }
            //     field("Quote No."; "Quote No.")
            //     {
            //         Importance = Additional;
            //     }
            //     field("Vendor Order No."; "Vendor Order No.")
            //     {
            //     }
            //     field("Vendor Shipment No."; "Vendor Shipment No.")
            //     {
            //     }
            //     field("Vendor Invoice No."; "Vendor Invoice No.")
            //     {
            //         ShowMandatory = VendorInvoiceNoMandatory;
            //     }
            //     field("Order Address Code"; "Order Address Code")
            //     {
            //         Importance = Additional;
            //     }
            //     field(Status; Status)
            //     {
            //         Importance = Promoted;
            //     }
            //     field("Purchaser Code"; "Purchaser Code")
            //     {
            //         Importance = Additional;
            //     }
            //     field("Responsibility Center"; "Responsibility Center")
            //     {
            //         Importance = Additional;
            //     }
            //     field("Assigned User ID"; "Assigned User ID")
            //     {
            //         Importance = Additional;
            //     }
            //     field("Job Queue Status"; "Job Queue Status")
            //     {
            //         Importance = Additional;
            //     }
            //     field("Order Type"; "Order Type")
            //     {
            //     }
            // }
            part(PurchLines; "Purchase Order Subform Foreign")
            {
                SubPageLink = "Document No." = FIELD ("No.");
                UpdatePropagation = Both;
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';
                field("Pay-to Vendor No."; "Pay-to Vendor No.")
                {
                    Importance = Promoted;
                }
                field("Pay-to Contact No."; "Pay-to Contact No.")
                {
                    Importance = Additional;
                }
                field("Pay-to Name"; "Pay-to Name")
                {
                }
                field("Pay-to Address"; "Pay-to Address")
                {
                    Importance = Additional;
                }
                field("Pay-to Address 2"; "Pay-to Address 2")
                {
                    Importance = Additional;
                }
                field("Pay-to Post Code"; "Pay-to Post Code")
                {
                    Importance = Additional;
                }
                field("Pay-to City"; "Pay-to City")
                {
                }
                field("Pay-to Contact"; "Pay-to Contact")
                {
                    Importance = Additional;
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                }
                field("Payment Terms Code"; "Payment Terms Code")
                {
                    Importance = Promoted;
                }
                field("Due Date"; "Due Date")
                {
                    Importance = Promoted;
                }
                field("Payment Discount %"; "Payment Discount %")
                {
                }
                field("Pmt. Discount Date"; "Pmt. Discount Date")
                {
                    Importance = Additional;
                }
                field("Payment Method Code"; "Payment Method Code")
                {
                    Importance = Additional;
                }
                field("Payment Reference"; "Payment Reference")
                {
                }
                field("Creditor No."; "Creditor No.")
                {
                }
                field("On Hold"; "On Hold")
                {
                }
                field("Prices Including VAT"; "Prices Including VAT")
                {
                }
                field("VAT Bus. Posting Group"; "VAT Bus. Posting Group")
                {
                }
            }
            group(Shipping)
            {
                Caption = 'Shipping';
                field("Ship-to Name"; "Ship-to Name")
                {
                }
                field("Ship-to Address"; "Ship-to Address")
                {
                    Importance = Additional;
                }
                field("Ship-to Address 2"; "Ship-to Address 2")
                {
                    Importance = Additional;
                }
                field("Ship-to Post Code"; "Ship-to Post Code")
                {
                    Importance = Additional;
                }
                field("Ship-to City"; "Ship-to City")
                {
                }
                field("Ship-to Contact"; "Ship-to Contact")
                {
                }
                field("Location Code"; "Location Code")
                {
                    Importance = Promoted;
                }
                field("Inbound Whse. Handling Time"; "Inbound Whse. Handling Time")
                {
                    Importance = Additional;
                }
                field("Shipment Method Code"; "Shipment Method Code")
                {
                }
                field("Lead Time Calculation"; "Lead Time Calculation")
                {
                    Importance = Additional;
                }
                field("Requested Receipt Date"; "Requested Receipt Date")
                {
                }
                field("Promised Receipt Date"; "Promised Receipt Date")
                {
                }
                field("Expected Receipt Date"; "Expected Receipt Date")
                {
                    Importance = Promoted;
                }
                field("Sell-to Customer No."; "Sell-to Customer No.")
                {
                }
                field("Ship-to Code"; "Ship-to Code")
                {
                }
            }
            group("Foreign Trade")
            {
                Caption = 'Foreign Trade';
                field("Currency Code"; "Currency Code")
                {
                    Importance = Promoted;
                }
                field("Transaction Type"; "Transaction Type")
                {
                }
                field("Transaction Specification"; "Transaction Specification")
                {
                }
                field("Transport Method"; "Transport Method")
                {
                }
                field("Entry Point"; "Entry Point")
                {
                }
                field("Area"; Area)
                {
                }
                field("Total Amount Item (LCY)"; "Total Amount Item (LCY)")
                {
                }
                field(Overhead; Overhead)
                {
                }
                field("Total Amount account"; "Total Amount account")
                {
                }
                field("Total Amt. Item to Rec. (LCY)"; "Total Amt. Item to Rec. (LCY)")
                {
                }
            }
            group("Quot.Stand Cost")
            {
                Caption = 'Quot.Stand Cost';
                field("Totat Freight"; "Totat Freight")
                {
                }
                field("Total Ancillary Charges"; "Total Ancillary Charges")
                {
                }
                field("Clearing(LCY)"; "Clearing(LCY)")
                {
                }
                field("Interest Expense(LCY)"; "Interest Expense(LCY)")
                {
                }
                field("Total Freight (LCY)"; "Total Freight (LCY)")
                {
                }
                field("Total Ancillary Charges(LCY)"; "Total Ancillary Charges(LCY)")
                {
                }
                field("Line Amount"; "Line Amount")
                {
                }
                field("<Total Amount Item (LCY)>"; "Total Amount Item (LCY)")
                {
                }
                field("Freight(LCY)LTS"; "Freight(LCY)LTS")
                {
                }
                field("Ancillary(LCY)LTS"; "Ancillary(LCY)LTS")
                {
                }
                field("Duty(LCY)LTS"; "Duty(LCY)LTS")
                {
                }
                field("Total Quantity Received"; "Total Quantity Received")
                {
                }
            }
            group(Prepayment)
            {
                Caption = 'Prepayment';
                field("Prepayment %"; "Prepayment %")
                {
                    Importance = Promoted;
                }
                field("Compress Prepayment"; "Compress Prepayment")
                {
                }
                field("Prepmt. Payment Terms Code"; "Prepmt. Payment Terms Code")
                {
                }
                field("Prepayment Due Date"; "Prepayment Due Date")
                {
                    Importance = Promoted;
                }
                field("Prepmt. Payment Discount %"; "Prepmt. Payment Discount %")
                {
                }
                field("Prepmt. Pmt. Discount Date"; "Prepmt. Pmt. Discount Date")
                {
                }
                field("Vendor Cr. Memo No."; "Vendor Cr. Memo No.")
                {
                }
            }
            group(Control144)
            {
                Caption = 'Prepayment';
                field("Your Reference"; "Your Reference")
                {
                }
                field("LC No."; "LC No.")
                {
                }
                field(Description; Description)
                {
                }
                field("Form M No."; "Form M No.")
                {
                }
            }
        }
        // area(factboxes)
        // {
        //     // part(Control23; "Pending Approval FactBox")
        //     // {
        //     //     SubPageLink = "Table ID" = CONST (38),
        //     //                   "Document Type" = FIELD ("Document Type"),
        //     //                   "Document No." = FIELD ("No.");
        //     //     Visible = OpenApprovalEntriesExistForCurrUser;
        //     // }
        //     part(Control1903326807; "Item Replenishment FactBox")
        //     {
        //         Provider = PurchLines;
        //         SubPageLink = "No." = FIELD ("No.");
        //         Visible = false;
        //     }
        //     part(Control1906354007; "Approval FactBox")
        //     {
        //         SubPageLink = "Table ID" = CONST (38),
        //                       "Document Type" = FIELD ("Document Type"),
        //                       "Document No." = FIELD ("No.");
        //         Visible = false;
        //     }
        //     part(Control1901138007; "Vendor Details FactBox")
        //     {
        //         SubPageLink = "No." = FIELD ("Buy-from Vendor No.");
        //         Visible = false;
        //     }
        //     part(Control1904651607; "Vendor Statistics FactBox")
        //     {
        //         SubPageLink = "No." = FIELD ("Pay-to Vendor No.");
        //         Visible = true;
        //     }
        //     part(IncomingDocAttachFactBox; "Incoming Doc. Attach. FactBox")
        //     {
        //         ShowFilter = false;
        //         Visible = false;
        //     }
        //     part(Control1903435607; "Vendor Hist. Buy-from FactBox")
        //     {
        //         SubPageLink = "No." = FIELD ("Buy-from Vendor No.");
        //         Visible = true;
        //     }
        //     part(Control1906949207; "Vendor Hist. Pay-to FactBox")
        //     {
        //         SubPageLink = "No." = FIELD ("Pay-to Vendor No.");
        //         Visible = false;
        //     }
        //     part(Control3; "Purchase Line FactBox")
        //     {
        //         Provider = PurchLines;
        //         SubPageLink = "Document Type" = FIELD ("Document Type"),
        //                       "Document No." = FIELD ("Document No."),
        //                       "Line No." = FIELD ("Line No.");
        //     }
        //     part(WorkflowStatus; "Workflow Status FactBox")
        //     {
        //         Editable = false;
        //         Enabled = false;
        //         ShowFilter = false;
        //         Visible = ShowWorkflowStatus;
        //     }
        //     systempart(Control1900383207; Links)
        //     {
        //         Visible = false;
        //     }
        //     systempart(Control1905767507; Notes)
        //     {
        //         Visible = true;
        //     }
        // }
    }

    actions
    {
        area(navigation)
        {
            group("O&rder")
            {
                Caption = 'O&rder';
                Image = "Order";
                action(Dimensions)
                {
                    AccessByPermission = TableData Dimension = R;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    Promoted = false;
                    //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedIsBig = false;
                    ShortCutKey = 'Shift+Ctrl+D';
                }
                action(Statistics)
                {
                    Caption = 'Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'F7';
                }
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    Promoted = false;
                    //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedIsBig = false;
                    RunObject = Page "Vendor Card";
                    RunPageLink = "No." = FIELD ("Buy-from Vendor No.");
                    ShortCutKey = 'Shift+F7';
                }
                action(Approvals)
                {
                    Caption = 'Approvals';
                    Image = Approvals;
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page "Purch. Comment Sheet";
                    RunPageLink = "Document Type" = FIELD ("Document Type"),
                                  "No." = FIELD ("No."),
                                  "Document Line No." = CONST (0);
                }
            }
            group(Documents)
            {
                Caption = 'Documents';
                Image = Documents;
                action(Receipts)
                {
                    Caption = 'Receipts';
                    Image = PostedReceipts;
                    RunObject = Page "Posted Purchase Receipts";
                    RunPageLink = "Order No." = FIELD ("No.");
                    RunPageView = SORTING ("Order No.");
                }
                action(Invoices)
                {
                    Caption = 'Invoices';
                    Image = Invoice;
                    Promoted = false;
                    //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedIsBig = false;
                    RunObject = Page "Posted Purchase Invoices";
                    RunPageLink = "Order No." = FIELD ("No.");
                    RunPageView = SORTING ("Order No.");
                }
                action("Prepa&yment Invoices")
                {
                    Caption = 'Prepa&yment Invoices';
                    Image = PrepaymentInvoice;
                    RunObject = Page "Posted Purchase Invoices";
                    RunPageLink = "Prepayment Order No." = FIELD ("No.");
                    RunPageView = SORTING ("Prepayment Order No.");
                }
                action("Prepayment Credi&t Memos")
                {
                    Caption = 'Prepayment Credi&t Memos';
                    Image = PrepaymentCreditMemo;
                    RunObject = Page "Posted Purchase Credit Memos";
                    RunPageLink = "Prepayment Order No." = FIELD ("No.");
                    RunPageView = SORTING ("Prepayment Order No.");
                }
            }
            group(Warehouse)
            {
                Caption = 'Warehouse';
                Image = Warehouse;
                separator(Action181)
                {
                }
                action("In&vt. Put-away/Pick Lines")
                {
                    Caption = 'In&vt. Put-away/Pick Lines';
                    Image = PickLines;
                    RunObject = Page "Warehouse Activity List";
                    RunPageLink = "Source Document" = CONST ("Purchase Order"),
                                  "Source No." = FIELD ("No.");
                    RunPageView = SORTING ("Source Document", "Source No.", "Location Code");
                }
                action("Whse. Receipt Lines")
                {
                    Caption = 'Whse. Receipt Lines';
                    Image = ReceiptLines;
                    RunObject = Page "Whse. Receipt Lines";
                    RunPageLink = "Source Type" = CONST (39),
                                  "Source Subtype" = FIELD ("Document Type"),
                                  "Source No." = FIELD ("No.");
                    RunPageView = SORTING ("Source Type", "Source Subtype", "Source No.", "Source Line No.");
                }
                separator(Action182)
                {
                }
                group("Dr&op Shipment")
                {
                    Caption = 'Dr&op Shipment';
                    Image = Delivery;
                    action("Get &Sales Order")
                    {
                        Caption = 'Get &Sales Order';
                        Image = "Order";
                        RunObject = Codeunit "Purch.-Get Drop Shpt.";
                    }
                }
                group("Speci&al Order")
                {
                    Caption = 'Speci&al Order';
                    Image = SpecialOrder;
                    action(Action228)
                    {
                        AccessByPermission = TableData "Sales Shipment Header" = R;
                        Caption = 'Get &Sales Order';
                        Image = "Order";
                    }
                }
            }
        }
        area(processing)
        {
            group(Approval)
            {
                Caption = 'Approval';
                action(Approve)
                {
                    Caption = 'Approve';
                    Image = Approve;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    Visible = OpenApprovalEntriesExistForCurrUser;
                }
                action(Reject)
                {
                    Caption = 'Reject';
                    Image = Reject;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    Visible = OpenApprovalEntriesExistForCurrUser;
                }
                action(Delegate)
                {
                    Caption = 'Delegate';
                    Image = Delegate;
                    Promoted = true;
                    PromotedCategory = Category4;
                    Visible = OpenApprovalEntriesExistForCurrUser;
                }
                action(Comment)
                {
                    Caption = 'Comments';
                    Image = ViewComments;
                    Promoted = true;
                    PromotedCategory = Category4;
                    RunObject = Page "Approval Comments";
                    RunPageLink = "Table ID" = CONST (38),
                                  "Document Type" = FIELD ("Document Type"),
                                  "Document No." = FIELD ("No.");
                    Visible = OpenApprovalEntriesExistForCurrUser;
                }
            }
            group(Action13)
            {
                Caption = 'Release';
                Image = ReleaseDoc;
                separator(Action73)
                {
                }
                action(Release)
                {
                    Caption = 'Re&lease';
                    Image = ReleaseDoc;
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortCutKey = 'Ctrl+F9';
                }
                action(Reopen)
                {
                    Caption = 'Re&open';
                    Image = ReOpen;
                }
                separator(Action611)
                {
                }
            }
            group("F&unctions")
            {
                Caption = 'F&unctions';
                Image = "Action";
                action(CalculateInvoiceDiscount)
                {
                    AccessByPermission = TableData "Vendor Invoice Disc." = R;
                    Caption = 'Calculate &Invoice Discount';
                    Image = CalculateInvoiceDiscount;
                }
                separator(Action190)
                {
                }
                action("Get St&d. Vend. Purchase Codes")
                {
                    Caption = 'Get St&d. Vend. Purchase Codes';
                    Ellipsis = true;
                    Image = VendorCode;
                }
                separator(Action75)
                {
                }
                action(CopyDocument)
                {
                    Caption = 'Copy Document';
                    Ellipsis = true;
                    Image = CopyDocument;
                    Promoted = true;
                    PromotedCategory = Process;
                }
                action("Move Negative Lines")
                {
                    Caption = 'Move Negative Lines';
                    Ellipsis = true;
                    Image = MoveNegativeLines;
                }
                action("Calculate Standard Landed Cost")
                {
                }
                action("Calculate Actual Landed Cost")
                {
                }
                group(Action225)
                {
                    Caption = 'Dr&op Shipment';
                    Image = Delivery;
                    action(Action184)
                    {
                        Caption = 'Get &Sales Order';
                        Image = "Order";
                        RunObject = Codeunit "Purch.-Get Drop Shpt.";
                    }
                }
                group(Action186)
                {
                    Caption = 'Speci&al Order';
                    Image = SpecialOrder;
                    action(Action187)
                    {
                        AccessByPermission = TableData "Sales Shipment Header" = R;
                        Caption = 'Get &Sales Order';
                        Image = "Order";
                    }
                }
                action("Archive Document")
                {
                    Caption = 'Archi&ve Document';
                    Image = Archive;
                }
                action("Send IC Purchase Order")
                {
                    AccessByPermission = TableData "IC G/L Account" = R;
                    Caption = 'Send IC Purchase Order';
                    Image = IntercompanyOrder;
                }
                separator(Action189)
                {
                }
                group(IncomingDocument)
                {
                    Caption = 'Incoming Document';
                    Image = Documents;
                    action(IncomingDocCard)
                    {
                        Caption = 'View Incoming Document';
                        Enabled = HasIncomingDocument;
                        Image = ViewOrder;
                        //The property 'ToolTip' cannot be empty.
                        //ToolTip = '';
                    }
                    action(SelectIncomingDoc)
                    {
                        AccessByPermission = TableData "Incoming Document" = R;
                        Caption = 'Select Incoming Document';
                        Image = SelectLineToApply;
                        //The property 'ToolTip' cannot be empty.
                        //ToolTip = '';
                    }
                    action(IncomingDocAttachFile)
                    {
                        Caption = 'Create Incoming Document from File';
                        Ellipsis = true;
                        Enabled = NOT HasIncomingDocument;
                        Image = Attach;
                        //The property 'ToolTip' cannot be empty.
                        //ToolTip = '';
                    }
                    action(RemoveIncomingDoc)
                    {
                        Caption = 'Remove Incoming Document';
                        Enabled = HasIncomingDocument;
                        Image = RemoveLine;
                        //The property 'ToolTip' cannot be empty.
                        //ToolTip = '';
                    }
                }
            }
            group("Request Approval")
            {
                Caption = 'Request Approval';
                action(SendApprovalRequest)
                {
                    Caption = 'Send A&pproval Request';
                    Enabled = NOT OpenApprovalEntriesExist;
                    Image = SendApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category9;
                }
                action(ApprovalsList)
                {
                }
                action(CancelApprovalRequest)
                {
                    Caption = 'Cancel Approval Re&quest';
                    Enabled = OpenApprovalEntriesExist;
                    Image = Cancel;
                    Promoted = true;
                    PromotedCategory = Category9;
                }
            }
            group(Action17)
            {
                Caption = 'Warehouse';
                Image = Warehouse;
                action("Create &Whse. Receipt")
                {
                    AccessByPermission = TableData "Warehouse Receipt Header" = R;
                    Caption = 'Create &Whse. Receipt';
                    Image = NewReceipt;
                }
                action("Create Inventor&y Put-away/Pick")
                {
                    AccessByPermission = TableData "Posted Invt. Put-away Header" = R;
                    Caption = 'Create Inventor&y Put-away/Pick';
                    Ellipsis = true;
                    Image = CreateInventoryPickup;
                    Promoted = true;
                    PromotedCategory = Process;
                }
                separator(Action74)
                {
                }
            }
            group("P&osting")
            {
                Caption = 'P&osting';
                Image = Post;
                action(Post)
                {
                    Caption = 'P&ost';
                    Ellipsis = true;
                    Image = PostOrder;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'F9';
                }
                action(Preview)
                {
                    Caption = 'Preview Posting';
                    Image = ViewPostedOrder;
                }
                action("Post and &Print")
                {
                    Caption = 'Post and &Print';
                    Ellipsis = true;
                    Image = PostPrint;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'Shift+F9';
                }
                action("Test Report")
                {
                    Caption = 'Test Report';
                    Ellipsis = true;
                    Image = TestReport;
                }
                action("Post &Batch")
                {
                    Caption = 'Post &Batch';
                    Ellipsis = true;
                    Image = PostBatch;
                }
                action("Remove From Job Queue")
                {
                    Caption = 'Remove From Job Queue';
                    Image = RemoveLine;
                    Visible = JobQueueVisible;
                }
                separator(Action201)
                {
                }
                group("Prepa&yment")
                {
                    Caption = 'Prepa&yment';
                    Image = Prepayment;
                    action("Prepayment Test &Report")
                    {
                        Caption = 'Prepayment Test &Report';
                        Ellipsis = true;
                        Image = PrepaymentSimulation;
                    }
                    action(PostPrepaymentInvoice)
                    {
                        Caption = 'Post Prepayment &Invoice';
                        Ellipsis = true;
                        Image = PrepaymentPost;
                    }
                    action("Post and Print Prepmt. Invoic&e")
                    {
                        Caption = 'Post and Print Prepmt. Invoic&e';
                        Ellipsis = true;
                        Image = PrepaymentPostPrint;
                    }
                    action(PostPrepaymentCreditMemo)
                    {
                        Caption = 'Post Prepayment &Credit Memo';
                        Ellipsis = true;
                        Image = PrepaymentPost;
                    }
                    action("Post and Print Prepmt. Cr. Mem&o")
                    {
                        Caption = 'Post and Print Prepmt. Cr. Mem&o';
                        Ellipsis = true;
                        Image = PrepaymentPostPrint;
                    }
                }
            }
            group(Print)
            {
                Caption = 'Print';
                Image = Print;
                action("&Print")
                {
                    Caption = '&Print';
                    Ellipsis = true;
                    Image = Print;
                    Promoted = true;
                    PromotedCategory = Process;
                }
            }
        }
    }
}

