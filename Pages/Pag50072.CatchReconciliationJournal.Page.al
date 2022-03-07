page 50072 "Catch Reconciliation Journal"
{
    AutoSplitKey = true;
    Caption = 'Job Journal';
    DataCaptionFields = "Journal Batch Name";
    DelayedInsert = true;
    PageType = Card;
    SaveValues = true;
    SourceTable = "Job Journal Line";

    layout
    {
        area(content)
        {
            field(CurrentJnlBatchName; CurrentJnlBatchName)
            {
                Caption = 'Batch Name';
                Lookup = true;
            }
            field(Cats; Category)
            {
                Caption = 'Statistics Group';
            }
            repeater(Control1)
            {
                ShowCaption = false;
                field("Posting Date"; "Posting Date")
                {
                }
                field("Document Date"; "Document Date")
                {
                    Visible = false;
                }
                field("Document No."; "Document No.")
                {
                }
                field("External Document No."; "External Document No.")
                {
                    Visible = false;
                }
                field("Job No."; "Job No.")
                {
                }
                field(Type; Type)
                {
                }
                field("No."; "No.")
                {
                }
                field(Description; Description)
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
                field("Location Code"; "Location Code")
                {
                    Visible = true;
                }
                field("Work Type Code"; "Work Type Code")
                {
                    Visible = false;
                }
                field("Phase Code"; "Phase Code")
                {
                    Visible = false;
                }
                field("Task Code"; "Task Code")
                {
                    Visible = false;
                }
                field(Catch; Catch)
                {
                    Visible = CatchVisible;
                }
                field("Stock Position Calc."; "Stock Position Calc.")
                {
                }
                field(ROB; ROB)
                {
                }
                field(Quantity; Quantity)
                {
                    Visible = QuantityVisible;
                }
                field("Unit of Measure Code"; "Unit of Measure Code")
                {
                    Visible = false;
                }
                field("Direct Unit Cost (LCY)"; "Direct Unit Cost (LCY)")
                {
                    Visible = false;
                }
                field("Unit Cost (LCY)"; "Unit Cost (LCY)")
                {
                    Visible = false;
                }
                field("Total Cost (LCY)"; "Total Cost (LCY)")
                {
                    Visible = false;
                }
                field("Unit Price (LCY)"; "Unit Price (LCY)")
                {
                    Visible = false;
                }
                field("Total Price (LCY)"; "Total Price (LCY)")
                {
                    Visible = false;
                }
                field("Resource Group No."; "Resource Group No.")
                {
                    Visible = false;
                }
                field("Customer Price Group"; "Customer Price Group")
                {
                    Visible = false;
                }
                field(Chargeable; Chargeable)
                {
                    Visible = false;
                }
                field("Applies-to Entry"; "Applies-to Entry")
                {
                    Visible = false;
                }
                field("Transaction Type"; "Transaction Type")
                {
                    Visible = false;
                }
                field("Transport Method"; "Transport Method")
                {
                    Visible = false;
                }
                field("Country/Region Code"; "Country/Region Code")
                {
                    Visible = false;
                }
                field("Statistics Group"; "Statistics Group")
                {
                }
            }
            group(Control73)
            {
                ShowCaption = false;
                field(JobDescription; JobDescription)
                {
                    Caption = 'Job Description';
                    Editable = false;
                }
                field(AccName; AccName)
                {
                    Caption = 'Account Name';
                    Editable = false;
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
                action(Dimensions)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortCutKey = 'Shift+Ctrl+D';
                    Visible = false;
                }
            }
            group("&Job")
            {
                Caption = '&Job';
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    RunObject = Page "Job Card";
                    RunPageLink = "No." = FIELD ("Job No.");
                    ShortCutKey = 'Shift+F7';
                }
                action("Ledger E&ntries")
                {
                    Caption = 'Ledger E&ntries';
                    RunObject = Page "Job Ledger Entries";
                    RunPageLink = "Job No." = FIELD ("Job No.");
                    RunPageView = SORTING ("Job No.", "Posting Date");
                    ShortCutKey = 'Ctrl+F7';
                    Visible = false;
                }
            }
        }
        area(processing)
        {
            group("F&unctions")
            {
                Caption = 'F&unctions';
                action("Fish Caught/Reconciliation")
                {
                    Caption = 'Fish Caught/Reconciliation';
                }
                separator(Action1000000006)
                {
                }
                action("Get &Phase/Task/Step")
                {
                    Caption = 'Get &Phase/Task/Step';
                    Ellipsis = true;
                    Visible = false;
                }
            }
            group("P&osting")
            {
                Caption = 'P&osting';
                action(Reconcile)
                {
                    Caption = 'Reconcile';
                    Image = Reconcile;
                    ShortCutKey = 'Ctrl+F11';
                    Visible = false;
                }
                action("Test Report")
                {
                    Caption = 'Test Report';
                    Ellipsis = true;
                    Image = TestReport;
                    Visible = False;
                }
                action("P&ost")
                {
                    Caption = 'P&ost';
                    Image = Post;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'F9';
                    Visible = false;
                }
                action("Post and &Print")
                {
                    Caption = 'Post and &Print';
                    Image = PostPrint;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ShortCutKey = 'Shift+F9';
                    Visible = false;
                }
            }
        }
    }
}

