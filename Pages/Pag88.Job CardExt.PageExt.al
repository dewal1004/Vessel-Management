pageextension 50233 pageextension50233 extends "Job Card"
{
    // 
    // // on drill down trigger for lost days calc
    // CommentLine.SETCURRENTKEY("Global Dimension 1 Code","Global Dimension 2 Code",Date,
    //     "Day Lost Cause","Day Lost Location",Vessel);
    // CommentLine.SETRANGE(CommentLine."Table Name",CommentLine."Table Name"::Job);
    // CommentLine.SETFILTER(CommentLine."No.","No.");
    // IF GETFILTER("Day Lost Cause Filter") <> '' THEN
    //   CommentLine.SETFILTER(CommentLine."Day Lost Cause",GETFILTER("Day Lost Cause Filter"));
    // IF GETFILTER("Day Lost Location Filter") <> '' THEN
    //   CommentLine.SETFILTER(CommentLine."Day Lost Location",GETFILTER("Day Lost Location Filter"));
    // IF GETFILTER("Date Filter") <> '' THEN
    //   CommentLine.SETFILTER(CommentLine.Date,GETFILTER("Date Filter"));
    // IF CommentLine.FIND('-') THEN
    //   IF FORM.RUNMODAL(0,CommentLine) = ACTION::LookupOK THEN;
    layout
    {
        modify("Bill-to Customer No.")
        {
            Caption = 'Company Name';
        }
        modify("Bill-to Name")
        {

            //Unsupported feature: Property Modification (Name) on ""Bill-to Name"(Control 8)".


            //Unsupported feature: Property Modification (SourceExpr) on ""Bill-to Name"(Control 8)".


            //Unsupported feature: Property Modification (ImplicitType) on ""Bill-to Name"(Control 8)".

            Editable = true;
        }

        //Unsupported feature: Property Modification (Name) on ""Person Responsible"(Control 6)".


        //Unsupported feature: Property Modification (SourceExpr) on ""Person Responsible"(Control 6)".


        //Unsupported feature: Property Modification (ImplicitType) on ""Person Responsible"(Control 6)".

        modify(Blocked)
        {

            //Unsupported feature: Property Modification (Name) on "Blocked(Control 12)".


            //Unsupported feature: Property Modification (SourceExpr) on "Blocked(Control 12)".


            //Unsupported feature: Property Modification (ImplicitType) on "Blocked(Control 12)".

            Editable = false;
        }

        //Unsupported feature: Property Modification (Name) on "Status(Control 34)".


        //Unsupported feature: Property Modification (SourceExpr) on "Status(Control 34)".


        //Unsupported feature: Property Modification (ImplicitType) on "Status(Control 34)".


        //Unsupported feature: Property Modification (Name) on ""Starting Date"(Control 20)".


        //Unsupported feature: Property Modification (SourceExpr) on ""Starting Date"(Control 20)".


        //Unsupported feature: Property Modification (ImplicitType) on ""Starting Date"(Control 20)".


        //Unsupported feature: Property Modification (Name) on ""Ending Date"(Control 22)".


        //Unsupported feature: Property Modification (SourceExpr) on ""Ending Date"(Control 22)".

        modify("Creation Date")
        {

            //Unsupported feature: Property Modification (Name) on ""Creation Date"(Control 14)".


            //Unsupported feature: Property Modification (SourceExpr) on ""Creation Date"(Control 14)".

            Caption = 'ETA';
            Importance = Promoted;
        }

        //Unsupported feature: Property Deletion (Importance) on ""Bill-to Name"(Control 8)".

        modify("Bill-to Address")
        {
            Visible = false;
        }
        modify("Bill-to Address 2")
        {
            Visible = false;
        }
        modify(Control56)
        {
            Visible = false;
        }
        modify("Bill-to Post Code")
        {
            Visible = false;
        }
        modify("Bill-to City")
        {
            Visible = false;
        }
        modify("Bill-to Country/Region Code")
        {
            Visible = false;
        }
        modify("Bill-to Contact")
        {
            Visible = false;
        }

        //Unsupported feature: Property Deletion (Importance) on ""Person Responsible"(Control 6)".

        modify("Last Date Modified")
        {
            Visible = false;
        }
        modify("Project Manager")
        {
            Visible = false;
        }
        modify(JobTaskLines)
        {
            Visible = false;
        }

        //Unsupported feature: Property Deletion (Importance) on "Status(Control 34)".

        modify("Job Posting Group")
        {
            Visible = false;
        }

        //Unsupported feature: Property Deletion (Importance) on ""Starting Date"(Control 20)".

        modify(Control1900000007)
        {
            Visible = false;
        }
        addafter("No.")
        {
            field(Vessel; Vessel)
            {
            }
            field("Voyage No."; "Voyage No.")
            {
            }
        }
        addafter(Status)
        {
            field(Status; Status)
            {
                Importance = Promoted;
                OptionCaption = 'Budget,Preparation,Voyage Start,Close Job Card';
            }
        }
        addafter("Starting Date")
        {
            field("Person Responsible"; "Person Responsible")
            {
                Importance = Promoted;
            }
        }
        addafter(Blocked)
        {
            field("No. of Deck Hands"; "No. of Deck Hands")
            {
            }
        }
        addfirst(Posting)
        {
            field("Job Posting Group"; "Job Posting Group")
            {
            }
            field(Control170; "Lost Days")
            {
            }
            field("Fuel Consumed"; "Fuel Consumed")
            {
            }
            field("Fuel Days"; "Fuel Days")
            {
            }
            field("Fuel Average"; "Fuel Average")
            {
            }
            field("Global Dimension 2 Code"; "Global Dimension 2 Code")
            {
            }
        }
        addfirst(Duration)
        {
            field("Creation Date"; "Creation Date")
            {
            }
            field("Deductible Lost Days"; "Deductible Lost Days")
            {
            }
            field("Cycle Day (Manual)"; "Cycle Day (Manual)")
            {
            }
            field("Fishing Day (Manual)"; "Fishing Day (Manual)")
            {
            }
            field("Lost At Sea (Manual)"; "Lost At Sea (Manual)")
            {
            }
            field("Port Day (Manual)"; "Port Day (Manual)")
            {
            }
            field("Price Group Code"; "Price Group Code")
            {
            }
        }
        addafter(Duration)
        {
            group(Incentive)
            {
                Caption = 'Incentive';
                field(Points; Points)
                {
                }
                field("Incentive Points Determinant"; "Incentive Points Determinant")
                {
                }
                field("Incentive Rate"; "Incentive Rate")
                {
                }
                field("Incentive (Pt. Based)"; "Incentive (Pt. Based)")
                {
                }
                field("Total Incentive"; "Total Incentive")
                {
                }
                field("Add/Ded. Crew"; "Add/Ded. Crew")
                {
                }
                field("Net Incentive"; "Net Incentive")
                {
                }
                field("Incentive (Hook Fish)"; "Incentive (Hook Fish)")
                {
                }
                field("Points Actual"; "Points Actual")
                {
                }
                field("Incentive Pts Determt Actual"; "Incentive Pts Determt Actual")
                {
                }
                field("Incentive Rate Actual"; "Incentive Rate Actual")
                {
                }
                field("Incentive (Pt. Based) Actual"; "Incentive (Pt. Based) Actual")
                {
                }
                field("Total Incentive Actual"; "Total Incentive Actual")
                {
                }
                field("Deductible Lost Days (Incentiv"; "Deductible Lost Days (Incentiv")
                {
                }
                field("Net Incentive Actual"; "Net Incentive Actual")
                {
                }
                field("Bill-to Address"; "Bill-to Address")
                {
                    ApplicationArea = Jobs;
                    Importance = Additional;
                    QuickEntry = false;
                    ToolTip = 'Specifies the address of the customer to whom you will send the invoice.';
                }
                field("Bill-to Address 2"; "Bill-to Address 2")
                {
                    ApplicationArea = Jobs;
                    Importance = Additional;
                    QuickEntry = false;
                    ToolTip = 'Specifies an additional line of the address.';
                }
                group(Control560)
                {
                    ShowCaption = false;
                    Visible = IsCountyVisible;
                }
            }
        }
        addafter("Bill-to Name")
        {
            field("Bill-to Post Code"; "Bill-to Post Code")
            {
                ApplicationArea = Jobs;
                Importance = Additional;
                QuickEntry = false;
                ToolTip = 'Specifies the postal code of the customer who pays for the job.';
            }
            field("Bill-to City"; "Bill-to City")
            {
                ApplicationArea = Jobs;
                Importance = Additional;
                QuickEntry = false;
                ToolTip = 'Specifies the city of the address.';
            }
            field("Bill-to Country/Region Code"; "Bill-to Country/Region Code")
            {
                ApplicationArea = Jobs;
                Importance = Additional;
                QuickEntry = false;
                ToolTip = 'Specifies the country/region code of the customer''s billing address.';
            }
            field("Bill-to Contact"; "Bill-to Contact")
            {
                ApplicationArea = Jobs;
                Importance = Additional;
                ToolTip = 'Specifies the name of the contact person at the customer who pays for the job.';
            }
            field("Last Date Modified"; "Last Date Modified")
            {
                ApplicationArea = Jobs;
                ToolTip = 'Specifies when the job card was last modified.';
            }
            field("Project Manager"; "Project Manager")
            {
                ApplicationArea = Jobs;
                ToolTip = 'Specifies the person who is assigned to manage the job.';
                Visible = JobSimplificationAvailable;
            }
            part(JobTaskLines; "Job Task Lines Subform")
            {
                ApplicationArea = Jobs;
                Caption = 'Tasks';
                SubPageLink = "Job No." = FIELD("No.");
                SubPageView = SORTING("Job Task No.")
                              ORDER(Ascending);
            }
        }
        addafter(Posted)
        {
            field("Ves Age"; "Ves Age")
            {
            }
            field("Nxt Ovh"; "Nxt Ovh")
            {
            }
            field("Lst Ovh"; "Lst Ovh")
            {
            }
            field("Nxt Ddk"; "Nxt Ddk")
            {
            }
            field("Brnd Pk"; "Brnd Pk")
            {
            }
            field("Inner P"; "Inner P")
            {
            }
            field(Grades; Grades)
            {
            }
            field(xx1; xx1)
            {
            }
            field(Deratg; Deratg)
            {
            }
            field("Crab CW"; "Crab CW")
            {
            }
            field("WT GL/W"; "WT GL/W")
            {
            }
            field("Rad Tel"; "Rad Tel")
            {
            }
            field("R Flare"; "R Flare")
            {
            }
            field("Str Lic"; "Str Lic")
            {
            }
            field("Life Rf"; "Life Rf")
            {
            }
            field("Fsh Ins"; "Fsh Ins")
            {
            }
            field("Fsh Dst"; "Fsh Dst")
            {
            }
            field("Ins Sur"; "Ins Sur")
            {
            }
            field("Dst Sur"; "Dst Sur")
            {
            }
            field("Pow Ext"; "Pow Ext")
            {
            }
            field("Fom Ext"; "Fom Ext")
            {
            }
            field("CO2 Ext"; "CO2 Ext")
            {
            }
            field(Parchut; Parchut)
            {
            }
            field("E.U. No"; "E.U. No")
            {
            }
            field(NoCatchExist; NoCatchExist)
            {
            }
            field("Gen. Product PG Filter"; "Gen. Product PG Filter")
            {
            }
            field(AvgPtSortBay; AvgPtSortBay)
            {
            }
            field("Comsumed Value"; "Comsumed Value")
            {
            }
            field("Product Quantity"; "Product Quantity")
            {
            }
            field("Kilo Actual"; "Kilo Actual")
            {
            }
            field(Checked; Checked)
            {
            }
            field("Revenue per Sea Day"; "Revenue per Sea Day")
            {
            }
        }
        moveafter("Bill-to Customer No."; "Person Responsible")
        moveafter("Fishing Country Code"; "Search Description")
        moveafter("Search Description"; Status)
        moveafter("Voyage Ended"; "Ending Date")
        moveafter(ETA; "Starting Date")
        moveafter("Sea Days"; Blocked)
        moveafter(Posting; "WIP Method")
        moveafter("Apply Usage Link"; "% of Overdue Planning Lines")
        moveafter("% of Overdue Planning Lines"; "% Completed")
        moveafter("% Invoiced"; Duration)
    }
    actions
    {
        modify(JobPlanningLines)
        {
            Visible = false;
        }
        modify("Plan&ning")
        {
            Visible = false;
        }
        modify("Resource &Allocated per Job")
        {

            //Unsupported feature: Property Modification (RunObject) on ""Resource &Allocated per Job"(Action 65)".


            //Unsupported feature: Property Modification (Image) on ""Resource &Allocated per Job"(Action 65)".

            Promoted = true;
        }
        modify(ActionContainer1900000004)
        {

            //Unsupported feature: Property Modification (Name) on "ActionContainer1900000004(Action 1900000004)".

            Caption = '   Operations';
        }

        //Unsupported feature: Property Modification (Level) on ""Copy Job Tasks &from..."(Action 31)".

        modify("Copy Job Tasks &to...")
        {

            //Unsupported feature: Property Modification (Level) on ""Copy Job Tasks &to..."(Action 27)".


            //Unsupported feature: Property Modification (Name) on ""Copy Job Tasks &to..."(Action 27)".

            Caption = 'Job - Transaction Detail 2';

            //Unsupported feature: Property Modification (Image) on ""Copy Job Tasks &to..."(Action 27)".


            //Unsupported feature: Property Insertion (RunObject) on ""Copy Job Tasks &to..."(Action 27)".

        }
        modify(Action26)
        {

            //Unsupported feature: Property Modification (ActionType) on "Action26(Action 26)".


            //Unsupported feature: Property Modification (Name) on "Action26(Action 26)".

            Caption = 'Skipper/Vessel Performance';

            //Unsupported feature: Property Modification (Image) on "Action26(Action 26)".


            //Unsupported feature: Property Insertion (RunObject) on "Action26(Action 26)".

        }
        modify("<Action82>")
        {

            //Unsupported feature: Property Modification (Level) on ""<Action82>"(Action 25)".


            //Unsupported feature: Property Modification (Name) on ""<Action82>"(Action 25)".

            Caption = 'Organoleptic Report';

            //Unsupported feature: Property Modification (Image) on ""<Action82>"(Action 25)".


            //Unsupported feature: Property Insertion (RunObject) on ""<Action82>"(Action 25)".

        }

        //Unsupported feature: Property Modification (Level) on ""<Action83>"(Action 24)".


        //Unsupported feature: Property Modification (ActionType) on ""<Action83>"(Action 24)".


        //Unsupported feature: Property Modification (Name) on ""<Action83>"(Action 24)".

        modify("W&IP")
        {
            Visible = false;
        }
        modify("&Prices")
        {
            Visible = false;
        }

        //Unsupported feature: Property Deletion (Level) on "ActionContainer1900000004(Action 1900000004)".

        modify("&Copy")
        {
            Visible = false;
        }
        modify("Copy Job Tasks &to...")
        {
            Visible = false;
        }

        //Unsupported feature: Property Deletion (Ellipsis) on ""Copy Job Tasks &to..."(Action 27)".


        //Unsupported feature: Property Deletion (Promoted) on ""Copy Job Tasks &to..."(Action 27)".


        //Unsupported feature: Property Deletion (PromotedIsBig) on ""Copy Job Tasks &to..."(Action 27)".


        //Unsupported feature: Property Deletion (PromotedCategory) on ""Copy Job Tasks &to..."(Action 27)".

        modify("<Action82>")
        {
            Visible = false;
        }

        //Unsupported feature: Property Deletion (Ellipsis) on ""<Action82>"(Action 25)".

        modify("<Action83>")
        {
            Visible = false;
        }

        //Unsupported feature: Property Deletion (ShortCutKey) on ""<Action83>"(Action 24)".


        //Unsupported feature: Property Deletion (Ellipsis) on ""<Action83>"(Action 24)".


        //Unsupported feature: Property Deletion (CaptionML) on ""<Action83>"(Action 24)".


        //Unsupported feature: Property Deletion (ToolTipML) on ""<Action83>"(Action 24)".


        //Unsupported feature: Property Deletion (ApplicationArea) on ""<Action83>"(Action 24)".


        //Unsupported feature: Property Deletion (Promoted) on ""<Action83>"(Action 24)".


        //Unsupported feature: Property Deletion (PromotedIsBig) on ""<Action83>"(Action 24)".


        //Unsupported feature: Property Deletion (Image) on ""<Action83>"(Action 24)".


        //Unsupported feature: Property Deletion (PromotedCategory) on ""<Action83>"(Action 24)".

        addfirst(Navigation)
        {
            group("&Ending")
            {
                Caption = '&Ending';
                Image = ExecuteBatch;
                action("Voyage End (Consumption)")
                {
                    Caption = 'Voyage End (Consumption)';
                    Image = Apply;
                }
                action("Voyage End (Catch)")
                {
                    Caption = 'Voyage End (Catch)';
                    Image = Apply;
                }
            }
        }
        addfirst("&Job")
        {
            action("Lost Days")
            {
                Caption = 'Lost Days';
                Image = TaskList;
                Promoted = true;
                RunObject = Page "Lost Days";
                RunPageLink = "Table Name" = CONST(Job),
                              "No." = FIELD("No."),
                              Type = CONST(Narration);
            }
            action("Voyage Default Catch")
            {
                Caption = 'Voyage Default Catch';
                Image = TaskList;
                RunObject = Page "Voyage Catch Default";
                RunPageLink = "Table Name" = CONST(Job),
                              "No." = FIELD("No.");
            }
            action("Register Catch")
            {
                Caption = 'Register Catch';
                Image = TaskList;
                RunObject = Page "Recurring Job Jnl.";
            }
            separator(Action38)
            {
            }
        }
        addfirst("Plan&ning")
        {
            action("Job Budget")
            {
                Caption = 'Job Budget';
                Visible = false;
            }
        }
        addfirst(Processing)
        {
            action("Organoleptic Analysis")
            {
                Caption = 'Organoleptic Analysis';
                Image = AnalysisView;
                Promoted = true;
                RunObject = Page "Organoleptic Sheet";
                RunPageLink = "Table Name" = CONST(Job),
                              "No." = FIELD("No."),
                              Type = CONST(Organoleptic);
            }
            action("Stock on Board")
            {
                Caption = 'stock on board';
                Image = Period;
                Promoted = true;
                RunObject = Page "Daily B/Up by Loc/Ves PGrp";
            }
        }
        addfirst(Reporting)
        {
            action("Points Summary")
            {
                Caption = 'Points Summary';
                Image = "Report";
                //*** RunObject = Report "Points Summary VJ";
            }
            action("New Daily Points")
            {
                Caption = 'New Daily Points';
                Image = "Report";
                //*** RunObject = Report "New Daily Points Report Fast";
            }
            action("Consolidated Narration")
            {
                Caption = 'Consolidated Narration';
                Image = "Report";
                //*** RunObject = Report "Consolidated Narration_";
            }
        }
        addafter("<Action83>")
        {
            action("Daily BreakUp by Vess Summary")
            {
                Caption = 'Daily BreakUp by Vess Summary';
                Image = "Report";
                //*** RunObject = Report "Daily BreakUp by Vess Summary";
            }
            action("Daily BreakUp by Vessel Rep 1")
            {
                Caption = 'Daily BreakUp by Vessel Rep 1';
                Image = "Report";
                //*** RunObject = Report "Daily BreakUp by Vessel Rep 1";
            }
            action("Daily BreakUp by Vessel Rep 2")
            {
                Caption = 'Daily BreakUp by Vessel Rep 2';
                Image = "Report";
                //*** RunObject = Report "Daily BreakUp by Vessel Rep 2";
            }
            action("Daily BreakUp by Vessel Rep 3")
            {
                Caption = 'Daily BreakUp by Vessel Rep 3';
                Image = "Report";
                //*** RunObject = Report "Daily BreakUp by Vessel Rep 3";
            }
            action("Daily BreakUp by Vessel Rep 4")
            {
                Caption = 'Daily BreakUp by Vessel Rep 4';
                Image = "Report";
                //*** RunObject = Report "Daily BreakUp by Vessel Rep 4";
            }
            action("Vessel Daily Log")
            {
                Caption = 'Vessel Daily Log';
                Image = "Report";
                //*** RunObject = Report "Vessel Daily Log";
            }
        }
        moveafter("   Operations"; ActionContainer1900000006)
        moveafter(ActionContainer1900000006; "<Action83>")
        moveafter(Action24; "<Action82>")
        moveafter("Organoleptic Report"; Action26)
    }


    //Unsupported feature: Property Modification (Id) on "FormatAddress(Variable 1003)".

    //var
    //>>>> ORIGINAL VALUE:
    //FormatAddress : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FormatAddress : 1006;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "IsCountyVisible(Variable 1002)".

    //var
    //>>>> ORIGINAL VALUE:
    //IsCountyVisible : 1002;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsCountyVisible : 1007;
    //Variable type has not been exported.

    var
        JobSetup: Record "Jobs Setup";

    var
        IncentiveLookUp: Record "Payroll-Lookup Lines.";
        "Incentive Days": Decimal;
        "---": Integer;
        Job: Record Job;
        JobTask: Record "Job Task";


    //Unsupported feature: Code Insertion on "OnAfterGetRecord".

    //trigger OnAfterGetRecord()
    //begin
    /*

    SetRange("No.");
    "Incentive Days":="Sea Days"-"Deductible Lost Days (Incentiv";
    if JobSetup.Get then
      if "Incentive Days">0 then
        "Incentive Points Determinant":=Points*(JobSetup."Standard Sea Days"/"Incentive Days");

    //IncentiveLookUp.GET;
    IncentiveLookUp.SetRange(IncentiveLookUp.TableId,JobSetup."Incentive Rate Code"+"Fishing Country Code");
    IncentiveLookUp.SetRange(IncentiveLookUp."Lower Amount",0,"Incentive Points Determinant");
    IncentiveLookUp.SetRange(IncentiveLookUp."Upper Amount","Incentive Points Determinant",999999);
    if IncentiveLookUp.Find('-') then
      Validate("Incentive Rate",IncentiveLookUp."Extract Amount");

    Validate("Incentive (Pt. Based)","Incentive Rate"*Points);
    //"Incentive (Hook Fish)":= "Incentive (Hook Fish)"/2;  //Incentive does not
    Validate("Total Incentive","Incentive (Pt. Based)"+"Incentive (Hook Fish)");
    Validate("Net Incentive","Total Incentive"+"Add/Ded. Crew");

    //Actual
    //CALCFIELDS("Points Actual"); //blocked by santus
    {"Points Actual" := Job.PointsActual("No.",GETFILTER("Posting Date Filter"),GETFILTER("Phase Filter")
      ,GETFILTER("Task Filter"),GETFILTER("Step Filter"));} //Error
    if JobSetup.Get then
      if "Incentive Days">0 then
       "Incentive Pts Determt Actual":="Points Actual"*(JobSetup."Standard Sea Days"/"Incentive Days");

    //IncentiveLookUp.GET;
    IncentiveLookUp.SetRange(IncentiveLookUp.TableId,JobSetup."Incentive Rate Code"+"Fishing Country Code");
    IncentiveLookUp.SetRange(IncentiveLookUp."Lower Amount",0,"Incentive Pts Determt Actual");
    IncentiveLookUp.SetRange(IncentiveLookUp."Upper Amount","Incentive Pts Determt Actual",999999);
    if IncentiveLookUp.Find('-') then
      Validate("Incentive Rate Actual",IncentiveLookUp."Extract Amount");

    Validate("Incentive (Pt. Based) Actual","Incentive Rate Actual"*"Points Actual");
    Validate("Total Incentive Actual","Incentive (Pt. Based) Actual"+"Incentive (Hook Fish)");
    Validate("Net Incentive Actual","Total Incentive Actual"+"Add/Ded. Crew");
    */
    //end;
}

