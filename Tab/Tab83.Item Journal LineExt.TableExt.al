tableextension 50223 tableextension50223 extends "Item Journal Line"
{
    fields
    {
        modify("Reason Code")
        {
            TableRelation = Dimension.Code;
        }
        modify("External Document No.")
        {
            TableRelation = IF ("Reason Code" = FILTER ('BARGE')) "Dimension Value".Code WHERE ("Dimension Code" = FILTER ('BARGE'))
            ELSE
            IF ("Reason Code" = FILTER ('BORE HOLES')) "Dimension Value".Code WHERE ("Dimension Code" = FILTER ('BORE HOLES'))
            ELSE
            IF ("Reason Code" = FILTER ('DEPARTMENT')) "Dimension Value".Code WHERE ("Dimension Code" = FILTER ('DEPARTMENT'))
            ELSE
            IF ("Reason Code" = FILTER ('FARM')) "Dimension Value".Code WHERE ("Dimension Code" = FILTER ('FARM'))
            ELSE
            IF ("Reason Code" = FILTER ('GENERATOR')) "Dimension Value".Code WHERE ("Dimension Code" = FILTER ('GENERATOR'))
            ELSE
            IF ("Reason Code" = FILTER ('HATCHERY')) "Dimension Value".Code WHERE ("Dimension Code" = FILTER ('HATCHERY'))
            ELSE
            IF ("Reason Code" = FILTER ('MOTOR BOAT')) "Dimension Value".Code WHERE ("Dimension Code" = FILTER ('MOTOR BOAT'))
            ELSE
            IF ("Reason Code" = FILTER ('MOTOR VEH.')) "Dimension Value".Code WHERE ("Dimension Code" = FILTER ('MOTOR VEH.'))
            ELSE
            IF ("Reason Code" = FILTER ('PUMP ROOM')) "Dimension Value".Code WHERE ("Dimension Code" = FILTER ('PUMP ROOM'))
            ELSE
            IF ("Reason Code" = FILTER ('RESIDENT')) "Dimension Value".Code WHERE ("Dimension Code" = FILTER ('RESIDENT'))
            ELSE
            IF ("Reason Code" = FILTER ('LAB')) "Dimension Value".Code WHERE ("Dimension Code" = FILTER ('LAB'));
        }

        //Unsupported feature: Code Modification on ""Item No."(Field 3).OnValidate".

        //trigger "(Field 3)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "Item No." <> xRec."Item No." then begin
          "Variant Code" := '';
          "Bin Code" := '';
        #4..136

        OnBeforeVerifyReservedQty(Rec,xRec,FieldNo("Item No."));
        ReserveItemJnlLine.VerifyChange(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..139

        // //AAA-July 12 2002
        // IF "Journal Template Name"<>'PHYS. INVE' THEN
        // BEGIN
        //  "Shortcut Dimension 2 Code":='ATLANTIC';
        //  "Location Code":='GNRL ASL';
        // END;
        // //"Gen. Bus. Posting Group":='LOCAL';
        */
        //end;


        //Unsupported feature: Code Modification on "Quantity(Field 13).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if ("Entry Type" <= "Entry Type"::Transfer) and (Quantity <> 0) then
          TestField("Item No.");

        #4..42

        if Item."Item Tracking Code" <> '' then
          ReserveItemJnlLine.VerifyQuantity(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..45
        //VALIDATE("BOM EXPLODED",TRUE);
        */
        //end;


        //Unsupported feature: Code Modification on ""Applies-to Entry"(Field 29).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "Applies-to Entry" <> 0 then begin
          ItemLedgEntry.Get("Applies-to Entry");

          if "Value Entry Type" = "Value Entry Type"::Revaluation then begin
            if "Inventory Value Per" <> "Inventory Value Per"::" " then
              Error(Text006,FieldCaption("Applies-to Entry"));

            if "Inventory Value Per" = "Inventory Value Per"::" " then
              if not RevaluationPerEntryAllowed("Item No.") then
                Error(RevaluationPerEntryNotAllowedErr);

            InitRevalJnlLine(ItemLedgEntry);
        #13..16
              if Quantity > 0 then
                FieldError(Quantity,Text030);
              if Quantity < 0 then
                FieldError(Quantity,Text029);
            end;
            if ItemLedgEntry.TrackingExists then
              Error(Text033,FieldCaption("Applies-to Entry"),ItemTrackingLines.Caption);
        #24..39
            Validate("Unit Amount",0);
            Validate(Quantity,0);
            "Inventory Value (Calculated)" := 0;
            "Inventory Value (Revalued)" := 0;
            "Location Code" := '';
            "Variant Code" := '';
            "Bin Code" := '';
          end;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..4
           if "Inventory Value Per" <> "Inventory Value Per"::" " then
        #6..8
             if not RevaluationPerEntryAllowed("Item No.") then
        #10..19
                 FieldError(Quantity,Text029);
        #21..42
           "Inventory Value (Revalued)" := 0;
        #44..47
        */
        //end;


        //Unsupported feature: Code Modification on ""Shortcut Dimension 2 Code"(Field 35).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
        //VALIDATE("Variant Code","Shortcut Dimension 2 Code");
        */
        //end;


        //Unsupported feature: Code Insertion on ""Reason Code"(Field 42)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*
        if "Reason Code" <> xRec."Reason Code" then
          "External Document No." := '';
        */
        //end;


        //Unsupported feature: Code Modification on ""New Location Code"(Field 50).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestField("Entry Type","Entry Type"::Transfer);
        if "New Location Code" <> xRec."New Location Code" then begin
          "New Bin Code" := '';
        #4..6
              WMSManagement.GetDefaultBin("Item No.","Variant Code","New Location Code","New Bin Code")
          end;
        end;

        ReserveItemJnlLine.VerifyChange(Rec,xRec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..9
        //VALIDATE("BOM EXPLODED",TRUE);
        ReserveItemJnlLine.VerifyChange(Rec,xRec);
        */
        //end;


        //Unsupported feature: Code Insertion on ""External Document No."(Field 62)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*

        //AAA Feb 2002
        if "Reason Code"='USAGE' then
          if FixAs.Get("External Document No.") then
            Validate("Shortcut Dimension 2 Code",FixAs."Global Dimension 2 Code");
        */
        //end;


        //Unsupported feature: Code Modification on ""Variant Code"(Field 5402).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "Entry Type" in ["Entry Type"::Consumption,"Entry Type"::Output] then
          WhseValidateSourceLine.ItemLineVerifyChange(Rec,xRec);

        #4..28
        end else begin
          GetItem;
          Description := Item.Description;
        end;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..31
            //Description := ItemVariant.Description;  //previous Location


          // AAA/BRP-2001
          //Description := ItemVariant.Description; //OLD
          if Description ='' then Description := ItemVariant.Description;
        end;
        */
        //end;
        field(50000; "BOM EXPLODED"; Boolean)
        {
        }
        field(50001; "Item List Cat"; Code[10])
        {
            TableRelation = "Gen. Product Posting Group";
        }
        field(50316; "Issue Type"; Option)
        {
            Description = 'From Regular,Repairs,Dry Dock,Over Hauling to';
            OptionMembers = Mainte,Fuel;
        }
        field(50405; "CRM / STR"; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Item No." = FIELD ("Item No."),
                                                                  "Location Code" = FILTER ('GNRL ASL' | 'GNRL COS' | 'GNRL ICF' | 'GNRL SSC' | 'CRM-ASL' | 'CRM-COS' | 'CRM-ICF' | 'CRM-SSC')));
            DecimalPlaces = 0 : 5;
            Description = 'Inventory of items in Cold Room/Store';
            Editable = false;
            FieldClass = FlowField;
        }
    }
    keys
    {
        key(ASLKeyD1; "Document No.")
        {
        }
        key(ASLKeyC2; "Item No.")
        {
        }
    }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    LockTable;
    ItemJnlTemplate.Get("Journal Template Name");
    ItemJnlBatch.Get("Journal Template Name","Journal Batch Name");

    ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
    ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
    ValidateNewShortcutDimCode(1,"New Shortcut Dimension 1 Code");
    ValidateNewShortcutDimCode(2,"New Shortcut Dimension 2 Code");

    CheckPlanningAssignment;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    CheckPlanningAssignment;
    */
    //end;


    //Unsupported feature: Code Modification on "SetUpNewLine(PROCEDURE 8)".

    //procedure SetUpNewLine();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    MfgSetup.Get;
    ItemJnlTemplate.Get("Journal Template Name");
    ItemJnlBatch.Get("Journal Template Name","Journal Batch Name");
    #4..32
    "Entry Type" := LastItemJnlLine."Entry Type";
    "Source Code" := ItemJnlTemplate."Source Code";
    "Reason Code" := ItemJnlBatch."Reason Code";
    "Posting No. Series" := ItemJnlBatch."Posting No. Series";
    if ItemJnlTemplate.Type = ItemJnlTemplate.Type::Revaluation then begin
      "Value Entry Type" := "Value Entry Type"::Revaluation;
      "Entry Type" := "Entry Type"::"Positive Adjmt.";
    #40..45
        "Location Code" := UserMgt.GetLocation(0,'',UserMgt.GetSalesFilter);
      "Entry Type"::Output:
        Clear(DimMgt);
    end;

    if Location.Get("Location Code") then
      if  Location."Directed Put-away and Pick" then
        "Location Code" := '';

    OnAfterSetupNewLine(Rec,LastItemJnlLine,ItemJnlTemplate);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..35
     "Gen. Bus. Posting Group":=ItemJnlBatch."Gen. Bus. Posting Group";
    "Posting No. Series" := ItemJnlBatch."Posting No. Series";
     //AAA
          if CopyStr(ItemJnlBatch."Transfer To",1,3)='RES' then
              "External Document No.":=ItemJnlBatch."Transfer To";
          "Shortcut Dimension 2 Code":='ATLANTIC';
    #37..48
      //AAA
    #49..55
    */
    //end;


    //Unsupported feature: Code Modification on "ClearSingleAndRolledUpCosts(PROCEDURE 4)".

    //procedure ClearSingleAndRolledUpCosts();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Single-Level Material Cost" := "Unit Cost (Revalued)";
    "Single-Level Capacity Cost" := 0;
    "Single-Level Subcontrd. Cost" := 0;
    #4..7
    "Rolled-up Subcontracted Cost" := 0;
    "Rolled-up Mfg. Ovhd Cost" := 0;
    "Rolled-up Cap. Overhead Cost" := 0;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..10
     {
          //AAA
          COMMIT;
          ItemSetup.GET;
          IF ItemSetup."Automatic BOM Explosion" THEN ExplodeBom.RUN(Rec);
        }
    */
    //end;

    var
        "--------": Text[30];
        ItemSetup: Record "Inventory Setup";
        ItemLedEnt: Record "Item Ledger Entry";
        FixAs: Record "Fixed Asset";
        ExplodeBom: Codeunit "Item Jnl.-Explode BOM";
        RC: Code[10];
}

