tableextension 50217 tableextension50217 extends "Purchase Line"
{
    fields
    {

        //Unsupported feature: Property Modification (MinValue) on ""Indirect Cost %"(Field 54)".


        //Unsupported feature: Property Deletion (Editable) on ""Buy-from Vendor No."(Field 2)".


        //Unsupported feature: Code Modification on "Quantity(Field 15).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        IsHandled := false;
        OnValidateQuantityOnBeforeDropShptCheck(Rec,xRec,CurrFieldNo,IsHandled);
        #4..85
        end;

        CheckWMS;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..88

        //AAA-BPR-Oct2000-Start
        "QtytoReceiveAmount(LCY)":="Outstanding Amount (LCY)";
        if ("Qty. to Receive"<>"Outstanding Quantity") then
                   "QtytoReceiveAmount(LCY)":=Round(("Qty. to Receive"*"Outstanding Amount (LCY)")/"Outstanding Quantity");
        //AAA-BPR-Oct2000-Start
        */
        //end;


        //Unsupported feature: Code Modification on ""Unit of Measure Code"(Field 5407).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        TestField("Quantity Received",0);
        TestField("Qty. Received (Base)",0);
        TestField("Qty. Rcd. Not Invoiced",0);
        TestField("Return Qty. Shipped",0);
        TestField("Return Qty. Shipped (Base)",0);
        if "Unit of Measure Code" <> xRec."Unit of Measure Code" then begin
          TestField("Receipt No.",'');
          TestField("Return Shipment No.",'');
        #10..47
          "Qty. per Unit of Measure" := 0;

        Validate(Quantity);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..4
        #7..50
        */
        //end;
        field(50005; "QtytoReceiveAmount(LCY)"; Decimal)
        {
            Description = 'LC';
        }
        field(50300; "Freight(LCY)"; Decimal)
        {
        }
        field(50301; "Ancillary(LCY)"; Decimal)
        {
        }
        field(50302; "Duty(LCY)"; Decimal)
        {
        }
        field(50303; "Insurance(LCY)"; Decimal)
        {
        }
        field(50304; "Surcharge Duty(LCY)"; Decimal)
        {
        }
        field(50305; "Ecowas Duty(LCY)"; Decimal)
        {
        }
        field(50306; "CISS(LCY)"; Decimal)
        {
        }
        field(50307; "Vat (LCY)"; Decimal)
        {
        }
        field(50308; "Clearing(LCY)"; Decimal)
        {
        }
        field(50309; "Interest(LCY)"; Decimal)
        {
        }
        field(50310; "Duty Rate%"; Decimal)
        {
        }
        field(50320; "Total Overhead(LCY)"; Decimal)
        {
        }
        field(50321; "LandedAmount(LCY)"; Decimal)
        {
        }
        field(50322; "Place Order"; Boolean)
        {
            InitValue = true;
        }
        field(50330; "ActualFreight(LCY)"; Decimal)
        {
        }
        field(50331; "ActualAncillary(LCY)"; Decimal)
        {
        }
        field(50332; "ActualDuty(LCY)"; Decimal)
        {
        }
        field(50333; "ActualInsurance(LCY)"; Decimal)
        {
        }
        field(50334; "ActualSurcharge Duty(LCY)"; Decimal)
        {
        }
        field(50335; "ActualEcowas Duty(LCY)"; Decimal)
        {
        }
        field(50336; "ActualCISS(LCY)"; Decimal)
        {
        }
        field(50337; "ActualVat (LCY)"; Decimal)
        {
        }
        field(50338; "ActualClearing(LCY)"; Decimal)
        {
        }
        field(50339; "ActualInterest(LCY)"; Decimal)
        {
        }
        field(50340; "ActualDuty Rate%"; Decimal)
        {
        }
        field(50341; "ActualTotal Overhead(LCY)"; Decimal)
        {
        }
        field(50342; "ActualLandedAmount(LCY)"; Decimal)
        {
        }
        field(50350; "Previous Purchase Price(LCY)"; Decimal)
        {
        }
        field(50351; "Quantity Ordered"; Decimal)
        {
        }
        field(50352; "Pack Size"; Code[10])
        {
            TableRelation = "Unit of Measure" WHERE ("In Use" = CONST (true),
                                                     "Catch Code" = FILTER (<> ''));
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
        }
        field(50360; "Original Purc. Order No."; Code[20])
        {
        }
        field(50362; "External Document No."; Code[20])
        {
            Caption = 'External Document No.';
            TableRelation = IF ("Reason Code" = CONST ('USAGEFA')) "Fixed Asset" WHERE ("FA Class Code" = FILTER (<> 'TRAWLER'))
            ELSE
            IF ("Reason Code" = CONST ('USAGERES')) Location WHERE ("Location Type" = FILTER (Residence))
            ELSE
            IF ("Reason Code" = CONST ('USAGEVES')) Location WHERE ("Location Type" = FILTER (Vessel))
            ELSE
            IF ("Reason Code" = CONST ('USAGEOTR')) "Standard Text" WHERE (Others = CONST (true));
        }
        field(50364; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
    }


    //Unsupported feature: Code Modification on "OnModify".

    //trigger OnModify()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if ("Document Type" = "Document Type"::"Blanket Order") and
       ((Type <> xRec.Type) or ("No." <> xRec."No."))
    then begin
    #4..11
        until PurchLine2.Next = 0;
    end;

    if ((Quantity <> 0) or (xRec.Quantity <> 0)) and ItemExists(xRec."No.") then
      ReservePurchLine.VerifyChange(Rec,xRec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..14
    {
    //ReturnCheckReturn.PurchLineModify(Rec,xRec);

    ReservePurchLine.VerifyChange(Rec,xRec);

    //DistIntegration.RetCheckPurchLineModify(Rec,xRec);

    IF "Item Tracking No." <> 0 THEN
      ItemTrkgMgtPurchLine.ChangeItemTrackingPurchLine(Rec,xRec);
    //AAA-SEPT 17
    }  //#1
    if ((Quantity <> 0) or (xRec.Quantity <> 0)) and ItemExists(xRec."No.") then
      ReservePurchLine.VerifyChange(Rec,xRec);
    */
    //end;

    //Unsupported feature: Property Modification (Attributes) on "UpdatePrepmtSetupFields(PROCEDURE 102)".



    //Unsupported feature: Code Modification on "UpdateItemChargeAssgnt(PROCEDURE 5807)".

    //procedure UpdateItemChargeAssgnt();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "Document Type" = "Document Type"::"Blanket Order" then
      exit;

    #4..45
          TotalAmtToAssign -= ItemChargeAssgntPurch."Amount to Assign";
        end;
        ItemChargeAssgntPurch.Modify;
      until ItemChargeAssgntPurch.Next = 0;
      CalcFields("Qty. to Assign");
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..48
       until ItemChargeAssgntPurch.Next = 0;
      CalcFields("Qty. to Assign");
    end;
    */
    //end;

    procedure "-----"()
    begin
    end;

    procedure Addon()
    begin
    end;

    procedure GenNo()
    begin
        if (ProdCd <> '') and
           ("Pack Size Code" <> '') and
           ("Brand Code" <> '')
        then
            "No." := ProdCd + "Pack Size Code" + "Brand Code";
    end;

    procedure ItemAvailability(AvailabilityType: Option Date,Variant,Location,Bin)
    begin
        TestField(Type, Type::Item);
        TestField("No.");
        Item.Reset;
        Item.Get("No.");
        Item.SetRange("No.", "No.");
        Item.SetRange("Date Filter", 0D, "Expected Receipt Date");

        case AvailabilityType of
            AvailabilityType::Date:
                begin
                    Item.SetRange("Variant Filter", "Variant Code");
                    Item.SetRange("Location Filter", "Location Code");
                    Item.SetRange("Bin Filter", "Bin Code");
                    Clear(ItemAvailByDate);
                    ItemAvailByDate.LookupMode(true);
                    ItemAvailByDate.SetRecord(Item);
                    ItemAvailByDate.SetTableView(Item);
                    if ItemAvailByDate.RunModal = ACTION::LookupOK then
                        if "Expected Receipt Date" <> ItemAvailByDate.GetLastDate then
                            if Confirm(
                                 Text014, true, FieldCaption("Expected Receipt Date"),
                                 "Expected Receipt Date", ItemAvailByDate.GetLastDate)
                            then
                                Validate("Expected Receipt Date", ItemAvailByDate.GetLastDate);
                end;
            AvailabilityType::Variant:
                begin
                    Item.SetRange("Location Filter", "Location Code");
                    Item.SetRange("Bin Filter", "Bin Code");
                    Clear(ItemAvailByVar);
                    ItemAvailByVar.LookupMode(true);
                    ItemAvailByVar.SetRecord(Item);
                    ItemAvailByVar.SetTableView(Item);
                    if ItemAvailByVar.RunModal = ACTION::LookupOK then
                        if "Variant Code" <> ItemAvailByVar.GetLastVariant then
                            if Confirm(
                                 Text014, true, FieldCaption("Variant Code"), "Variant Code",
                                 ItemAvailByVar.GetLastVariant)
                            then
                                Validate("Variant Code", ItemAvailByVar.GetLastVariant);
                end;
            AvailabilityType::Location:
                begin
                    Item.SetRange("Variant Filter", "Variant Code");
                    Item.SetRange("Bin Filter", "Bin Code");
                    Clear(ItemAvailByLoc);
                    ItemAvailByLoc.LookupMode(true);
                    ItemAvailByLoc.SetRecord(Item);
                    ItemAvailByLoc.SetTableView(Item);
                    if ItemAvailByLoc.RunModal = ACTION::LookupOK then
                        if "Location Code" <> ItemAvailByLoc.GetLastLocation then
                            if Confirm(
                                 Text014, true, FieldCaption("Location Code"), "Location Code",
                                 ItemAvailByLoc.GetLastLocation)
                            then
                                Validate("Location Code", ItemAvailByLoc.GetLastLocation);
                end;
        end;
    end;

    var
        Item: Record Item;

    var
        "--------": Text[30];
        PurSetup: Record "Purchases & Payables Setup";
        PVariance: Record "ASL Payroll Setup";
        PVarianceX: Record "ASL Payroll Setup";
        PG: Integer;
        "..................": Integer;
        ItemAvailByDate: Page "Item Availability by Periods";
        Text014: Label 'Change %1 from %2 to %3?';
        ItemAvailByVar: Page "Item Availability by Variant";
        ItemAvailByLoc: Page "Item Availability by Location";
        ItemTrackingLines: Page "Item Tracking Lines";
}

