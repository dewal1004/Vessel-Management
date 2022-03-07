tableextension 50247 tableextension50247 extends "Job Journal Line"
{
    fields
    {

        //Unsupported feature: Property Modification (Editable) on ""Unit Cost (LCY)"(Field 13)".


        //Unsupported feature: Property Modification (Editable) on ""Total Cost (LCY)"(Field 14)".


        //Unsupported feature: Property Modification (Editable) on ""Total Price (LCY)"(Field 16)".

        modify("Source Code")
        {
            TableRelation = IF ("External Document No." = FILTER ('')) "Source Code"
            ELSE
            IF ("External Document No." = FILTER (<> '')) Location WHERE ("Location Type" = CONST (Vessel));

            //Unsupported feature: Property Modification (Editable) on ""Source Code"(Field 62)".

        }

        //Unsupported feature: Property Modification (Data type) on ""Journal Batch Name"(Field 73)".


        //Unsupported feature: Code Modification on ""Job No."(Field 3).OnValidate".

        //trigger "(Field 3)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "Job No." = '' then begin
          Validate("Currency Code",'');
          Validate("Job Task No.",'');
        #4..9

        GetJob;
        Job.TestBlocked;
        IsHandled := false;
        OnValidateJobNoOnBeforeCheckJob(Rec,xRec,Cust,IsHandled);
        if not IsHandled then begin
          Job.TestField("Bill-to Customer No.");
          Cust.Get(Job."Bill-to Customer No.");
          Validate("Job Task No.",'');
        end;
        "Customer Price Group" := Job."Customer Price Group";
        Validate("Currency Code",Job."Currency Code");
        CreateDim(
          DATABASE::Job,"Job No.",
          DimMgt.TypeToTableID2(Type),"No.",
          DATABASE::"Resource Group","Resource Group No.");
        Validate("Country/Region Code",Job."Bill-to Country/Region Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..12

        #13..16

        Job.TestField(Status,Job.Status::Open);
        #17..19

        "Customer Price Group" := Job."Customer Price Group";
        Validate("Currency Code",Job."Currency Code");
        Validate("Posting Date",Job."Ending Date");
        Validate("Phase Code",Job.Vessel);
        #22..25

        Validate("Country/Region Code",Job."Bill-to Country/Region Code");

        if (Type = Type::Item) and ("No." <> '') then
        begin
        GLAcc."Global Dimension 2 Code":=Job."Global Dimension 2 Code";
        //"Variant Code":=Job."Global Dimension 2 Code"

        end;
        */
        //end;


        //Unsupported feature: Code Insertion on ""No."(Field 8)".

        //trigger OnLookup(var Text: Text): Boolean
        //begin
        /*
        if "Location Code" = '' then
        */
        //end;


        //Unsupported feature: Code Modification on ""No."(Field 8).OnValidate".

        //trigger "(Field 8)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if ("No." = '') or ("No." <> xRec."No.") then begin
          Description := '';
          "Unit of Measure Code" := '';
          "Qty. per Unit of Measure" := 1;
          "Variant Code" := '';
          "Work Type Code" := '';
          DeleteAmounts;
          "Cost Factor" := 0;
          "Applies-to Entry" := 0;
          "Applies-from Entry" := 0;
          CheckedAvailability := false;
          "Job Planning Line No." := 0;
          if "No." = '' then begin
            UpdateDimensions;
            exit;
          end
        end;

        case Type of
          Type::Resource:
            CopyFromResource;
          Type::Item:
            CopyFromItem;
          Type::"G/L Account":
            CopyFromGLAccount;
        end;

        Validate(Quantity);
        UpdateDimensions;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if ("No." = '') or ("No." <> xRec."No.") then begin
         Description := '';
          "Unit of Measure Code" := '';
         "Qty. per Unit of Measure" := 1;
        #5..17
        "Work Type Code":=Item."Item Category Code"; //AAA-Nov 2001

           if Item."Gen. Prod. Posting Group"='FIS' then "Unit Price" := Item.Points; //AAA-Jan 2002
            if Item."Gen. Prod. Posting Group"='FIS' then
            FindItemPoints; //santus 12-01-14
           "Statistics Group":=Item."Statistics Group";
            WorkTypeCode("No.");

        case Type of
        Type::Resource:
            CopyFromResource;
          Type::Item:
        CopyFromItem;

         Type::"G/L Account":
            CopyFromGLAccount;
        end;
        //AAA1-  Nov 2001        //Location Fixg
          if "Location Code" = '' then
          if User.Get(UserId) then
           if  User."Shortcut Dimension 1 Code"='MRKT' then begin
              InvtrSetUp.Get;
              "Location Code":=InvtrSetUp."Default Cold Room";
           end else
             if (Job.Get("Job No.")) and (Job.Vessel<>'') then
                "Location Code":=Job.Vessel;

          //AAA/May 21/2002
          if (Type = Type::Item) and ("No." <> '') then
          begin
          GLAcc."Global Dimension 2 Code":=Job."Global Dimension 2 Code";


          end;
        Validate(Quantity);

        UpdateDimensions;
        */
        //end;


        //Unsupported feature: Code Modification on "Quantity(Field 10).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        "Quantity (Base)" := UOMMgt.CalcBaseQty(Quantity,"Qty. per Unit of Measure");
        UpdateAllAmounts;

        if "Job Planning Line No." <> 0 then
          Validate("Job Planning Line No.");

        CheckItemAvailable;
        if Item."Item Tracking Code" <> '' then
          ReserveJobJnlLine.VerifyQuantity(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*

        "Quantity (Base)" := UOMMgt.CalcBaseQty(Quantity,"Qty. per Unit of Measure");

        #2..9
        */
        //end;


        //Unsupported feature: Code Modification on ""Unit of Measure Code"(Field 18).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetGLSetup;
        case Type of
          Type::Item:
        #4..30
            end;
        end;
        Validate(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..33
         //AAA-DEC-2001
        //IF "Work Type Code"='CTH' THEN "Bin Code":="Unit of Measure Code";
        //VALIDATE("Variant Code","Shortcut Dimension 2 Code");
        */
        //end;


        //Unsupported feature: Code Modification on ""Dimension Set ID"(Field 480).OnLookup".

        //trigger OnLookup(var Text: Text): Boolean
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ShowDimensions;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //ShowDimensions;  #1
        */
        //end;


        //Unsupported feature: Code Modification on ""Variant Code"(Field 5402).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "Variant Code" = '' then begin
          if Type = Type::Item then begin
            Item.Get("No.");
        #4..10
        TestField(Type,Type::Item);

        ItemVariant.Get("No.","Variant Code");
        Description := ItemVariant.Description;
        "Description 2" := ItemVariant."Description 2";

        Validate(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..13
        if ItemVariant.Description<>''  then      ///AAA-Nov 2001
        #14..17
        */
        //end;


        //Unsupported feature: Code Modification on ""Bin Code"(Field 5403).OnLookup".

        //trigger OnLookup(var Text: Text): Boolean
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestField("Location Code");
        TestField(Type,Type::Item);
        BinCode := WMSManagement.BinContentLookUp("Location Code","No.","Variant Code",'',"Bin Code");
        if BinCode <> '' then
          Validate("Bin Code",BinCode);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..5
        //AAA-DEC-2001
        "Unit of Measure Code":="Bin Code";
        */
        //end;
        field(50300; Catch; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50301; Code1; Code[10])
        {
            TableRelation = Item;
        }
        field(50302; Pack; Code[5])
        {
            TableRelation = "Unit of Measure" WHERE ("In Use" = CONST (true),
                                                     "Catch Code" = FILTER (<> ''));
        }
        field(50303; Brand; Code[5])
        {
            TableRelation = "Reason Code" WHERE ("In Use" = CONST (true),
                                                 Type = CONST (Brands));
        }
        field(50316; "Statistics Group"; Integer)
        {
            Caption = 'Statistics Group';
        }
        field(50317; "Catch Total"; Decimal)
        {
            CalcFormula = Sum ("Job Journal Line".Catch WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                              "Journal Batch Name" = FIELD ("Journal Batch Name")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50318; "Catch Points"; Decimal)
        {
            CalcFormula = Sum ("Job Journal Line"."Total Price" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                      "Journal Batch Name" = FIELD ("Journal Batch Name")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50320; "Reconciliation Catch Quantity"; Decimal)
        {
        }
        field(50321; ROB; Decimal)
        {
        }
        field(50322; "Stock Position Calc."; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Item No." = FIELD ("No."),
                                                                  "Location Code" = FIELD ("Location Code")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50323; "Posted Catch"; Decimal)
        {
            CalcFormula = - Sum ("Job Ledger Entry".Quantity WHERE ("Job No." = FIELD ("Job No."),
                                                                  "Posting Date" = FIELD ("Posting Date"),
                                                                  Type = FIELD (Type),
                                                                  "No." = FIELD ("No.")));
            DecimalPlaces = 0 : 2;
            Editable = false;
            FieldClass = FlowField;
        }
        field(50324; "Catch Sea Days"; Decimal)
        {
            Description = 'Total sea day on a day that there is a catch';
        }
        field(50333; "Work Type Code Sort"; Code[15])
        {
            Caption = 'Work Type Code Sort';
            TableRelation = "Work Type";
            ValidateTableRelation = false;
        }
        field(50338; "Shrimp Points"; Decimal)
        {
            CalcFormula = Sum ("Job Journal Line"."Total Price" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                      "Journal Batch Name" = FIELD ("Journal Batch Name"),
                                                                      "Task Code" = CONST ('SHR')));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50339; "Fish Points"; Decimal)
        {
            CalcFormula = Sum ("Job Journal Line"."Total Price" WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                      "Journal Batch Name" = FIELD ("Journal Batch Name"),
                                                                      "Task Code" = CONST ('FIS')));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50350; "ROB By"; Code[50])
        {
            Editable = false;
            TableRelation = User;
        }
        field(50351; Groupsort; Code[15])
        {
            Description = 'added by santus 22-04-05';
        }
        field(50352; "Phase Code"; Code[30])
        {
        }
        field(50353; "Task Code"; Code[30])
        {
            TableRelation = Task;
        }
    }
    keys
    {

        //Unsupported feature: Property Insertion (SumIndexFields) on ""Journal Template Name","Journal Batch Name","Line No."(Key)".


        //Unsupported feature: Property Insertion (SumIndexFields) on ""Journal Template Name","Journal Batch Name",Type,"No.","Unit of Measure Code","Work Type Code"(Key)".

       /* key(Key1; "Journal Template Name", "Journal Batch Name", "Statistics Group", "Work Type Code")
        {
            SumIndexFields = Quantity;
        }
        key(Key2; "Journal Template Name", "Journal Batch Name", "Statistics Group", "Work Type Code Sort")
        {
            SumIndexFields = Quantity;
        } 
        key(Key3; "Posting Group")
        {
            SumIndexFields = "Total Cost", "Total Price";
        }*/
    }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    LockTable;
    JobJnlTemplate.Get("Journal Template Name");
    JobJnlBatch.Get("Journal Template Name","Journal Batch Name");

    ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
    ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    "Shortcut Dimension 2 Code":='ATLANTIC';
    ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
    ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");

    //AAA/March 2002
    if Code1<>'' then
    begin
      Syntesis(Code1,Pack,Brand);
      Validate("No.",ItemVar);
    end;
    if Catch <> 0 then
      //"Line Amount" := "Unit Price" * Catch;

    //AAA-NOV - 2001
    Validate(Quantity,Catch*-1);
    */
    //end;


    //Unsupported feature: Code Modification on "CopyFromItem(PROCEDURE 30)".

    //procedure CopyFromItem();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetItem;
    Item.TestField(Blocked,false);
    Description := Item.Description;
    #4..7
    "Posting Group" := Item."Inventory Posting Group";
    "Gen. Prod. Posting Group" := Item."Gen. Prod. Posting Group";
    Validate("Unit of Measure Code",Item."Base Unit of Measure");

    OnAfterAssignItemValues(Rec,Item);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..10
    FindItemPrice;
    CheckItemAvailable;
    "Work Type Code":=Item."Item Category Code"; //AAA-Nov 2001
    "Task Code":=Item."Product Group Code";  //AAA-Jan 2002
    "Statistics Group":=Item."Statistics Group";
    if Item."Gen. Prod. Posting Group"='FIS' then
      FindItemPoints; //santus 12-01-14
    "Statistics Group":=Item."Statistics Group";
    WorkTypeCode("No.");

    OnAfterAssignItemValues(Rec,Item);
    */
    //end;


    //Unsupported feature: Code Modification on "SetUpNewLine(PROCEDURE 9)".

    //procedure SetUpNewLine();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsHandled := false;
    OnBeforeSetUpNewLine(Rec,xRec,LastJobJnlLine,IsHandled);
    if IsHandled then
    #4..12
      "Document No." := LastJobJnlLine."Document No.";
      Type := LastJobJnlLine.Type;
      Validate("Line Type",LastJobJnlLine."Line Type");
    end else begin
      "Posting Date" := WorkDate;
      "Document Date" := WorkDate;
    #19..26
    "Reason Code" := JobJnlBatch."Reason Code";
    "Posting No. Series" := JobJnlBatch."Posting No. Series";

    OnAfterSetUpNewLine(Rec,LastJobJnlLine,JobJnlTemplate,JobJnlBatch);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..15
      // Default job and Location on new line
      if LastJobJnlLine."Job No." <> '' then
        "Job No." := LastJobJnlLine."Job No.";
      if LastJobJnlLine."Location Code" <> '' then
        "Location Code" := LastJobJnlLine."Location Code";
      if LastJobJnlLine."Job Task No." <> '' then
        "Job Task No." := LastJobJnlLine."Job Task No.";
    #16..29
    "External Document No.":=JobJnlBatch."Voyage No.";

    OnAfterSetUpNewLine(Rec,LastJobJnlLine,JobJnlTemplate,JobJnlBatch);
    */
    //end;


    //Unsupported feature: Code Modification on "UpdateAmountsAndDiscounts(PROCEDURE 31)".

    //procedure UpdateAmountsAndDiscounts();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "Total Price" <> 0 then begin
      if ("Line Amount" <> xRec."Line Amount") and ("Line Discount Amount" = xRec."Line Discount Amount") then begin
        "Line Amount" := Round("Line Amount",AmountRoundingPrecisionFCY);
    #4..23
    end else begin
      "Line Amount" := 0;
      "Line Discount Amount" := 0;
      "Line Amount (LCY)" := 0;
      "Line Discount Amount (LCY)" := 0;
    end;

    OnAfterUpdateAmountsAndDiscounts(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..26
    #29..31
    */
    //end;

    procedure "-------------"()
    begin
    end;

    procedure Syntesis(Cd: Code[10]; Pk: Code[10]; Br: Code[10]) Itemno: Code[10]
    begin
        //Syntesis Item Code Name
        //Get Unit of measure Code
        if UOM.Get(Pk) then UOMCd := UOM."Catch Code";
        //Requip Code Name
        ItemVar := Format(Cd);//+UOMCd+COPYSTR(Br,1,1);
        "No." := ItemVar;
    end;

    procedure WorkTypeCode(var Nos: Code[10])
    begin
        if items.Get(Nos) then
            if InvPostGrp.Get(items."Inventory Posting Group") then
                "Work Type Code Sort" := InvPostGrp.Category;
    end;

    procedure StockTillDate(JJLn: Record "Job Journal Line"): Decimal
    var
        Items: Record Item;
    begin
        if Items.Get(JJLn."No.") then begin
            Items.SetFilter(Items."Location Filter", JJLn."Location Code");
            Items.SetFilter(Items."Date Filter", '..%1', JJLn."Posting Date");
            Items.CalcFields(Items.Inventory);
            exit(Items.Inventory / JJLn."Qty. per Unit of Measure");
        end else
            exit(99999);
    end;

    procedure FindItemPoints()
    begin
        ItemPoints.Init;
        ItemPoints."Item No." := "No.";
        ItemPoints."Price Group Code" := "Customer Price Group";
        ItemPoints."Unit of Measure Code" := "Unit of Measure Code";
        ItemPoints."Starting Date" := "Posting Date";
        ItemFindPoints.Run(ItemPoints);
        ItemPoints.TestField("Price Includes VAT", false);
         GetGLSetup();
        "Unit Price" := ItemPoints."Unit Price";
        if ItemPoints."Unit of Measure Code" = '' then
            "Unit Price" :=
              Round(
                "Unit Price" * "Qty. per Unit of Measure",
                GLSetup."Unit-Amount Rounding Precision");
        Validate("Unit Price");
    end;

    procedure ClearCatch()
    var
        DocPrint: Codeunit "Document-Print";
        Window: Dialog;
        RecCount: Integer;
        JobTask: Record "Job Task";
    begin

        if JBat.Get("Journal Template Name", "Journal Batch Name") then begin
            //Job Journal Line Insertion
            i := 0;
            //Insert Default Catches for the Job
            JCatchDefa.SetCurrentKey(JCatchDefa."S/No.", JCatchDefa."Table Name", JCatchDefa."No.");
            JCatchDefa.SetRange(JCatchDefa."Table Name", JCatchDefa."Table Name"::Job);
            JCatchDefa.SetRange(JCatchDefa."No.", JBat."Job No.");
            if JCatchDefa.Find('-') then begin
                Window.Open('Clearing Catch Record(s)...Please wait.\' +
                            'No of Records  #1########\' +
                            'Count          #2########');
                RecCount := JCatchDefa.Count;
                Window.Update(1, RecCount);
                repeat
                    i := i + 1;
                    Window.Update(2, i);
                    JJLine.Init;
                    JJLine."Journal Template Name" := "Journal Template Name";
                    if "Journal Template Name" = 'RECURRING' then begin
                        JJLine."Recurring Method" := 2;
                        if Evaluate(JJLine."Recurring Frequency", '1D') then;
                    end;

                    JJLine."Journal Batch Name" := "Journal Batch Name";
                    JJLine.Validate(JJLine."Job No.", JBat."Job No.");
                    JJLine."Posting Date" := JBat."Catch Date";
                    JJLine."Phase Code" := JBat."Fishing Ground";
                    JJLine."Document No." := JBat.Name + Format(JBat."Catch Date");
                    JJLine.Type := JJLine.Type::Item;
                    JJLine."Line No." := i * 10000;
                    JJLine.Code1 := JCatchDefa.Code;
                    JJLine.Pack := JCatchDefa."Pack Size";
                    JJLine.Brand := JCatchDefa.Brand;
                    if UOM.Get(JJLine.Pack) then UOMCd := UOM."Catch Code"; //Get Unit of measure Code
                                                                            //ITVars:=FORMAT(JJLine.Code1)+UOMCd+COPYSTR(JJLine.Brand,1,1);   //Requip Code Name MP 2 20218
                    ItemVar := JCatchDefa.Code;
                    JJLine.Validate(JJLine."No.", ItemVar); //Updates JJLine."Task Code"
                    items.Get(JJLine."No.");
                    //  JJLine.VALIDATE("Task Code",items."Product Group Code");//MP220218
                    JJLine.Validate("Unit Price", items.Points);
                    JJLine.Validate(JJLine."Location Code", JBat.Name);
                    //       IF JobTask.FINDFIRST THEN
                    //        Jobtask_No := JobTask."Job Task No.";
                    //      JJLine.VALIDATE("Job Task No.",Jobtask_No);
                    if Jobs.Get(JBat."Job No.") then begin
                        JJLine."Catch Sea Days" := JBat."Catch Date" - Jobs."Starting Date";
                    end;

                    //JJLine."Step Code":=FORMAT(JBat."Sea Temperature"); //AA
                    if items.Get(ITVars) then
                        if items."Unit Cost" <> 0 then
                            JJLine.Validate(JJLine."Unit Cost", items."Unit Cost")
                        else
                            JJLine.Validate(JJLine."Unit Cost", items.Points);
                    JJLine.Validate(JJLine."Unit Cost", 0); //AAA-Sept 30, 2002 Unit cost must be zero
                    JJLine.Validate(JJLine."Shortcut Dimension 2 Code", JBat."Global Dimension 2 Code");
                    JJLine."Phase Code" := JBat."Fishing Ground"; //AA
                    JJLine."Source Code" := JBat."Fishing Ground";
                    JobTask.SetRange("Job No.", "Job No.");
                    if JobTask.FindFirst then
                        Jobtask_No := JobTask."Job Task No.";
                    JJLine.Validate("Job Task No.", Jobtask_No);
                    if not JJLine.Insert(true) then JJLine.Modify(true);
                until JCatchDefa.Next() = 0;
                Window.Close;
            end;
        end;
    end;

    procedure FindItemPrice()
    begin
        /*
        FindSalesLinePrice.INIT;
        FindSalesLinePrice."Item No." := "No.";
        //ItemPrice."Price Group Code" := "Price Group Code";
        FindSalesLinePrice."Sales Code" := "Customer Price Group";
        FindSalesLinePrice."Unit of Measure Code" := "Unit of Measure Code";
        FindSalesLinePrice."Starting Date" := "Posting Date";
        PriceCalcMgt.RUN(FindSalesLinePrice);
        ItemPrice.TESTFIELD("Price Includes VAT",FALSE);
        GetGLSetup;
        "Unit Price" := ItemPrice."Unit Price";
        IF ItemPrice."Unit of Measure Code" = '' THEN
          "Unit Price" :=
            ROUND(
              "Unit Price" * "Qty. per Unit of Measure",
              GLSetup."Unit-Amount Rounding Precision");
        VALIDATE("Unit Price");
        */

    end;

    local procedure GetGLSetup()
    begin
        Error('Procedure GetGLSetup not implemented.');
    end;

    var
        "---": Integer;
        UOM: Record "Unit of Measure";
        User: Record "User Setup";
        items: Record Item;
        InvtrSetUp: Record "Inventory Setup";
        InvPostGrp: Record "Inventory Posting Group";
        InvtPostGrp: Record "Inventory Posting Group";
        UOMCd: Code[10];
        ItemVar: Code[10];
        ItemPoints: Record "Item Points";
        ItemFindPoints: Codeunit "Item-Find Point";
        Points: Decimal;
        JobTask: Record "Job Task";
        JCatchDefa: Record "Job catch Default";
        JBat: Record "Job Journal Batch";
        i: Integer;
        JJLine: Record "Job Journal Line";
        ITVars: Code[10];
        Jobs: Record Job;
        Jobtask_No: Code[20];
        FindSalesLinePrice: Record "Sales Price";
        PriceCalcMgt: Codeunit "Sales Price Calc. Mgt.";
        Loc: Record Location;
        GLSetup : Record "General Ledger Setup";
}

