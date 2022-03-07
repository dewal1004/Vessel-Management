tableextension 50283 tableextension50283 extends "Job Planning Line"
{
    // EP.01  20160214 Srikanth : Resource if selected then should not be available again.
    fields
    {

        //Unsupported feature: Property Insertion (ValidateTableRelation) on ""No."(Field 7)".



        //Unsupported feature: Code Modification on ""Planning Date"(Field 3).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateModification(xRec."Planning Date" <> "Planning Date");

        Validate("Document Date","Planning Date");
        if ("Currency Date" = 0D) or ("Currency Date" = xRec."Planning Date") then
        #5..11
        else
          UpdateReservation(FieldNo("Planning Date"));
        "Planned Delivery Date" := "Planning Date";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
                                                                      ValidateModification(xRec."Planning Date" <> "Planning Date");
        #2..14
        */
        //end;


        //Unsupported feature: Code Modification on ""No."(Field 7).OnValidate".

        //trigger "(Field 7)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateModification(xRec."No." <> "No.");

        CheckUsageLinkRelations;

        #5..28
              Res.CheckResourcePrivacyBlocked(false);
              Res.TestField(Blocked,false);
              Res.TestField("Gen. Prod. Posting Group");
              if Description = '' then
                Description := Res.Name;
              if "Description 2" = '' then
                "Description 2" := Res."Name 2";
              "Gen. Prod. Posting Group" := Res."Gen. Prod. Posting Group";
              "Resource Group No." := Res."Resource Group No.";
              Validate("Unit of Measure Code",Res."Base Unit of Measure");
            end;
          Type::Item:
            begin
        #42..73
              Description := StandardText.Description;
            end;
        end;

        if Type <> Type::Text then
          Validate(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
                                                                      ValidateModification(xRec."No." <> "No.");
        #2..31
              // EP.01 >>
              Res.Posted:=true;
              Res.Modify;
              // EP.01 <<
        #32..35

              "Unit Cost" := Res."Unit Cost";
              "Unit Price" := Res."Unit Price";

              "Gen. Prod. Posting Group" := Res."Gen. Prod. Posting Group";
              "Resource Group" := Res."Resource Group No.";
              ResourceExist;
              FindIncPerct;
              Validate("Unit of Measure Code",Res."Base Unit of Measure")
        #39..76
        if Type <> Type::Text then
          Validate(Quantity);
        */
        //end;


        //Unsupported feature: Code Modification on "Quantity(Field 9).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "Usage Link" then
          if not BypassQtyValidation then begin
            if ("Qty. Posted" > 0) and (Quantity < "Qty. Posted") then
              Error(QtyLessErr,FieldCaption(Quantity),FieldCaption("Qty. Posted"));
            if ("Qty. Posted" < 0) and (Quantity > "Qty. Posted") then
        #6..11
        if ("Qty. Transferred to Invoice" < 0) and (Quantity > "Qty. Transferred to Invoice") then
          Error(QtyGreaterErr,FieldCaption(Quantity),FieldCaption("Qty. Transferred to Invoice"));

        case Type of
          Type::Item:
            if not Item.Get("No.") then
        #18..38
        UpdateReservation(FieldNo(Quantity));

        UpdateAllAmounts;
        BypassQtyValidation := false;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //Added as per 3.0
        Invsetup.Get;
        if Job.Get("Job No.") then
        begin
          if Job."Sea Days"<>0 then
            DayFrac:=Quantity/Job."Sea Days";
          Job.SetFilter(Job."Location Filter",Invsetup."Default Cold Room");
          Job.SetFilter(Job."No.","Job No.");
          Job.CalcSums(Job."Incentive (Pt. Based)",Job."Incentive (Pt. Based) Actual");
          Validate(Incentive,Job."Incentive (Pt. Based) Actual"*"Allocation %"*0.01*DayFrac);
          //MODIFY(TRUE);
          "Alloted %":="Allocation %"*DayFrac;
          end;

        //Added as per 3.0

        if "Usage Link" then
          if not BypassQtyPostedValidation then begin
        #3..14
        BypassQtyPostedValidation := false;

        #15..41
        */
        //end;
        field(50300; Incentive; Decimal)
        {
        }
        field(50301; "Hook Inc"; Decimal)
        {
        }
        field(50302; "Add/Ded"; Decimal)
        {
        }
        field(50303; "Net Inc"; Decimal)
        {
            Editable = false;
        }
        field(50305; "Alloted %"; Decimal)
        {
        }
        field(50308; "Allocation Quantity"; Decimal)
        {
        }
        field(50309; "Allocation %"; Decimal)
        {
            Caption = 'Allocation %';
            DecimalPlaces = 2 : 2;
        }
        field(50314; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(50315; "Resource Group"; Code[20])
        {
        }
        field(50317; Counter; Integer)
        {
            CalcFormula = Count ("Job Planning Line" WHERE ("Job No." = FIELD ("Job No."),
                                                           "No." = FILTER (<> '')));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50318; "Ended Voyage"; Boolean)
        {
        }
        field(50319; "Starting Date"; Date)
        {
        }
        field(50320; "Phase Code"; Code[10])
        {
            Caption = 'Phase Code';
        }
    }


    //Unsupported feature: Code Modification on "OnDelete".

    //trigger OnDelete()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ValidateModification(true);
    CheckRelatedJobPlanningLineInvoice;

    #4..13
      CalcFields("Reserved Qty. (Base)");
      TestField("Reserved Qty. (Base)",0);
    end;

    if "Schedule Line" then
      Job.UpdateOverBudgetValue("Job No.",false,"Total Cost (LCY)");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..16
    // EP.01 >>
    if Res.Get("No.") then begin
      Res.Posted:=false;
      Res.Modify;
    end;
    // EP.01 <<
    #17..19
    */
    //end;


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    LockTable;
    GetJob;
    if Job.Blocked = Job.Blocked::All then
    #4..7
    if Quantity <> 0 then
      UpdateReservation(0);

    if "Schedule Line" then
      Job.UpdateOverBudgetValue("Job No.",false,"Total Cost (LCY)");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..10
    Job.Get("Job No.");
    "Starting Date" := Job."Starting Date";
    "Ending Date":=Job."Ending Date";        //AAA-April2002

    if Res.Get("No.") then
    begin
      Res.Posted:=true;
     Res.Modify;
    end;

    if "Schedule Line" then
      Job.UpdateOverBudgetValue("Job No.",false,"Total Cost (LCY)");
    */
    //end;


    //Unsupported feature: Code Modification on "OnRename".

    //trigger OnRename()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Error(RecordRenameErr,FieldCaption("Job No."),FieldCaption("Job Task No."),TableCaption);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    case Type of
      Type::Resource:
        begin
          if Res.Get("No.") then
          begin
            Res.Posted:=false;
            Res.Modify;
            Commit;
          end;
        end;
    end;
    Error(RecordRenameErr,FieldCaption("Job No."),FieldCaption("Job Task No."),TableCaption);
    */
    //end;


    //Unsupported feature: Code Modification on "RetrieveCostPrice(PROCEDURE 13)".

    //procedure RetrieveCostPrice();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsHandled := false;
    ShouldRetrieveCostPrice := false;
    OnBeforeRetrieveCostPrice(Rec,xRec,ShouldRetrieveCostPrice,IsHandled);
    if IsHandled then
      exit(ShouldRetrieveCostPrice);

    case Type of
      Type::Item:
        ShouldRetrieveCostPrice :=
    #10..22
        exit(false);
    end;
    exit(ShouldRetrieveCostPrice);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    #7..25
    */
    //end;

    //Unsupported feature: Property Modification (Name) on "SetBypassQtyValidation(PROCEDURE 32)".



    //Unsupported feature: Code Modification on "SetBypassQtyValidation(PROCEDURE 32)".

    //procedure SetBypassQtyValidation();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    BypassQtyValidation := Bypass;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    BypassQtyPostedValidation := Bypass;
    */
    //end;

    procedure FindIncPerct()
    begin
        if Res.Get("No.") then
            if ResGr.Get(Res."Resource Group No.") then
                if not ResGr."Crew(Juniour)" then
                    "Allocation %" := ResGr.IncentivePect
                else begin
                    Job.Get("Job No.");
                    OperatnSetup.Get;
                    if Job."No. of Deck Hands" <> 0 then
                        "Allocation %" := OperatnSetup."Crew Share Percentage" / Job."No. of Deck Hands";
                end;
        //Level:=ResGr.Level;
    end;

    local procedure ResourceExist()
    begin
        JobPlanLine.SetFilter("No.", Res."No.");
        JobPlanLine.SetRange("Job No.", "Job No.");
        if JobPlanLine.FindFirst then begin
            Error('Resource Already Exist', FieldCaption("Line No."), "No.");
        end;
    end;


    //Unsupported feature: Property Modification (Id) on "BypassQtyValidation(Variable 1035)".

    //var
    //>>>> ORIGINAL VALUE:
    //BypassQtyValidation : 1035;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BypassQtyValidation : 1050;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "UsagePostingDate(Variable 1042)".

    //var
    //>>>> ORIGINAL VALUE:
    //UsagePostingDate : 1042;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UsagePostingDate : 10042;
    //Variable type has not been exported.

    var
        ResGr: Record "Resource Group";
        Res: Record Resource;
        Job: Record Job;

    var
        OperatnSetup: Record "Jobs Setup";
        Invsetup: Record "Inventory Setup";

    var
        "---": Integer;
        Incentive: Decimal;
        "Starting Date": Date;
        JobPlanLine: Record "Job Planning Line";
        DayFrac: Decimal;
        Resouce: Text;

    var
        BypassQtyPostedValidation: Boolean;
}

