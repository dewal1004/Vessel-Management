page 50028 "Appraisal Entry"
{
    Caption = 'Appraisal Entry';
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = "Sales Header";
    SourceTableView = WHERE ("Document Type" = FILTER ("Return Order"));

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
                field("Appraisal Selection"; "Appraisal Selection")
                {
                }
                field("Sell-to Customer No."; "Sell-to Customer No.")
                {
                    Caption = 'Appraisee No.';
                }
                field("Sell-to Customer Name"; "Sell-to Customer Name")
                {
                    Caption = 'Name';
                }
                field("Sell-to Address"; "Sell-to Address")
                {
                    Caption = 'Address';
                }
                field("Sell-to Address 2"; "Sell-to Address 2")
                {
                    Caption = 'Address 2';
                }
                field("Sell-to Post Code"; "Sell-to Post Code")
                {
                    Caption = 'Post Code/City';
                }
                field("Sell-to City"; "Sell-to City")
                {
                }
                field("Sell-to Contact"; "Sell-to Contact")
                {
                    Caption = 'Contact';
                }
                field("Contr. Code/Postn.  Applied"; "Contr. Code/Postn.  Applied")
                {
                }
                field("Posting Date"; "Posting Date")
                {
                }
                field("Document Date"; "Document Date")
                {
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                }
                field(Status; Status)
                {
                }
                field("Posting No. Series"; "Posting No. Series")
                {
                }
            }
            part(SalesLines; "Appraisal Entry Subform.")
            {
                SubPageLink = "Document No." = FIELD ("No.");
            }
            group(Interview)
            {
                Caption = 'Interview';
                label(Control1000000016)
                {
                    CaptionClass = Text19064607;
                    ShowCaption = false;
                }
                label(Control1000000021)
                {
                    CaptionClass = Text19060600;
                    ShowCaption = false;
                }
                field("Skill Score"; "Skill Score")
                {
                }
                field("Skill Total"; "Skill Total")
                {
                }
                field("Performance Score"; "Performance Score")
                {
                }
                label(Control1000000023)
                {
                    CaptionClass = Text19012021;
                    ShowCaption = false;
                }
                field(Cgrade; Cgrade)
                {
                    Caption = 'Current';
                    Editable = false;
                }
                field(Rgrade; Rgrade)
                {
                    Caption = 'Recommended';
                }
                field(Agrade; Agrade)
                {
                    Caption = 'Approved';
                }
                label(Control1000000022)
                {
                    CaptionClass = Text19068379;
                    ShowCaption = false;
                }
                field("Skill Percentage"; "Skill Percentage")
                {
                    Editable = false;
                }
                field("Performance Total"; "Performance Total")
                {
                }
                field("Performance Percentage"; "Performance Percentage")
                {
                    Editable = false;
                }
                field("Total Percentage"; "Total Percentage")
                {
                    Editable = false;
                }
                label(Control1000000014)
                {
                    CaptionClass = Text19015031;
                    ShowCaption = false;
                }
                label(Control1000000019)
                {
                    CaptionClass = Text19080001;
                    ShowCaption = false;
                }
                label(Control1000000020)
                {
                    CaptionClass = Text19080002;
                    ShowCaption = false;
                }
                label(Control1000000024)
                {
                    CaptionClass = Text19032492;
                    ShowCaption = false;
                }
                label(Control1000000031)
                {
                    CaptionClass = Text19055220;
                    ShowCaption = false;
                }
                field(Cstep; Cstep)
                {
                    Editable = false;
                }
                field(Cedamount; Cedamount)
                {
                    Editable = false;
                }
                field(Rstep; Rstep)
                {
                }
                field(Redamount; Redamount)
                {
                }
                field(Astep; Astep)
                {
                }
                label(Control1000000042)
                {
                    CaptionClass = Text19000744;
                    ShowCaption = false;
                }
                field(Date1; Date1)
                {
                }
                field(Date2; Date2)
                {
                }
                field(Date3; Date3)
                {
                }
                field(Date4; Date4)
                {
                }
                field(Date5; Date5)
                {
                }
                field(Date6; Date6)
                {
                }
                field(Date7; Date7)
                {
                }
                label(Control1000000039)
                {
                    CaptionClass = Text19015056;
                    ShowCaption = false;
                }
                field(Date8; Date8)
                {
                }
                label(Control1000000040)
                {
                    CaptionClass = Text19080003;
                    ShowCaption = false;
                }
                field(Aedamount; Aedamount)
                {
                }
                label(Control1000000043)
                {
                    CaptionClass = Text19051066;
                    ShowCaption = false;
                }
                field(Skill1; Skill1)
                {
                }
                field(Skill2; Skill2)
                {
                }
                field(Date9; Date9)
                {
                }
                label(Control1000000041)
                {
                    CaptionClass = Text19080004;
                    ShowCaption = false;
                }
                label(Control1000000044)
                {
                    CaptionClass = Text19052518;
                    ShowCaption = false;
                }
                label(Control1000000046)
                {
                    CaptionClass = Text19003762;
                    ShowCaption = false;
                }
                field(Performance1; Performance1)
                {
                }
                field(Tpercent1; Tpercent1)
                {
                }
                field(Performance2; Performance2)
                {
                }
                field(Skill3; Skill3)
                {
                }
                field(Performance3; Performance3)
                {
                }
                field(Skill4; Skill4)
                {
                }
                field(Performance4; Performance4)
                {
                }
                field(Skill5; Skill5)
                {
                }
                field(Performance5; Performance5)
                {
                }
                field(Skill6; Skill6)
                {
                }
                field(Performance6; Performance6)
                {
                }
                field(Skill7; Skill7)
                {
                }
                field(Performance7; Performance7)
                {
                }
                field(Skill8; Skill8)
                {
                }
                field(Skill9; Skill9)
                {
                }
                field(Tpercent2; Tpercent2)
                {
                }
                field(Tpercent3; Tpercent3)
                {
                }
                field(Tpercent4; Tpercent4)
                {
                }
                field(Tpercent5; Tpercent5)
                {
                }
                field(Tpercent6; Tpercent6)
                {
                }
                field(Tpercent7; Tpercent7)
                {
                }
                field(Performance8; Performance8)
                {
                }
                field(Tpercent8; Tpercent8)
                {
                }
                field(Performance9; Performance9)
                {
                }
                field(Tpercent9; Tpercent9)
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Order")
            {
                Caption = 'Order';
                Visible = false;
                action(List)
                {
                    ShortCutKey = 'F5';
                }
                action(Statistics)
                {
                    Caption = 'Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortCutKey = 'F7';
                    Visible = true;
                }
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    RunObject = Page "Customer Card";
                    RunPageLink = "No." = FIELD ("Sell-to Customer No.");
                    ShortCutKey = 'Shift+F7';
                    Visible = true;
                }
                action(Action1000000007)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    RunObject = Page "Employee Card";
                    ShortCutKey = 'Shift+F7';
                }
                action("Co&mments")
                {
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    RunObject = Page "Sales Comment Sheet";
                    RunPageLink = "Document Type" = FIELD ("Document Type"),
                                  "No." = FIELD ("No.");
                }
                action("S&hipments")
                {
                    Caption = 'S&hipments';
                    RunObject = Page "Posted Sales Shipments";
                    RunPageLink = "Order No." = FIELD ("No.");
                    RunPageView = SORTING ("Order No.");
                    Visible = true;
                }
                action(Invoices)
                {
                    Caption = 'Invoices';
                    Image = Invoice;
                    RunObject = Page "Posted Sales Invoices";
                    RunPageLink = "Order No." = FIELD ("No.");
                    RunPageView = SORTING ("Order No.");
                    Visible = true;
                }
                action(Action122)
                {
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    RunObject = Page "Dimension Values";
                    Visible = true;
                }
                separator(Action120)
                {
                }
            }
            group(Line)
            {
                Caption = 'Line';
                action("Item Availability by")
                {
                }
                action(Period)
                {
                }
                action(Variant)
                {
                }
                action(Location)
                {
                }
                action("Reservation Entries")
                {
                }
                action("Select Item Substitution")
                {
                }
                action(Dimensions)
                {
                    ShortCutKey = 'Shift+Ctrl+D';
                }
                action("Item Charge &Assignment")
                {
                }
                action("Item &Tracking Lines")
                {
                }
            }
            group(Functions)
            {
                Caption = 'Functions';
                action("Calculate &Invoice Discount")
                {
                    Caption = 'Calculate &Invoice Discount';
                }
                action("E&xplode BOM")
                {
                    Caption = 'E&xplode BOM';
                }
                action("Copy Document")
                {
                    Caption = 'Copy Document';
                    Ellipsis = true;
                    Image = CopyDocument;
                    Visible = true;
                }
                action("Insert &Ext. Texts")
                {
                    Caption = 'Insert &Ext. Texts';
                }
                action("Drop Shipment")
                {
                    Caption = 'Drop Shipment';
                }
                action("Purchase &Order")
                {
                    Caption = 'Purchase &Order';
                }
                action("Special Order")
                {
                    Caption = 'Special Order';
                }
                action("&Reserve")
                {
                    Caption = '&Reserve';
                }
                action("Nonstoc&k Items")
                {
                    Caption = 'Nonstoc&k Items';
                    Enabled = true;
                    Visible = true;
                }
                action("Order &Tracking")
                {
                    Caption = 'Order &Tracking';
                }
                action(Warehouse)
                {
                    Caption = 'Warehouse';
                }
                action("Order &Promising")
                {
                    Caption = 'Order &Promising';
                    Enabled = true;
                    Visible = true;
                }
                group(Action148)
                {
                    Caption = 'Warehouse';
                    Enabled = false;
                    Visible = false;
                    action("Activity List")
                    {
                        Caption = 'Activity List';
                        Enabled = true;
                        RunObject = Page "Warehouse Activity List";
                        RunPageLink = Type = FILTER (Movement | "Invt. Put-away" | "Invt. Pick"),
                                      "No. of Lines" = FILTER (> 0),
                                      "Source Type Filter" = CONST (1),
                                      "Source Subtype Filter" = FIELD ("Document Type"),
                                      "Source No. Filter" = FIELD ("No.");
                        Visible = true;
                    }
                    action("Create Assignment")
                    {
                        Caption = 'Create Assignment';
                        Enabled = true;
                        Visible = true;
                    }
                }
                action("Re&lease")
                {
                    Caption = 'Re&lease';
                    Enabled = true;
                    Image = ReleaseDoc;
                    RunObject = Codeunit "Release Sales Document";
                    ShortCutKey = 'Ctrl+F9';
                    Visible = true;
                }
                action("Re&open")
                {
                    Caption = 'Re&open';
                    Enabled = true;
                    Image = ReOpen;
                    Visible = true;
                }
                action("Ge&nerate Appraisal Line")
                {
                    Caption = 'Ge&nerate Appraisal Line';
                }
                action("&Up-date Applicant Score")
                {
                    Caption = '&Up-date Applicant Score';
                }
            }
            group("P&osting")
            {
                Caption = 'P&osting';
                action("Test Report")
                {
                    Caption = 'Test Report';
                    Ellipsis = true;
                    Image = TestReport;
                }
                action("P&ost")
                {
                    Caption = 'P&ost';
                    Ellipsis = true;
                    Image = Post;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    RunObject = Codeunit "Sales-Post (Yes/No)";
                    ShortCutKey = 'F9';
                }
                action("Post and &Print")
                {
                    Caption = 'Post and &Print';
                    Ellipsis = true;
                    Image = PostPrint;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    RunObject = Codeunit "Sales-Post + Print";
                    ShortCutKey = 'Shift+F9';
                }
                action("Post &Batch")
                {
                    Caption = 'Post &Batch';
                    Ellipsis = true;
                    Image = PostBatch;
                }
            }
        }
    }
}

