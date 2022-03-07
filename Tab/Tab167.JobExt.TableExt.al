tableextension 50242 tableextension50242 extends Job
{
    fields
    {
        modify("Bill-to Customer No.")
        {
            TableRelation = IF (Vessel = FILTER (<> '')) Customer WHERE ("Operation Type" = CONST (true))
            ELSE
            IF (Vessel = FILTER ('')) Customer WHERE ("Operation Type" = CONST (false));
        }
        modify("Starting Date")
        {
            Caption = 'ETD';

            //Unsupported feature: Property Insertion (FieldClass) on ""Starting Date"(Field 13)".

        }
        modify("Ending Date")
        {
            Caption = 'ETA';
        }
        modify("Person Responsible")
        {
            TableRelation = IF (Vessel = FILTER (<> '')) Resource WHERE ("Resource Group No." = CONST ('SKIP'))
            ELSE
            IF (Vessel = FILTER ('')) Resource WHERE ("Resource Group No." = CONST ('CENG'));
            Caption = 'Skipper';
        }

        //Unsupported feature: Property Insertion (NotBlank) on ""Global Dimension 2 Code"(Field 22)".


        //Unsupported feature: Code Modification on ""No."(Field 1).OnValidate".

        //trigger "(Field 1)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "No." <> xRec."No." then begin
          JobsSetup.Get;
          NoSeriesMgt.TestManual(JobsSetup."Job Nos.");
          "No. Series" := '';
        end;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..5
        //Status := Status::Planning;
        */
        //end;


        //Unsupported feature: Code Modification on ""Starting Date"(Field 13).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckDate;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
         if ("Ending Date"<>0D) and ("Starting Date"<>0D) then
         "Sea Days":="Ending Date"-"Starting Date";
         if Vessel<>'' then
          if Loc.Get(Vessel) then
          begin
            Loc.ETD:="Starting Date";
            Loc.ETA:="Ending Date";
            Loc.Modify;
          end;

         CheckDate;
        */
        //end;


        //Unsupported feature: Code Modification on ""Ending Date"(Field 14).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CheckDate;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*

        if ("Ending Date"<>0D) and ("Starting Date"<>0D) then
        "Sea Days":="Ending Date"-"Starting Date";
        if Vessel<>'' then
          if Loc.Get(Vessel) then
          begin
            Loc.ETD:="Starting Date";
            Loc.ETA:="Ending Date";
            Loc.Modify;
          end;
        CheckDate;
        */
        //end;


        //Unsupported feature: Code Modification on "Status(Field 19).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if xRec.Status <> Status then begin
          if Status = Status::Completed then
            Validate(Complete,true);
          if xRec.Status = xRec.Status::Completed then
            if DIALOG.Confirm(StatusChangeQst) then
              Validate(Complete,false)
            else
              Status := xRec.Status;
          Modify;
          JobPlanningLine.SetCurrentKey("Job No.");
          JobPlanningLine.SetRange("Job No.","No.");
        #12..17
            PerformAutoReserve(JobPlanningLine);
          end;
        end;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        GenSetup.Get;
        if UserId<>GenSetup.Administrator then
        begin
          if Status = xRec.Status then
           exit;

         if Status < xRec.Status then
           Error(Text001);
        end;

        #1..8
           if (Status = Status::Completed) and (CopyStr(Job."No.",1,1)='J') then
           TestField("Voyage Ended",true);
        #9..20
        */
        //end;


        //Unsupported feature: Code Insertion on ""Person Responsible"(Field 20)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*
        if "Person Responsible" = '' then
          exit;

        SetRange("Person Responsible",Res."No.");
        if Res.Get("Person Responsible") then
          Validate(Captain, Res.Name);

        JobTask.SetRange(JobTask."Job No.","No.");
        JobTask.SetRange(JobTask."Job Task No.",'temp');
        if JobTask.FindFirst then begin
          InitPlanningLines;
        end else begin
          JobTask.Init;
          JobTask."Job No." := "No.";
          JobTask."Job Task No." := 'temp';
          JobTask."Job Task Type" := JobTask."Job Task Type"::Posting;
          JobTask."Job Posting Group" := 'OPERATION';
          JobTask.Description := Description;
          JobTask.Insert(true);
          InitPlanningLines;
        end;
        */
        //end;
        field(50001; XX00; Decimal)
        {
        }
        field(50002; XX01; Decimal)
        {
           // TableRelation = "Job Ledger Entry" WHERE ("Job No." = FIELD (XX01));
        }
        field(50003; XX02; Decimal)
        {
           //TableRelation = "Job Ledger Entry" WHERE ("Job No." = FIELD (XX02));
        }
        field(50137; "Task Filter"; Code[10])
        {
            Caption = 'Task Filter';
            FieldClass = FlowFilter;
            TableRelation = Task;
        }
        field(50300; Vessel; Code[10])
        {
            TableRelation = Location.Code;
        }
        field(50301; "Fishing Country Code"; Code[10])
        {
            TableRelation = "Country/Region";
        }
        field(50302; Points; Decimal)
        {
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(50303; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(50304; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(50305; "Location Filter"; Code[10])
        {
            Caption = 'Location Filter';
            FieldClass = FlowFilter;
            TableRelation = Location;
        }
        field(50306; "Bin Filter"; Code[10])
        {
            Caption = 'Bin Filter';
            FieldClass = FlowFilter;
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Filter"));
        }
        field(50307; "Variant Filter"; Code[10])
        {
            Caption = 'Variant Filter';
            FieldClass = FlowFilter;
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(50308; "Day Lost Location Filter"; Option)
        {
            FieldClass = FlowFilter;
            InitValue = SEA;
            OptionMembers = SEA,PORT;
        }
        field(50309; "Day Lost Cause Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(50310; "Fishing Area"; Code[10])
        {
            Editable = false;
        }
        field(50311; "Sea Temperature"; Code[10])
        {
            Editable = false;
        }
        field(50312; "Lost Days"; Decimal)
        {
            CalcFormula = Sum ("Comment Line"."Days Lost" WHERE ("Table Name" = CONST (Job),
                                                                "No." = FIELD ("No."),
                                                                Date = FIELD ("Date Filter"),
                                                                "Day Lost Cause" = FIELD ("Day Lost Cause Filter"),
                                                                "Day Lost Location" = FIELD ("Day Lost Location Filter")));
            DecimalPlaces = 0 : 2;
            Editable = false;
            FieldClass = FlowField;
        }
        field(50313; "Size Packed"; Code[10])
        {
            Enabled = false;
            TableRelation = "Unit of Measure" WHERE ("In Use" = CONST (true),
                                                     "Catch Code" = FILTER (<> ''));
        }
        field(50314; "Brand Packed"; Code[10])
        {
            Enabled = false;
            TableRelation = "Reason Code" WHERE ("In Use" = CONST (true),
                                                 Type = FILTER (Brands));
        }
        field(50315; "Voyage No."; Code[10])
        {
            NotBlank = true;
        }
        field(50316; "Sea Days"; Integer)
        {
            Editable = false;
        }
        field(50317; "No. of Deck Hands"; Integer)
        {
        }
        field(50318; "Voyage Sea Days"; Option)
        {
            OptionMembers = " ","40","45","60";
        }
        field(50322; "Points Sort Bay"; Decimal)
        {
            Description = 'To retain Value from calculated field points in prep for sorting the records';
        }
        field(50330; "Incentive Pts Determt Actual"; Decimal)
        {
            Description = 'Required to find the incentive point rate';
        }
        field(50331; "Incentive Rate Actual"; Decimal)
        {
        }
        field(50332; "Incentive (Pt. Based) Actual"; Decimal)
        {
        }
        field(50334; "Total Incentive Actual"; Decimal)
        {
        }
        field(50336; "Net Incentive Actual"; Decimal)
        {
        }
        field(50339; "Points Actual"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50340; "Incentive Points Determinant"; Decimal)
        {
            Description = 'Required to find the incentive point rate';
            Editable = false;
        }
        field(50341; "Incentive Rate"; Decimal)
        {
        }
        field(50342; "Incentive (Pt. Based)"; Decimal)
        {
        }
        field(50343; "Incentive (Hook Fish)"; Decimal)
        {
            CalcFormula = Sum ("Job Planning Line"."Hook Inc" WHERE ("Job No." = FIELD ("No.")));
            FieldClass = FlowField;
        }
        field(50344; "Total Incentive"; Decimal)
        {
        }
        field(50345; "Add/Ded. Crew"; Decimal)
        {
            CalcFormula = Sum ("Job Planning Line"."Add/Ded" WHERE ("Job No." = FIELD ("No.")));
            FieldClass = FlowField;
        }
        field(50346; "Net Incentive"; Decimal)
        {
        }
        field(50347; "Fom Ext"; Date)
        {
            Description = 'Foam Extinguisher';
            Editable = false;
        }
        field(50348; "Pow Ext"; Date)
        {
            Description = 'Powder Extinguisher';
            Editable = false;
        }
        field(50349; "CO2 Ext"; Date)
        {
            Description = 'CO2 Extinguisher';
            Editable = false;
        }
        field(50352; "Nxt Ovh"; Date)
        {
            Editable = false;
        }
        field(50353; "Nxt Ddk"; Date)
        {
            Editable = false;
        }
        field(50354; xx2; Date)
        {
            Editable = false;
        }
        field(50355; "Life Jacket"; Date)
        {
            Editable = false;
        }
        field(50356; "Life Buoy"; Date)
        {
            Editable = false;
        }
        field(50357; Parchut; Date)
        {
            Description = 'Parachute';
            Editable = false;
        }
        field(50358; "R Flare"; Date)
        {
            Description = 'Red Hand Flare';
            Editable = false;
        }
        field(50359; "Store Taking"; Date)
        {
            Editable = false;
        }
        field(50360; "Crew Briefing"; Date)
        {
            Editable = false;
        }
        field(50361; "Location Group"; Integer)
        {
            Editable = false;
        }
        field(50370; Captain; Code[20])
        {
            Editable = true;
        }
        field(50373; "Brnd Pk"; Code[10])
        {
            Editable = false;
        }
        field(50374; "Inner P"; Code[10])
        {
            Editable = false;
        }
        field(50375; Grades; Code[10])
        {
            Editable = false;
        }
        field(50376; "Crab CW"; Code[10])
        {
            Editable = false;
        }
        field(50377; "WT GL/W"; Code[10])
        {
            Editable = false;
        }
        field(50378; Batch; Code[10])
        {
            Editable = false;
        }
        field(50380; "E.U. No"; Code[10])
        {
            Editable = false;
        }
        field(50385; "Ves Age"; Integer)
        {
            Editable = false;
        }
        field(50390; "Lst Ovh"; Date)
        {
            Editable = false;
        }
        field(50391; "Lst Ddk"; Date)
        {
            Editable = false;
        }
        field(50392; xx1; Date)
        {
            Editable = false;
        }
        field(50393; Deratg; Date)
        {
            Description = 'Derating Certificate';
            Editable = false;
        }
        field(50394; "Rad Tel"; Date)
        {
            Description = 'Radio Telephony';
            Editable = false;
        }
        field(50395; "Str Lic"; Date)
        {
            Description = 'Storage License';
            Editable = false;
        }
        field(50396; "Life Rf"; Date)
        {
            Description = 'Life Rafts';
            Editable = false;
        }
        field(50400; "Fsh Ins"; Date)
        {
            Editable = false;
        }
        field(50410; "Fsh Dst"; Date)
        {
            Editable = false;
        }
        field(50420; "Ins Sur"; Date)
        {
            Editable = false;
        }
        field(50421; "Dst Sur"; Date)
        {
            Editable = false;
        }
        field(50450; "Voyage Ended"; Boolean)
        {
            Description = 'Ticked when a voyage end is generated';
        }
        field(50451; NoCatchExist; Boolean)
        {
            CalcFormula = Exist ("Job Ledger Entry" WHERE ("Job No." = FIELD ("No."),
                                                          "Location Code" = FIELD ("Location Filter"),
                                                          "Posting Date" = FIELD ("Date Filter"),
                                                          Type = CONST (Resource)));
            FieldClass = FlowField;
        }
        field(50460; "Gen. Product PG Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Gen. Product Posting Group";
        }
        field(50461; "Deductible Lost Days"; Decimal)
        {
            CalcFormula = Sum ("Comment Line"."Days Lost" WHERE (Deductible = CONST (true),
                                                                "Table Name" = CONST (Job),
                                                                "No." = FIELD ("No.")));
            DecimalPlaces = 0 : 2;
            Editable = false;
            FieldClass = FlowField;
        }
        field(50462; AvgPtSortBay; Decimal)
        {
        }
        field(50463; "Fuel Consumed"; Decimal)
        {
            Editable = false;
        }
        field(50464; "Fuel Days"; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Editable = false;
        }
        field(50465; "Comsumed Value"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50466; "Fuel Average"; Decimal)
        {
            Editable = false;
        }
        field(50500; "Product Quantity"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50501; "Cycle Day (Manual)"; Decimal)
        {
            DecimalPlaces = 0 : 2;
        }
        field(50502; "Fishing Day (Manual)"; Decimal)
        {
            DecimalPlaces = 0 : 2;
        }
        field(50503; "Lost At Sea (Manual)"; Decimal)
        {
            DecimalPlaces = 0 : 2;
            FieldClass = Normal;
        }
        field(50504; "Port Day (Manual)"; Decimal)
        {
            DecimalPlaces = 0 : 2;
        }
        field(50510; "Deductible Lost Days (Incentiv"; Decimal)
        {
            DecimalPlaces = 0 : 2;
            Description = 'For Incentive report Use';
        }
        field(50520; "Kilo Actual"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50521; Checked; Boolean)
        {
        }
        field(50532; "Price Group Code"; Code[10])
        {
            TableRelation = "Customer Price Group";
        }
        field(50533; "Revenue per Sea Day"; Decimal)
        {
            Description = 'Revenue per Fishing Day';
        }
        field(50534; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(50535; "Job No"; Integer)
        {
            FieldClass = Normal;
        }
    }
    keys
    {

        //Unsupported feature: Property Insertion (SumIndexFields) on ""No."(Key)".

        key(Key1; Vessel)
        {
            SumIndexFields = "Lost At Sea (Manual)", "Fishing Day (Manual)", "Port Day (Manual)";
        }
        key(Key2; "Voyage No.")
        {
        }
        key(ASLKey3; "Ending Date")
        {
        }
        key(Key4; "Points Sort Bay")
        {
        }
        key(ASLKey5; "Person Responsible")
        {
        }
        key(Key7; "Fishing Country Code", AvgPtSortBay)
        {
        }
        key(Key8; "Fishing Country Code")
        {
        }
        key(Key10; Vessel, "Voyage Ended")
        {
        }
        key(Key11; "Voyage Sea Days", Vessel)
        {
        }
        key(Key12; "Voyage Sea Days", "Revenue per Sea Day", Vessel)
        {
        }
        key(Key13; AvgPtSortBay)
        {
        }
        key(Key14; Captain, "Points Sort Bay", "Voyage Ended")
        {
            SumIndexFields = "Points Sort Bay";
        }
        key(Key15; Captain, Vessel, "Points Sort Bay")
        {
            SumIndexFields = "Points Sort Bay";
        }
    }


    //Unsupported feature: Code Insertion (VariableCollection) on "OnInsert".

    //trigger (Variable: Resource)()
    //Parameters and return type have not been exported.
    //begin
    /*
    */
    //end;


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    JobsSetup.Get;

    if "No." = '' then begin
    #4..17
    if "Job Posting Group" = '' then
      Validate("Job Posting Group",JobsSetup."Default Job Posting Group");
    Validate("WIP Posting Method",JobsSetup."Default WIP Posting Method");

    DimMgt.UpdateDefaultDim(
      DATABASE::Job,"No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");
    InitWIPFields;

    "Creation Date" := Today;
    "Last Date Modified" := "Creation Date";

    if ("Project Manager" <> '') and (Status = Status::Open) then
      AddToMyJobs("Project Manager");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..20
    //"Global Dimension 2 Code":='ATLANTIC';     //AAA - Oct 2002
    #22..25
    // "Starting Date":=TODAY;
                   if Vessel<>'' then
                      "Ending Date":=CalcDate('+50D',Today);
                   "Creation Date":=Today;
    #27..31
    */
    //end;


    //Unsupported feature: Code Modification on "UpdateCust(PROCEDURE 4)".

    //procedure UpdateCust();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "Bill-to Customer No." <> '' then begin
      Cust.Get("Bill-to Customer No.");
      Cust.TestField("Customer Posting Group");
      Cust.TestField("Bill-to Customer No.",'');
      if Cust."Privacy Blocked" then
        Error(Cust.GetPrivacyBlockedGenericErrorText(Cust));
      if Cust.Blocked = Cust.Blocked::All then
        Error(
          BlockedCustErr,
          FieldCaption("Bill-to Customer No."),
    #11..45
    end;

    OnAfterUpdateBillToCust(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6
      if Cust.Blocked = Cust.Blocked::Ship then
    #8..48
    */
    //end;

    procedure CheckStatus()
    begin
        //AAA-Aug 2002-Start
        //Test To see that no operation for the vessel is on the Voyage Start Status
        if Status < 3 then begin
            Jobs.SetCurrentKey(Jobs.Vessel, Jobs.Status);
            Jobs.SetRange(Jobs.Vessel, Vessel);
            Jobs.SetRange(Jobs.Status, Status);
            Jobs.SetFilter(Jobs."No.", '<>%1', "No.");
            //  MESSAGE('Total record %1 for %2 at %3',Jobs.COUNT,Vessel,Status);
            if (Jobs.Find('-')) then //AND (Jobs.COUNT>1) THEN
                Error('This vessel cannot have multiple operation\'
                      + 'running on this status, Please, close one\'
                      + 'or more Operations on this desired status\'
                      + 'and try again');
        end;
        //AAA-Aug 2002-Start
    end;

    procedure "------------------------"()
    begin
    end;

    procedure PointZ(JobNo: Code[10]; LocFilter: Text[100]; DateFilter: Text[100]; PhaseFilter: Text[100]; TaskFilter: Text[100]; StepFilter: Text[100]; Vssl: Code[10]): Decimal
    var
        JobLedgEntry: Record "Job Ledger Entry";
        TotalPrice: Decimal;
    begin
        TotalPrice := 0;
        JobLedgEntry.SetCurrentKey("Job No.", "Location Code",
          "Work Type Code", "Posting Date", Type, "Gen. Prod. Posting Group");
        JobLedgEntry.SetFilter(JobLedgEntry."Job No.", JobNo);
        if LocFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Location Code", '%1', LocFilter);
        if DateFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Posting Date", DateFilter);
        JobLedgEntry.SetFilter(JobLedgEntry."Journal Batch Name", '%1', Vssl);
        JobLedgEntry.SetRange(JobLedgEntry.Type, JobLedgEntry.Type::Item);
        JobLedgEntry.SetFilter(JobLedgEntry."Gen. Prod. Posting Group", '%1|%2', 'FIS', '');
        if TaskFilter <> '' then
            JobLedgEntry.SetRange("Task Code", TaskFilter);
        if JobLedgEntry.Find('-') then begin
            repeat
                TotalPrice := TotalPrice + JobLedgEntry."Total Price";
            until JobLedgEntry.Next = 0;
            exit(-TotalPrice);
        end else
            exit(0);
    end;

    procedure PointsActual(JobNo: Code[10]; DateFilter: Text[100]; PhaseFilter: Text[100]; TaskFilter: Text[100]; StepFilter: Text[100]): Decimal
    var
        JobLedgEntry: Record "Job Ledger Entry";
        TotalPrice: Decimal;
    begin
        TotalPrice := 0;
        JobLedgEntry.SetCurrentKey("Job No.", "Location Code",
          "Work Type Code", "Posting Date", Type, "Gen. Prod. Posting Group");
        JobLedgEntry.SetFilter(JobLedgEntry."Job No.", JobNo);
        JobLedgEntry.SetFilter(JobLedgEntry."Location Code", 'CRM-ASL');
        if DateFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Posting Date", DateFilter);
        //JobLedgEntry.SETFILTER(JobLedgEntry."Journal Batch Name",'%1',Vssl);
        JobLedgEntry.SetRange(JobLedgEntry.Type, JobLedgEntry.Type::Item);
        JobLedgEntry.SetFilter(JobLedgEntry."Gen. Prod. Posting Group", '%1|%2', 'FIS', '');
        if TaskFilter <> '' then
            JobLedgEntry.SetRange("Task Code", TaskFilter);
        if JobLedgEntry.Find('-') then begin
            repeat
                TotalPrice := TotalPrice + JobLedgEntry."Total Price";
            until JobLedgEntry.Next = 0;
            exit(-TotalPrice);
        end else
            exit(0);
    end;

    procedure LostDaysz(JobNo: Code[10]; DateFilter: Text[100]; DayLostCauseFilter: Text[100]; DayLostLocFilter: Text[100]): Decimal
    var
        CommentLine: Record "Comment Line";
        DaysLost: Decimal;
    begin
        /*DaysLost := 0;
        CommentLine.SETCURRENTKEY("Global Dimension 1 Code","Global Dimension 2 Code",Date,
            "Day Lost Cause","Day Lost Location",Vessel);
        CommentLine.SETRANGE(CommentLine."Table Name",CommentLine."Table Name"::Job);
        CommentLine.SETFILTER(CommentLine."No.",JobNo);
        IF DayLostCauseFilter <> '' THEN
          CommentLine.SETFILTER(CommentLine."Day Lost Cause",DayLostCauseFilter);
        IF DayLostLocFilter <> '' THEN
          CommentLine.SETFILTER(CommentLine."Day Lost Location",DayLostLocFilter);
        IF DateFilter <> '' THEN
          CommentLine.SETFILTER(CommentLine.Date,DateFilter);
        IF CommentLine.FIND('-') THEN BEGIN
          REPEAT
            DaysLost := DaysLost + CommentLine."Days Lost";
          UNTIL CommentLine.NEXT = 0;
          EXIT(DaysLost);
        END ELSE
          EXIT(0);
        */

    end;

    procedure ConsumedValue(JobNo: Code[10]; LocFilter: Text[100]; DateFilter: Text[100]): Decimal
    var
        ValuEntry: Record "Value Entry";
        CostPostedGL: Decimal;
    begin
        CostPostedGL := 0;
        ValuEntry.SetCurrentKey("Document No.", "Location Code", "Posting Date", "Gen. Prod. Posting Group");
        ValuEntry.SetFilter(ValuEntry."Document No.", JobNo);
        if LocFilter <> '' then
            ValuEntry.SetFilter(ValuEntry."Location Code", '%1', LocFilter);
        if DateFilter <> '' then
            ValuEntry.SetFilter(ValuEntry."Posting Date", DateFilter);
        ValuEntry.SetFilter(ValuEntry."Gen. Prod. Posting Group", '<>%1', 'FIS');
        if ValuEntry.Find('-') then begin
            repeat
                CostPostedGL := CostPostedGL + ValuEntry."Cost Posted to G/L";
            until ValuEntry.Next = 0;
            exit(-CostPostedGL);
        end else
            exit(0);
    end;

    procedure ProductQty(JobNo: Code[10]; DateFilter: Text[100]; PhaseFilter: Text[100]; TaskFilter: Text[100]; StepFilter: Text[100]): Decimal
    var
        JobLedgEntry: Record "Job Ledger Entry";
        Qty: Decimal;
    begin
        Qty := 0;
        JobLedgEntry.SetCurrentKey("Job No.", "Location Code",
          "Work Type Code", "Posting Date", Type, "Gen. Prod. Posting Group");
        JobLedgEntry.SetFilter(JobLedgEntry."Job No.", JobNo);
        JobLedgEntry.SetFilter(JobLedgEntry."Location Code", 'CRM-ASL');
        if DateFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Posting Date", DateFilter);
        if JobLedgEntry.Find('-') then begin
            repeat
                Qty := Qty + JobLedgEntry.Quantity;
            until JobLedgEntry.Next = 0;
            exit(-Qty);
        end else
            exit(0);
    end;

    procedure KiloActual(JobNo: Code[10]; DateFilter: Text[100]; PhaseFilter: Text[100]; TaskFilter: Text[100]; StepFilter: Text[100]): Decimal
    var
        JobLedgEntry: Record "Job Ledger Entry";
        Qty: Decimal;
    begin
        Qty := 0;
        JobLedgEntry.SetCurrentKey("Job No.", "Location Code",
          "Work Type Code", "Posting Date", Type, "Gen. Prod. Posting Group");
        JobLedgEntry.SetFilter(JobLedgEntry."Job No.", JobNo);
        JobLedgEntry.SetFilter(JobLedgEntry."Location Code", 'CRM-ASL');
        if DateFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Posting Date", DateFilter);
        //JobLedgEntry.SETFILTER(JobLedgEntry."Journal Batch Name",'%1',Vssl);
        JobLedgEntry.SetRange(JobLedgEntry.Type, JobLedgEntry.Type::Item);
        JobLedgEntry.SetFilter(JobLedgEntry."Gen. Prod. Posting Group", '%1|%2', 'FIS', '');
        if JobLedgEntry.Find('-') then begin
            repeat
                Qty := Qty + JobLedgEntry.Quantity;
            until JobLedgEntry.Next = 0;
            exit(-Qty);
        end else
            exit(0);
    end;

    procedure FishArea(JobNo: Code[10]; GlobalDim1: Text[100]; GlobalDim2: Text[100]; LocFilter: Text[100]; VarFilter: Text[100]; BinFilter: Text[100]; DateFilter: Text[100]; PhaseFilter: Text[100]; TaskFilter: Text[100]; StepFilter: Text[100]): Code[10]
    var
        JobLedgEntry: Record "Job Ledger Entry";
        Qty: Decimal;
    begin
        JobLedgEntry.SetCurrentKey("Job No.", "Location Code", "Posting Date",
          "Global Dimension 1 Code", "Global Dimension 2 Code", "Variant Code", "Bin Code");
        JobLedgEntry.SetFilter(JobLedgEntry."Job No.", JobNo);
        if GlobalDim1 <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Global Dimension 1 Code", '%1', GlobalDim1);
        if GlobalDim2 <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Global Dimension 2 Code", '%1', GlobalDim2);
        if VarFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Variant Code", '%1', VarFilter);
        if BinFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Bin Code", '%1', BinFilter);
        if LocFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Location Code", '%1', LocFilter);
        if DateFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Posting Date", DateFilter);
        if JobLedgEntry.Find('+') then
            exit('')
        else
            exit('');
    end;

    procedure SeaTemperature(JobNo: Code[10]; GlobalDim1: Text[100]; GlobalDim2: Text[100]; LocFilter: Text[100]; VarFilter: Text[100]; BinFilter: Text[100]; DateFilter: Text[100]; PhaseFilter: Text[100]; TaskFilter: Text[100]; StepFilter: Text[100]): Code[10]
    var
        JobLedgEntry: Record "Job Ledger Entry";
    begin
        JobLedgEntry.SetCurrentKey("Job No.", "Location Code", "Posting Date", "Global Dimension 1 Code", "Global Dimension 2 Code", "Variant Code", "Bin Code");
        JobLedgEntry.SetFilter(JobLedgEntry."Job No.", JobNo);
        if GlobalDim1 <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Global Dimension 1 Code", '%1', GlobalDim1);
        if GlobalDim2 <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Global Dimension 2 Code", '%1', GlobalDim2);
        if VarFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Variant Code", '%1', VarFilter);
        if BinFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Bin Code", '%1', BinFilter);
        if LocFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Location Code", '%1', LocFilter);
        if DateFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Posting Date", DateFilter);
        if JobLedgEntry.Find('+') then
            exit('')
        else
            exit('');
    end;

    procedure InitPlanningLines()
    begin
        if Res.Get("Person Responsible") and (Res.Posted = true)
            then
            Error('Employee already posted')
        else begin
            JobplanLine.SetRange(JobplanLine."Job No.", "No.");
            JobplanLine.SetRange(JobplanLine."Job Task No.", 'temp');
            if JobplanLine.FindLast then
                LineNo := JobplanLine."Line No.";
            JobplanLine.Init;
            JobplanLine."Line No." := LineNo + 1000;
            JobplanLine."Job No." := "No.";
            JobplanLine."Job Task No." := JobTask."Job Task No.";
            JobplanLine.Validate(JobplanLine.Type, JobplanLine.Type::Resource);
            JobplanLine.Validate(JobplanLine."No.", "Person Responsible");
            JobplanLine.Validate(JobplanLine."Document No.", 'TEST123');
            JobplanLine."Starting Date" := "Starting Date";
            JobplanLine."Ending Date" := "Ending Date";
            JobplanLine.Insert;
        end;
        if "Person Responsible" = '' then begin

        end;

        //A Skipper could be replace otherwise we would have said there should only be on skipper on a vessel
    end;

    procedure FishingArea(JobNo: Code[10]; LocFilter: Text[100]; DateFilter: Text[100]; PhaseFilter: Text[100]; TaskFilter: Text[100]; StepFilter: Text[100]; Vssl: Code[10]): Code[20]
    var
        JobLedgEntry: Record "Job Ledger Entry";
        FishArea1: Code[20];
    begin
        FishArea1 := '';
        JobLedgEntry.SetCurrentKey("Job No.", "Location Code",
          "Work Type Code", "Posting Date", Type, "Gen. Prod. Posting Group");
        JobLedgEntry.SetFilter(JobLedgEntry."Job No.", JobNo);
        if LocFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Location Code", '%1', LocFilter);
        if DateFilter <> '' then
            JobLedgEntry.SetFilter(JobLedgEntry."Posting Date", DateFilter);
        JobLedgEntry.SetFilter(JobLedgEntry."Journal Batch Name", '%1', Vssl);
        JobLedgEntry.SetRange(JobLedgEntry.Type, JobLedgEntry.Type::Item);
        //JobLedgEntry.SETFILTER(JobLedgEntry."Gen. Prod. Posting Group",'%1|%2','FIS','');
        if TaskFilter <> '' then
            JobLedgEntry.SetRange("Task Code", TaskFilter);
        if JobLedgEntry.Find('-') then begin
            repeat
                FishArea1 := JobLedgEntry."Phase Code";
            until JobLedgEntry.Next = 0;
            exit(FishArea1);
        end else
            exit('');
    end;

    //Unsupported feature: Property Modification (Fields) on "DropDown(FieldGroup 1)".


    var
        Resource: Record Resource;


        //Unsupported feature: Property Modification (Id) on "RunWIPFunctionsQst(Variable 1028)".

        //var
        //>>>> ORIGINAL VALUE:
        //RunWIPFunctionsQst : 1028;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //RunWIPFunctionsQst : 10028;
        //Variable type has not been exported.


        //Unsupported feature: Property Modification (Id) on "ReservationEntriesDeleteQst(Variable 1022)".

        //var
        //>>>> ORIGINAL VALUE:
        //ReservationEntriesDeleteQst : 1022;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ReservationEntriesDeleteQst : 10022;
        //Variable type has not been exported.


        //Unsupported feature: Property Modification (Id) on "ReservationEntriesExistErr(Variable 1027)".

        //var
        //>>>> ORIGINAL VALUE:
        //ReservationEntriesExistErr : 1027;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //ReservationEntriesExistErr : 10027;
        //Variable type has not been exported.


        //Unsupported feature: Property Modification (Id) on "AutoReserveNotPossibleMsg(Variable 1029)".

        //var
        //>>>> ORIGINAL VALUE:
        //AutoReserveNotPossibleMsg : 1029;
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //AutoReserveNotPossibleMsg : 10029;
        //Variable type has not been exported.

    var
        FA: Record "Fixed Asset";
        Loc: Record Location;
        JobSetup: Record "Jobs Setup";
        JJourBat: Record "Job Journal Batch";
        Jobs: Record Job;
        "------AAA-Nov2001": Text[30];
        JobsRec: Record Job;
        Res: Record Resource;
        GenSetup: Record "General Ledger Setup";
        JLedEnt: Record "Job Ledger Entry";
        Days: Date;
        ResPrice: Record "Resource Price";
        CommentLine: Record "Comment Line";
        ChangeJobStatus: Boolean;
        Text300: Label 'You cannot modify a voyage that has been posted to';
        JobplanLine: Record "Job Planning Line";
        JobTask: Record "Job Task";
        LineNo: Integer;
        Text001: Label 'You cannot change a job to its previous status.';
        Text002: Label 'Please note that you cannot change a job to its previous';
}

