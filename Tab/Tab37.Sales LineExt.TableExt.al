tableextension 50215 tableextension50215 extends "Sales Line"
{
    
    fields
    {
        modify("Document Type")
        {
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Appraisal';

            //Unsupported feature: Property Modification (OptionString) on ""Document Type"(Field 1)".

        }
        modify(Type)
        {
            OptionCaption = ' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item),Skill,Performance';

            //Unsupported feature: Property Modification (OptionString) on "Type(Field 5)".

        }
        modify("Location Code")
        {
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false),
                                            "Location Type" = FILTER (Store));
        }

        //Unsupported feature: Property Modification (Data type) on ""Description 2"(Field 12)".


        //Unsupported feature: Property Insertion (Enabled) on ""Substitution Available"(Field 5702)".


        //Unsupported feature: Property Insertion (Enabled) on ""Qty. to Assign"(Field 5801)".


        //Unsupported feature: Property Insertion (Enabled) on ""Qty. Assigned"(Field 5802)".


        //Unsupported feature: Code Modification on ""No."(Field 6).OnValidate".

        //trigger "(Field 6)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetSalesSetup;

        "No." := FindOrCreateRecordByNo("No.");
        #4..6
        CheckItemAvailable(FieldNo("No."));

        if (xRec."No." <> "No.") and (Quantity <> 0) then begin
          TestField("Qty. to Asm. to Order (Base)",0);
          CalcFields("Reserved Qty. (Base)");
          TestField("Reserved Qty. (Base)",0);
          if Type = Type::Item then
            WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
          OnValidateNoOnAfterVerifyChange(Rec,xRec);
        #16..36
          "Recalculate Invoice Disc." := true;
        Type := TempSalesLine.Type;
        "No." := TempSalesLine."No.";
        OnValidateNoOnCopyFromTempSalesLine(Rec,TempSalesLine);
        if "No." = '' then
          exit;

        if HasTypeToFillMandatoryFields then
        #45..53
        "Promised Delivery Date" := SalesHeader."Promised Delivery Date";
        "Requested Delivery Date" := SalesHeader."Requested Delivery Date";
        "Shipment Date" :=
          CalendarMgmt.CalcDateBOC(
            '',SalesHeader."Shipment Date",CalChange."Source Type"::Location,"Location Code",'',
            CalChange."Source Type"::"Shipping Agent","Shipping Agent Code","Shipping Agent Service Code",false);

        #61..70
          Type::"G/L Account":
            CopyFromGLAccount;
          Type::Item:
            CopyFromItem;
          Type::Resource:
            CopyFromResource;
          Type::"Fixed Asset":
            CopyFromFixedAsset;
          Type::"Charge (Item)":
            CopyFromItemCharge;
        end;

        OnAfterAssignFieldsForNo(Rec,xRec,SalesHeader);
        #84..86
          PostingSetupMgt.CheckGenPostingSetupCOGSAccount("Gen. Bus. Posting Group","Gen. Prod. Posting Group");
          PostingSetupMgt.CheckVATPostingSetupSalesAccount("VAT Bus. Posting Group","VAT Prod. Posting Group");
        end;

        if HasTypeToFillMandatoryFields and (Type <> Type::"Fixed Asset") then
          Validate("VAT Prod. Posting Group");
        #93..96
          Validate("Unit of Measure Code");
          if Quantity <> 0 then begin
            InitOutstanding;
            if IsCreditDocType then
              InitQtyToReceive
            else
              InitQtyToShip;
            InitQtyToAsm;
            UpdateWithWarehouseShip;
          end;
          UpdateUnitPrice(FieldNo("No."));
        end;

        OnValidateNoOnAfterUpdateUnitPrice(Rec,xRec);

        CreateDim(
        #113..127
        end;

        UpdateItemCrossRef;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..9
        TestField("Qty. to Asm. to Order (Base)",0);
          CalcFields("Reserved Qty. (Base)");
         TestField("Reserved Qty. (Base)",0);
        #13..39
        OnValidateNoOnCopyFromTempSalesLine(Rec,TempSalesLine);                                                                                       if "No." = '' then
        #42..56
         CalendarMgmt.CalcDateBOC(
        #58..73
           CopyFromItem;

        #75..79
        CopyFromItemCharge;
        #81..89
        if (Type <> Type::" ") and (Type<6)  then begin
        #90..99

            if IsCreditDocType then

        #101..108
        #110..130
        end;
        */
        //end;


        //Unsupported feature: Code Modification on ""Location Code"(Field 7).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;
        CheckAssocPurchOrder(FieldCaption("Location Code"));
        #4..61

        CheckWMS;

        if "Document Type" = "Document Type"::"Return Order" then
          ValidateReturnReasonCode(FieldNo("Location Code"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..64
        if "Document Type" = "Document Type"::Appraisal then
          ValidateReturnReasonCode(FieldNo("Location Code"));
        */
        //end;


        //Unsupported feature: Code Modification on ""Shipment Date"(Field 10).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        WhseValidateSourceLine.SalesLineVerifyChange(Rec,xRec);
        if CurrFieldNo <> 0 then
        #4..25
        AutoAsmToOrder;
        if (xRec."Shipment Date" <> "Shipment Date") and
           (Quantity <> 0) and
           not StatusCheckSuspended
        then
          CheckDateConflict.SalesLineCheck(Rec,CurrFieldNo <> 0);

        if not PlannedShipmentDateCalculated then
          "Planned Shipment Date" := CalcPlannedShptDate(FieldNo("Shipment Date"));
        if not PlannedDeliveryDateCalculated then
          "Planned Delivery Date" := CalcPlannedDeliveryDate(FieldNo("Shipment Date"));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..28
           (Reserve <> Reserve::Never) and
        #29..36
        */
        //end;


        //Unsupported feature: Code Modification on "Description(Field 11).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if Type = Type::" " then
          exit;

        #4..15
                Item.SetRange(Blocked,false);
                Item.SetRange("Sales Blocked",false);

                // looking for an item with exact description
                Item.SetRange(Description,Description);
                if Item.FindFirst then begin
                  Validate("No.",Item."No.");
                  exit;
                end;

                // looking for an item with similar description
                Item.SetFilter(Description,'''@' + ConvertStr(Description,'''','?') + '''');
                if Item.FindFirst then begin
                  Validate("No.",Item."No.");
        #30..70
               ["Document Type"::Order,"Document Type"::Invoice,"Document Type"::Quote,"Document Type"::"Credit Memo"]
            then
              Error(CannotFindDescErr,Type,Description);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..18
                 //looking for an item with exact description
        #20..25
                 //looking for an item with similar description
        #27..73
        */
        //end;


        //Unsupported feature: Code Modification on "Quantity(Field 15).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;

        #4..6
          CheckShipmentRelation
        else
          if "Return Receipt No." <> '' then
            CheckRetRcptRelation;

        "Quantity (Base)" := CalcBaseQty(Quantity);

        OnValidateQuantityOnAfterCalcBaseQty(Rec,xRec);

        if IsCreditDocType then begin
          if (Quantity * "Return Qty. Received" < 0) or
             ((Abs(Quantity) < Abs("Return Qty. Received")) and ("Return Receipt No." = ''))
          then
        #20..42
        AddOnIntegrMgt.CheckReceiptOrderStatus(Rec);
        if (xRec.Quantity <> Quantity) or (xRec."Quantity (Base)" <> "Quantity (Base)") then begin
          InitOutstanding;
          if IsCreditDocType then
            InitQtyToReceive
          else
            InitQtyToShip;
          InitQtyToAsm;
        #51..92
        UpdatePlanned;
        if "Document Type" = "Document Type"::"Return Order" then
          ValidateReturnReasonCode(FieldNo(Quantity));
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*

        #1..9
           CheckRetRcptRelation;
        #11..16

        #17..45

          if IsCreditDocType then
                    InitQtyToReceive
        #48..95
        */
        //end;


        //Unsupported feature: Code Modification on ""Unit Price"(Field 22).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        Validate("Line Discount %");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Validate("Line Discount %");

        userrec.Get(UserId); //Nitin
        if not userrec."Sales Price" then
        Error('You are not Authorized to Change');
        */
        //end;


        //Unsupported feature: Code Modification on ""Unit Cost (LCY)"(Field 23).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if (CurrFieldNo = FieldNo("Unit Cost (LCY)")) and
           ("Unit Cost (LCY)" <> xRec."Unit Cost (LCY)")
        then
        #4..8
          TestJobPlanningLine;
          GetItem(Item);
          if (Item."Costing Method" = Item."Costing Method"::Standard) and not IsShipment then begin
            if IsCreditDocType then
              Error(
                Text037,
        #15..31
              Currency."Unit-Amount Rounding Precision")
        end else
          "Unit Cost" := "Unit Cost (LCY)";
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..11

        #12..34
        if "Gen. Prod. Posting Group" = 'FIS' then
          begin
            "Unit Cost" := 0;
            "Unit Cost (LCY)" := 0;
          end; //AAA
        */
        //end;


        //Unsupported feature: Code Modification on ""Gen. Bus. Posting Group"(Field 74).OnValidate".

        //trigger  Bus()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" then
          if GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") then
            Validate("VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type<6 then //AAA
        #1..3
        */
        //end;


        //Unsupported feature: Code Modification on ""Gen. Prod. Posting Group"(Field 75).OnValidate".

        //trigger  Prod()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;
        if xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" then
          if GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp,"Gen. Prod. Posting Group") then
            Validate("VAT Prod. Posting Group",GenProdPostingGrp."Def. VAT Prod. Posting Group");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if Type<6 then //AAA
        #1..5
        */
        //end;


        //Unsupported feature: Code Modification on ""Deferral Code"(Field 1700).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetSalesHeader;
        OnGetDeferralPostDate(SalesHeader,DeferralPostDate,Rec);
        if DeferralPostDate = 0D then
        #4..8
          GetDeferralAmount,DeferralPostDate,
          Description,SalesHeader."Currency Code");

        if "Document Type" = "Document Type"::"Return Order" then
          "Returns Deferral Start Date" :=
            DeferralUtilities.GetDeferralStartDate(DeferralUtilities.GetSalesDeferralDocType,
              "Document Type","Document No.","Line No.","Deferral Code",SalesHeader."Posting Date");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..11
        if "Document Type" = "Document Type"::Appraisal then
        #13..15
        */
        //end;


        //Unsupported feature: Code Modification on ""Unit of Measure Code"(Field 5407).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestJobPlanningLine;
        TestStatusOpen;
        TestField("Quantity Shipped",0);
        TestField("Qty. Shipped (Base)",0);
        TestField("Return Qty. Received",0);
        TestField("Return Qty. Received (Base)",0);
        if "Unit of Measure Code" <> xRec."Unit of Measure Code" then begin
          TestField("Shipment No.",'');
          TestField("Return Receipt No.",'');
        #10..62
            "Qty. per Unit of Measure" := 1;
        end;
        Validate(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..4
        #7..65
        */
        //end;
        field(50003; xx; Decimal)
        {
        }
        field(50004; xx2; Decimal)
        {
        }
        field(50300; Grade; Option)
        {
            Description = ',Excellent,Good,Average,Poor';
            OptionMembers = " ",Excellent,Good,"Average",Poor;
        }
        field(50301; Comment; Text[80])
        {
        }
        field(50302; quantity1; Decimal)
        {
            Description = 'Used by Performance score for sum';
        }
        field(50303; TTSkill; Decimal)
        {
            Description = 'Used by skill score for sums';
        }
        field(50304; TTPerformance; Decimal)
        {
            Description = 'used by performance total for sum';
        }
        field(50350; Numbers; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Description = 'factor of Quantity';
        }
        field(50351; Packing; Decimal)
        {
            DecimalPlaces = 0 : 0;
            Description = 'factor of Quantity';
        }
        field(50352; "Pack Size"; Code[10])
        {
        }
        field(50353; Brand; Code[10])
        {
            TableRelation = "Reason Code" WHERE ("In Use" = CONST (true),
                                                 Type = CONST (Brands));
        }
        field(50354; "Pack Size Code"; Code[1])
        {
            TableRelation = "Unit of Measure" WHERE ("In Use" = CONST (true),
                                                     "Catch Code" = FILTER (<> ''));
        }
        field(50355; "Brand Code"; Code[1])
        {
            TableRelation = "Reason Code" WHERE ("In Use" = CONST (true),
                                                 Type = CONST (Brands));
        }
        field(50356; ProdCd; Code[3])
        {
            TableRelation = Item;
        }
        field(50357; "On Pallet"; Option)
        {
            OptionMembers = Yes,No,"Part";
        }
        field(50359; "Item Category Code Sort"; Code[15])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(50360; Explodedline; Boolean)
        {
        }
    }
    keys
    {
        key(ASLKeyC1; "Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Location Code", "Bin Code", "Shipment Date")
        {
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(ASLKeyB2; "Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Shipment Date")
        {
          //  SumIndexFields = Quantity, quantity1, TTSkill, TTPerformance;
        }
        key(ASLKeyB3; "Document No.", Type)
        {
        }
        key(Key4; "Item Category Code Sort", "Pack Size", Brand)
        {
            SumIndexFields = Packing;
        }
        key(ASLKeyA5; Explodedline)
        {
        }
    }


    //Unsupported feature: Code Modification on "MaxQtyToInvoiceBase(PROCEDURE 19)".

    //procedure MaxQtyToInvoiceBase();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsHandled := false;
    OnBeforeMaxQtyToInvoiceBase(Rec,MaxQtyBase,IsHandled);
    if IsHandled then
      exit(MaxQtyBase);

    if IsCreditDocType then
      exit("Return Qty. Received (Base)" + "Return Qty. to Receive (Base)" - "Qty. Invoiced (Base)");

    exit("Qty. Shipped (Base)" + "Qty. to Ship (Base)" - "Qty. Invoiced (Base)");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
     IsHandled := false;
    #2..9
    */
    //end;


    //Unsupported feature: Code Modification on "ShowMessageOnce(PROCEDURE 229)".

    //procedure ShowMessageOnce();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TempErrorMessage.SetContext(Rec);
    if TempErrorMessage.FindRecord(RecordId,0,TempErrorMessage."Message Type"::Warning,MessageText) = 0 then begin
      TempErrorMessage.LogMessage(Rec,0,TempErrorMessage."Message Type"::Warning,MessageText);
      Message(MessageText);
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    {TempErrorMessage.SetContext(Rec);
    IF TempErrorMessage.FindRecord(RECORDID,0,TempErrorMessage."Message Type"::Warning,MessageText) = 0 THEN BEGIN
      TempErrorMessage.LogMessage(Rec,0,TempErrorMessage."Message Type"::Warning,MessageText);
      MESSAGE(MessageText);
    END;}
    */
    //end;

    //Unsupported feature: Property Modification (Attributes) on "UpdatePrepmtSetupFields(PROCEDURE 102)".


    //Unsupported feature: Variable Insertion (Variable: CalledByDateField) (VariableCollection) on "CheckItemAvailable(PROCEDURE 4)".



    //Unsupported feature: Code Modification on "CheckItemAvailable(PROCEDURE 4)".

    //procedure CheckItemAvailable();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsHandled := false;
    OnBeforeCheckItemAvailable(Rec,CalledByFieldNo,IsHandled,CurrFieldNo);
    if IsHandled then
    #4..20
       ("Job Contract Entry No." = 0) and
       not "Special Order"
    then begin
      if ItemCheckAvail.SalesLineCheck(Rec) then
        ItemCheckAvail.RaiseUpdateInterruptedError;
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..23
      CalledByDateField :=
        CalledByFieldNo in [FieldNo("Shipment Date"),FieldNo("Requested Delivery Date"),FieldNo("Promised Delivery Date"),
                            FieldNo("Planned Shipment Date"),FieldNo("Planned Delivery Date")];
      if ItemCheckAvail.SalesLineCheck(Rec,CalledByDateField) then
        ItemCheckAvail.RaiseUpdateInterruptedError;
    end;
    */
    //end;

    //Unsupported feature: Property Modification (Attributes) on "CalcPlannedDeliveryDate(PROCEDURE 92)".


    //Unsupported feature: Property Insertion (Local) on "CalcPlannedDeliveryDate(PROCEDURE 92)".


    //Unsupported feature: Property Modification (Attributes) on "CalcPlannedShptDate(PROCEDURE 93)".


    //Unsupported feature: Property Insertion (Local) on "CalcPlannedShptDate(PROCEDURE 93)".



    //Unsupported feature: Code Modification on "SignedXX(PROCEDURE 20)".

    //procedure SignedXX();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    case "Document Type" of
      "Document Type"::Quote,
      "Document Type"::Order,
      "Document Type"::Invoice,
      "Document Type"::"Blanket Order":
        exit(-Value);
      "Document Type"::"Return Order",
      "Document Type"::"Credit Memo":
        exit(Value);
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6
      "Document Type"::Appraisal,
    #8..10
    */
    //end;


    //Unsupported feature: Code Modification on "ShowItemChargeAssgnt(PROCEDURE 5801)".

    //procedure ShowItemChargeAssgnt();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Get("Document Type","Document No.","Line No.");
    TestField("No.");
    TestField(Quantity);

    if Type <> Type::"Charge (Item)" then begin
      ErrorMsg := Format(ItemChargeAssignmentErr);
      Message(ErrorMsg);
    #8..50
    ItemChargeAssgnts.Initialize(Rec,ItemChargeAssgntLineAmt);
    ItemChargeAssgnts.RunModal;
    CalcFields("Qty. to Assign");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    if not ItemChargeAssgntSales.ReadPermission then    //added by santus 20-10-05
            exit;
    #5..53
    */
    //end;


    //Unsupported feature: Code Modification on "UpdateItemChargeAssgnt(PROCEDURE 5807)".

    //procedure UpdateItemChargeAssgnt();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "Document Type" = "Document Type"::"Blanket Order" then
      exit;

    CalcFields("Qty. Assigned","Qty. to Assign");
    if Abs("Quantity Invoiced") > Abs(("Qty. Assigned" + "Qty. to Assign")) then
      Error(Text055,FieldCaption("Quantity Invoiced"),FieldCaption("Qty. Assigned"),FieldCaption("Qty. to Assign"));

    #8..44
      until ItemChargeAssgntSales.Next = 0;
      CalcFields("Qty. to Assign");
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*

    if not ItemChargeAssgntSales.ReadPermission then    //added by santus 20-10-05
            exit;
    if "Document Type" = "Document Type"::"Blanket Order" then
      exit;
      CalcFields("Qty. Assigned","Qty. to Assign");
    #5..47
    */
    //end;


    //Unsupported feature: Code Modification on "DeleteItemChargeAssgnt(PROCEDURE 5802)".

    //procedure DeleteItemChargeAssgnt();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ItemChargeAssgntSales.SetRange("Applies-to Doc. Type",DocType);
    ItemChargeAssgntSales.SetRange("Applies-to Doc. No.",DocNo);
    ItemChargeAssgntSales.SetRange("Applies-to Doc. Line No.",DocLineNo);
    if not ItemChargeAssgntSales.IsEmpty then
      ItemChargeAssgntSales.DeleteAll(true);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if not ItemChargeAssgntSales.ReadPermission then    //added by santus 20-10-0
      exit;
    #1..5
    */
    //end;


    //Unsupported feature: Code Modification on "DeleteChargeChargeAssgnt(PROCEDURE 5804)".

    //procedure DeleteChargeChargeAssgnt();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if DocType <> "Document Type"::"Blanket Order" then
      if "Quantity Invoiced" <> 0 then begin
        CalcFields("Qty. Assigned");
        TestField("Qty. Assigned","Quantity Invoiced");
    #5..11
      ItemChargeAssgntSales.DeleteAll;

    OnAfterDeleteChargeChargeAssgnt(Rec,xRec,CurrFieldNo);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if DocType <> "Document Type"::"Blanket Order" then
      if not ItemChargeAssgntSales.ReadPermission then    //added by santus 20-10-05
            exit;
    #2..14
    */
    //end;


    //Unsupported feature: Code Modification on "CalcVATAmountLines(PROCEDURE 35)".

    //procedure CalcVATAmountLines();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if IsCalcVATAmountLinesHandled(SalesHeader,SalesLine,VATAmountLine) then
      exit;

    #4..41
                      end else begin
                        QtyToHandle := "Qty. to Invoice";
                        VATAmountLine.Quantity += "Qty. to Invoice (Base)";
                      end;
                    IsCreditDocType and (not SalesHeader.Receive) and SalesHeader.Invoice:
                      if "Return Receipt No." = '' then begin
                        QtyToHandle := GetAbsMin("Qty. to Invoice","Return Qty. Rcd. Not Invd.");
                        VATAmountLine.Quantity += GetAbsMin("Qty. to Invoice (Base)","Ret. Qty. Rcd. Not Invd.(Base)");
                      end else begin
                        QtyToHandle := "Qty. to Invoice";
                        VATAmountLine.Quantity += "Qty. to Invoice (Base)";
                      end;
                    else
                      begin
                      QtyToHandle := "Qty. to Invoice";
    #57..68
              QtyType::Shipping:
                begin
                  if "Document Type" in
                     ["Document Type"::"Return Order","Document Type"::"Credit Memo"]
                  then begin
                    QtyToHandle := "Return Qty. to Receive";
                    VATAmountLine.Quantity += "Return Qty. to Receive (Base)";
    #76..101
      end;

    OnAfterCalcVATAmountLines(SalesHeader,SalesLine,VATAmountLine,QtyType);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..44
                      end;                      IsCreditDocType and (not SalesHeader.Receive) and SalesHeader.Invoice:
    #47..51
                        VATAmountLine.Quantity += "Qty. to Invoice (Base)";                        end;
    #54..71
                     ["Document Type"::Appraisal,"Document Type"::"Credit Memo"]
    #73..104
    */
    //end;


    //Unsupported feature: Code Modification on "UpdateWithWarehouseShip(PROCEDURE 41)".

    //procedure UpdateWithWarehouseShip();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if Type = Type::Item then
      case true of
        ("Document Type" in ["Document Type"::Quote,"Document Type"::Order]) and (Quantity >= 0):
    #4..9
            Validate("Qty. to Ship",0)
          else
            Validate("Qty. to Ship","Outstanding Quantity");
        ("Document Type" = "Document Type"::"Return Order") and (Quantity >= 0):
          if Location.RequireReceive("Location Code") then
            Validate("Return Qty. to Receive",0)
          else
            Validate("Return Qty. to Receive","Outstanding Quantity");
        ("Document Type" = "Document Type"::"Return Order") and (Quantity < 0):
          if Location.RequireShipment("Location Code") then
            Validate("Return Qty. to Receive",0)
          else
    #22..24
    SetDefaultQuantity;

    OnAfterUpdateWithWarehouseShip(SalesHeader,Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..12
        ("Document Type" = "Document Type"::Appraisal) and (Quantity >= 0):
    #14..17
        ("Document Type" = "Document Type"::Appraisal) and (Quantity < 0):
    #19..27
    */
    //end;


    //Unsupported feature: Code Modification on "CheckWarehouse(PROCEDURE 46)".

    //procedure CheckWarehouse();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetLocation("Location Code");
    if "Location Code" = '' then begin
      WhseSetup.Get;
    #4..8
      Location2 := Location;

    DialogText := Text035;
    if ("Document Type" in ["Document Type"::Order,"Document Type"::"Return Order"]) and
       Location2."Directed Put-away and Pick"
    then begin
      ShowDialog := ShowDialog::Error;
      if (("Document Type" = "Document Type"::Order) and (Quantity >= 0)) or
         (("Document Type" = "Document Type"::"Return Order") and (Quantity < 0))
      then
        DialogText :=
          DialogText + Location2.GetRequirementText(Location2.FieldNo("Require Shipment"))
    #21..23
    end else begin
      if (("Document Type" = "Document Type"::Order) and (Quantity >= 0) and
          (Location2."Require Shipment" or Location2."Require Pick")) or
         (("Document Type" = "Document Type"::"Return Order") and (Quantity < 0) and
          (Location2."Require Shipment" or Location2."Require Pick"))
      then begin
        if WhseValidateSourceLine.WhseLinesExist(
    #31..50

      if (("Document Type" = "Document Type"::Order) and (Quantity < 0) and
          (Location2."Require Receive" or Location2."Require Put-away")) or
         (("Document Type" = "Document Type"::"Return Order") and (Quantity >= 0) and
          (Location2."Require Receive" or Location2."Require Put-away"))
      then begin
        if WhseValidateSourceLine.WhseLinesExist(
    #58..86
    end;

    HandleDedicatedBin(true);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..11
    if ("Document Type" in ["Document Type"::Order,"Document Type"::Appraisal]) and
    #13..16
         (("Document Type" = "Document Type"::Appraisal) and (Quantity < 0))
    #18..26
         (("Document Type" = "Document Type"::Appraisal) and (Quantity < 0) and
    #28..53
         (("Document Type" = "Document Type"::Appraisal) and (Quantity >= 0) and
    #55..89
    */
    //end;


    //Unsupported feature: Code Modification on "IsInbound(PROCEDURE 97)".

    //procedure IsInbound();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    case "Document Type" of
      "Document Type"::Order,"Document Type"::Invoice,"Document Type"::Quote,"Document Type"::"Blanket Order":
        exit("Quantity (Base)" < 0);
      "Document Type"::"Return Order","Document Type"::"Credit Memo":
        exit("Quantity (Base)" > 0);
    end;

    exit(false);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
      "Document Type"::Appraisal,"Document Type"::"Credit Memo":
    #5..8
    */
    //end;


    //Unsupported feature: Code Modification on "CheckAssocPurchOrder(PROCEDURE 51)".

    //procedure CheckAssocPurchOrder();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsHandled := false;
    OnBeforeCheckAssocPurchOrder(Rec,TheFieldCaption,IsHandled,xRec);
    if IsHandled then
      exit;

    if TheFieldCaption = '' then begin // If sales line is being deleted
      if "Purch. Order Line No." <> 0 then
        Error(Text000,"Purchase Order No.","Purch. Order Line No.");
      if "Special Order Purch. Line No." <> 0 then
    #10..14
      if "Special Order Purch. Line No." <> 0 then
        Error(Text002,TheFieldCaption,"Special Order Purchase No.","Special Order Purch. Line No.");
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    if TheFieldCaption = '' then begin  //If sales line is being deleted
    #7..17
    */
    //end;


    //Unsupported feature: Code Modification on "SetDefaultQuantity(PROCEDURE 62)".

    //procedure SetDefaultQuantity();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetSalesSetup;
    if SalesSetup."Default Quantity to Ship" = SalesSetup."Default Quantity to Ship"::Blank then begin
      if ("Document Type" = "Document Type"::Order) or ("Document Type" = "Document Type"::Quote) then begin
        "Qty. to Ship" := 0;
        "Qty. to Ship (Base)" := 0;
        "Qty. to Invoice" := 0;
        "Qty. to Invoice (Base)" := 0;
      end;
      if "Document Type" = "Document Type"::"Return Order" then begin
        "Return Qty. to Receive" := 0;
        "Return Qty. to Receive (Base)" := 0;
        "Qty. to Invoice" := 0;
        "Qty. to Invoice (Base)" := 0;
      end;
    end;

    OnAfterSetDefaultQuantity(Rec,xRec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..8
      if "Document Type" = "Document Type"::Appraisal then begin
    #10..17
    */
    //end;


    //Unsupported feature: Code Modification on "ValidateReturnReasonCode(PROCEDURE 99)".

    //procedure ValidateReturnReasonCode();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsHandled := false;
    OnBeforeValidateReturnReasonCode(Rec,CallingFieldNo,IsHandled);
    if IsHandled then
    #4..13
    if ReturnReason.Get("Return Reason Code") then begin
      if (CallingFieldNo <> FieldNo("Location Code")) and (ReturnReason."Default Location Code" <> '') then
        Validate("Location Code",ReturnReason."Default Location Code");
      if ReturnReason."Inventory Value Zero" then
        Validate("Unit Cost (LCY)",0)
      else
        if "Unit Price" = 0 then
          UpdateUnitPrice(CallingFieldNo);
    end;

    OnAfterValidateReturnReasonCode(Rec,CallingFieldNo);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..16
      if ReturnReason."Inventory Value Zero" then begin
        Validate("Unit Cost (LCY)",0);
        Validate("Unit Price",0);
      end else
    #20..24
    */
    //end;


    //Unsupported feature: Code Modification on "UpdateDeferralAmounts(PROCEDURE 105)".

    //procedure UpdateDeferralAmounts();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetSalesHeader;
    OnGetDeferralPostDate(SalesHeader,DeferralPostDate,Rec);
    if DeferralPostDate = 0D then
      DeferralPostDate := SalesHeader."Posting Date";
    AdjustStartDate := true;
    if "Document Type" = "Document Type"::"Return Order" then begin
      if "Returns Deferral Start Date" = 0D then
        "Returns Deferral Start Date" := SalesHeader."Posting Date";
      DeferralPostDate := "Returns Deferral Start Date";
    #10..13
      "Deferral Code",DeferralUtilities.GetSalesDeferralDocType,'','',
      "Document Type","Document No.","Line No.",
      GetDeferralAmount,DeferralPostDate,Description,SalesHeader."Currency Code",AdjustStartDate);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    if "Document Type" = "Document Type"::Appraisal then begin
    #7..16
    */
    //end;


    //Unsupported feature: Code Modification on "InitDeferralCode(PROCEDURE 108)".

    //procedure InitDeferralCode();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "Document Type" in
       ["Document Type"::Order,"Document Type"::Invoice,"Document Type"::"Credit Memo","Document Type"::"Return Order"]
    then
      case Type of
        Type::"G/L Account":
    #6..11
        Type::Resource:
          Validate("Deferral Code",Res."Default Deferral Template Code");
      end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    if "Document Type" in
       ["Document Type"::Order,"Document Type"::Invoice,"Document Type"::"Credit Memo","Document Type"::Appraisal]
    #3..14
    */
    //end;


    //Unsupported feature: Code Modification on "IsCreditDocType(PROCEDURE 110)".

    //procedure IsCreditDocType();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    exit("Document Type" in ["Document Type"::"Return Order","Document Type"::"Credit Memo"]);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    exit("Document Type" in ["Document Type"::Appraisal,"Document Type"::"Credit Memo"]);
    */
    //end;

    //Unsupported feature: Parameter Insertion (Parameter: SalesLine) (ParameterCollection) on "OnCrossReferenceNoLookupOnBeforeValidateUnitPrice(PROCEDURE 228)".


    procedure "----"()
    begin
    end;

    procedure Addon()
    begin
        "Pack Size" := TempSalesLine."Pack Size";
        Brand := TempSalesLine.Brand;
        "Pack Size Code" := TempSalesLine."Pack Size Code";
        "Brand Code" := TempSalesLine."Brand Code";
        ProdCd := TempSalesLine.ProdCd;
    end;

    procedure CatSort()
    begin
        if "Postg Gropu".Get("Posting Group") then "Item Category Code Sort" := "Postg Gropu".Category;
    end;

    //Unsupported feature: Deletion (ParameterCollection) on "OnCrossReferenceNoLookupOnBeforeValidateUnitPrice(PROCEDURE 228).SalesLine(Parameter 1001)".



    //Unsupported feature: Property Modification (Id) on "GLAcc(Variable 1035)".

    //var
    //>>>> ORIGINAL VALUE:
    //GLAcc : 1035;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //GLAcc : 1099;
    //Variable type has not been exported.

    var
        TempSalesLine: Record "Sales Line";

    var
        "-----": Text[30];
        TTSkill: Decimal;
        TTPerformance: Decimal;
        AppraiseRec: Record "Payroll-Lookup Lines.";
        "Postg Gropu": Record "Inventory Posting Group";
        "...................": Integer;
        ItemAvailByDate: Page "Item Availability by Periods";
        ItemAvailByVar: Page "Item Availability by Variant";
        ItemAvailByLoc: Page "Item Availability by Location";
        "............": Integer ;
        Text012: Label 'Change %1 from %2 to %3?';
        userrec: Record "User Setup";
}

