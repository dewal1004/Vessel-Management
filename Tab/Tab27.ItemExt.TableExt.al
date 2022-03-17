tableextension 50212 tableextension50212 extends Item
{
    fields
    {

        //Unsupported feature: Property Insertion (InitValue) on ""Costing Method"(Field 21)".


        //Unsupported feature: Property Modification (MinValue) on ""Indirect Cost %"(Field 28)".


        //Unsupported feature: Property Modification (CalcFormula) on ""Transferred (Qty.)"(Field 93)".


        //Unsupported feature: Property Modification (Editable) on ""Transferred (Qty.)"(Field 93)".


        //Unsupported feature: Property Insertion (ValidateTableRelation) on ""Product Group Code"(Field 5704)".


        //Unsupported feature: Property Insertion (Enabled) on ""Substitutes Exist"(Field 5706)".


        //Unsupported feature: Property Insertion (Enabled) on ""Service Item Group"(Field 5900)".


        //Unsupported feature: Property Insertion (Enabled) on ""Qty. on Service Order"(Field 5901)".


        //Unsupported feature: Property Insertion (Enabled) on ""Planning Issues (Qty.)"(Field 99000761)".


        //Unsupported feature: Property Insertion (Enabled) on ""Prod. Forecast Quantity (Base)"(Field 99000774)".


        //Unsupported feature: Code Insertion on ""Reorder Quantity"(Field 36)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*

        if "Order Multiple" <>0 then Modus:="Reorder Quantity"/"Order Multiple";
        if Modus>Round(Modus, 0.001, '<') then
        Message('The entry in not a multiple of order multiple');
        */
        //end;

        //Unsupported feature: Property Deletion (CaptionML) on "Inventory(Field 68)".



        //Unsupported feature: Code Insertion on ""Order Multiple"(Field 5414)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*

        if "Order Multiple" <>0 then Modus:="Reorder Quantity"/"Order Multiple";
        if Modus>Round(Modus, 0.001, '<') then
        Message('The entry in not a factor of reorder quatity');
        */
        //end;
        field(50000; "Responsibility Center"; Text[30])
        {
        }
        field(50001; "Last Direct Cost2"; Decimal)
        {
        }
        field(50002; "Last Direct Cost3"; Decimal)
        {
        }
        field(50099; "Monthly Consumption"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50293; "Transferred (Qty.) From Loc"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            Description = 'Transfer from Location';
            Editable = false;
        }
        field(50294; "Inventory Value"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(50300; "Last Imported Cost"; Decimal)
        {
        }
        field(50301; "Last Local Cost"; Decimal)
        {
        }
        field(50302; FOB; Decimal)
        {
        }
        field(50303; Freight; Decimal)
        {
        }
        field(50304; "Ancillary Charges"; Decimal)
        {
        }
        field(50305; Insurance; Decimal)
        {
        }
        field(50306; "Duty Rate%"; Decimal)
        {
        }
        field(50307; "Surcharge On Duty"; Decimal)
        {
        }
        field(50308; "Ecowas Duty"; Decimal)
        {
        }
        field(50309; CISS; Decimal)
        {
        }
        field(50310; Vat; Decimal)
        {
        }
        field(50311; Clearing; Decimal)
        {
        }
        field(50312; "Interest Expense"; Decimal)
        {
        }
        field(50313; "Total Qty Shipped"; Decimal)
        {
        }
        field(50315; "Last Purchase Cost"; Decimal)
        {
            FieldClass = Normal;
        }
        field(50321; "Order Fillter"; Code[20])
        {
            Description = 'Set Filter on Order X to be able to see the Next Three values';
            FieldClass = FlowFilter;
            TableRelation = "Purch. Rcpt. Header"."No.";
        }
        field(50322; "Inventory Entry Type Filter"; Option)
        {
            FieldClass = FlowFilter;
            OptionMembers = Purchase,Sale,"Positive Adjmt.","Negative Adjmt.",Transfer,Consumption,Output;
        }
        field(50323; "Fishing Area Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(50325; "VReceived Qty"; Decimal)
        {
            Description = 'Quantity Received from an Order X';
            Editable = false;
        }
        field(50326; "VSupplimentary Qty"; Decimal)
        {
            Description = 'Additional Quatity supplied on the Order X';
            Editable = false;
        }
        field(50327; "VOrdered Qty"; Decimal)
        {
            Description = 'Original Quantity requested for on the Order X';
            Editable = false;
        }
        field(50368; "Inventory Total"; Decimal)
        {
            Caption = 'Inventory Total';
            DecimalPlaces = 0 : 5;
            Description = 'Excluding Cold room';
            Editable = false;
        }
        field(50369; "Inventory Total2"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            Description = 'Excluding Cold room & Source Code <>''''';
            Editable = false;
        }
        field(50400; Points; Decimal)
        {
            DecimalPlaces = 0 : 4;
            Description = 'Catch points for the fish';
        }
        field(50405; "CRM / STR"; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Item No." = FIELD ("No."),
                                                                  "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                  "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                  "Location Code" = FIELD ("Location Filter"),
                                                                  "Drop Shipment" = FIELD ("Drop Shipment Filter"),
                                                                  "Variant Code" = FIELD ("Variant Filter"),
                                                                  "Lot No." = FIELD ("Lot No. Filter"),
                                                                  "Serial No." = FIELD ("Serial No. Filter"),
                                                                  "Location Code" = FILTER ('STORE MAIN')));
            DecimalPlaces = 0 : 5;
            Description = 'Inventory of items in Cold Room/Store';
            Editable = true;
            FieldClass = FlowField;
        }
        field(50410; "Oldest Stock"; Decimal)
        {
        }
        field(50411; "Oldest Open Date"; Date)
        {
        }
        field(50500; "Vessel Consumption rate"; Option)
        {
            Description = 'Rate at which Item is consumed on the Vessel';
            InitValue = Total;
            OptionMembers = Total,Partial;
        }
        field(50501; "Item Category No."; Integer)
        {
        }
        field(50523; "Source No. Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(55427; "S/No."; Integer)
        {
        }
        field(55500; Brand; Code[1])
        {
        }
        field(55501; Pack; Code[2])
        {
        }
        field(55502; ProdCd; Code[3])
        {
        }
        field(55505; "Pack Size (Kg)."; Decimal)
        {
        }
        field(55510; "SF Cat"; Code[20])
        {
        }
        field(55560; "Monthly Ave. Dem"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            Description = 'Monthly Average Demand';
            Editable = false;
        }
        field(55561; "Monthly Ave. Dem Val"; Decimal)
        {
            Description = 'Monthly Average Demand';
        }
        field(55562; "Cover Period"; Decimal)
        {
        }
        field(55570; "Issues Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Standard Text" WHERE (Others = CONST (true),
                                                   Type = CONST (crmissue));
        }
        field(55571; "Transfered (Qty.)"; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry"."Invoiced Quantity" WHERE ("Entry Type" = CONST (Transfer),
                                                                             "Item No." = FIELD ("No."),
                                                                             "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                                             "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                                             "Location Code" = FIELD ("Location Filter"),
                                                                             "Drop Shipment" = FIELD ("Drop Shipment Filter"),
                                                                             "Variant Code" = FIELD ("Variant Filter"),
                                                                             "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Transfered (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(55573; "Posve Adjmt. (Qty.)"; Decimal)
        {
            Caption = 'Positive Adjmt. (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(55574; "Negve Adjmt. (Qty.)"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(55575; "Sales Value"; Decimal)
        {
            CalcFormula = - Sum ("Sales Invoice Line".Amount WHERE ("No." = FIELD ("No."),
                                                                  "Location Code" = FIELD ("Location Filter"),
                                                                  "Shipment Date" = FIELD ("Date Filter")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(55601; "Ves Budg Type 1"; Decimal)
        {
            DecimalPlaces = 0 : 2;
        }
        field(55602; "Ves Budg Type 2"; Decimal)
        {
            DecimalPlaces = 0 : 2;
        }
        field(55603; "Ves Budg Type 3"; Decimal)
        {
            DecimalPlaces = 0 : 2;
        }
        field(55610; "Annual Budget Method"; Boolean)
        {
        }
        field(55611; "Starting Date"; Date)
        {
        }
        field(55612; Class; Code[10])
        {
            Caption = 'Class';
            Description = '(L)ocal,(I)nternational Purchase,(C)atch,(S)ample';
        }
        field(55613; "Foreign Posting Group"; Code[10])
        {
            Caption = 'Foreign Posting Group';
            TableRelation = "Inventory Posting Group";
        }
        field(55614; "Local Posting Group"; Code[10])
        {
            Caption = 'Local Posting Group';
            TableRelation = "Inventory Posting Group";
        }
    }
    keys
    {

        //Unsupported feature: Deletion (KeyCollection) on ""Service Item Group"(Key)".

        key(ASLKeyA1; "Item Category Code", "No. 2")
        {
        }
        key(Key2; "SF Cat")
        {
        }
        key(ASLKey3; "Cover Period")
        {
        }
        key(Key4; "S/No.")
        {
        }
        key(Key5; "Oldest Stock", "Oldest Open Date")
        {
        }
        key(Key6; "Oldest Open Date")
        {
        }
    }


    //Unsupported feature: Code Modification on "OnDelete".

    //trigger OnDelete()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    ApprovalsMgmt.OnCancelItemApprovalRequest(Rec);

    CheckJournalsAndWorksheets(0);
    CheckDocuments(0);

    MoveEntries.MoveItemEntries(Rec);

    ServiceItem.Reset;
    ServiceItem.SetRange("Item No.","No.");
    if ServiceItem.Find('-') then
      repeat
        ServiceItem.Validate("Item No.",'');
        ServiceItem.Modify(true);
      until ServiceItem.Next = 0;

    DeleteRelatedData;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
            ApprovalsMgmt.OnCancelItemApprovalRequest(Rec);
    #2..7
     ServiceItem.Reset;
     ServiceItem.SetRange("Item No.","No.");
     if ServiceItem.Find('-') then
    #11..16
    */
    //end;


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "No." = '' then begin
      GetInvtSetup;
      InvtSetup.TestField("Item Nos.");
      NoSeriesMgt.InitSeries(InvtSetup."Item Nos.",xRec."No. Series",0D,"No.","No. Series");
      "Costing Method" := InvtSetup."Default Costing Method";
    end;

    DimMgt.UpdateDefaultDim(
      DATABASE::Item,"No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");

    UpdateReferencedIds;
    SetLastDateTimeModified;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6
    "Global Dimension 2 Code":='ATLANTIC';     //AAA - Oct 2002  //>>
    #7..13
    */
    //end;

    procedure "------------------------"()
    begin
    end;

    procedure MthlyAveDemand(ItemNo: Code[20]; DateFilter: Text[100]; LocFilter: Text[100]): Decimal
    var
        ItemLedgEntry: Record "Item Ledger Entry";
        Qty: Decimal;
    begin
        Qty := 0;
        ItemLedgEntry.SetCurrentKey("Entry Type", "Item No.", "Posting Date", "Location Code");
        ItemLedgEntry.SetFilter("Item No.", ItemNo);
        if LocFilter <> '' then
            ItemLedgEntry.SetFilter("Location Code", LocFilter);
        if DateFilter <> '' then
            ItemLedgEntry.SetFilter("Posting Date", DateFilter);
        ItemLedgEntry.SetFilter("Entry Type", '%1|%2|%3', 1, 3, 4);
        if ItemLedgEntry.Find('-') then begin
            repeat
                Qty := Qty + ItemLedgEntry.Quantity;
            until ItemLedgEntry.Next = 0;
            exit(Qty);
        end else
            exit(0);
    end;

    procedure PosAdjmtQty(ItemNo: Code[20]; DateFilter: Text[100]; LocFilter: Text[100]; ExtDocFilter: Text[100]): Decimal
    var
        ItemLedgEntry: Record "Item Ledger Entry";
        Qty: Decimal;
    begin
        Qty := 0;
        ItemLedgEntry.SetCurrentKey("Entry Type", "Item No.", "Posting Date", "Location Code");
        ItemLedgEntry.SetRange("Entry Type", ItemLedgEntry."Entry Type"::"Positive Adjmt.");
        ItemLedgEntry.SetFilter("Item No.", ItemNo);
        if LocFilter <> '' then
            ItemLedgEntry.SetFilter("Location Code", LocFilter);
        if DateFilter <> '' then
            ItemLedgEntry.SetFilter("Posting Date", DateFilter);
        if ExtDocFilter <> '' then
            ItemLedgEntry.SetFilter("External Document No.", ExtDocFilter);
        ItemLedgEntry.SetFilter("Source No.", '<>%1', '');
        if ItemLedgEntry.Find('-') then begin
            repeat
                Qty := Qty + ItemLedgEntry."Invoiced Quantity";
            until ItemLedgEntry.Next = 0;
            exit(Qty);
        end else
            exit(0);
    end;

    procedure NegAdjmtQty(ItemNo: Code[20]; DateFilter: Text[100]; LocFilter: Text[100]; ExtDocFilter: Text[100]): Decimal
    var
        ItemLedgEntry: Record "Item Ledger Entry";
        Qty: Decimal;
    begin
        Qty := 0;
        ItemLedgEntry.SetCurrentKey("Entry Type", "Item No.", "Posting Date", "Location Code");
        ItemLedgEntry.SetRange("Entry Type", ItemLedgEntry."Entry Type"::"Negative Adjmt.");
        ItemLedgEntry.SetFilter("Item No.", ItemNo);
        if LocFilter <> '' then
            ItemLedgEntry.SetFilter("Location Code", LocFilter);
        if DateFilter <> '' then
            ItemLedgEntry.SetFilter("Posting Date", DateFilter);
        if ExtDocFilter <> '' then
            ItemLedgEntry.SetFilter("External Document No.", ExtDocFilter);
        ItemLedgEntry.SetFilter("Source No.", '<>%1', '');
        if ItemLedgEntry.Find('-') then begin
            repeat
                Qty := Qty + ItemLedgEntry."Invoiced Quantity";
            until ItemLedgEntry.Next = 0;
            exit(-Qty);
        end else
            exit(0);
    end;


    //Unsupported feature: Property Modification (Id) on "SelectItemErr(Variable 1083)".

    //var
    //>>>> ORIGINAL VALUE:
    //SelectItemErr : 1083;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectItemErr : 1088;
    //Variable type has not been exported.

    var
        "----": Text[30];
        Modus: Decimal;
        ItCat: Record "Item Category";
}

