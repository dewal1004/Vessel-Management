tableextension 50226 tableextension50226 extends "Comment Line"
{
    fields
    {
        modify("Table Name")
        {
            OptionCaption = 'G/L Account,Customer,Vendor,Item,Resource,Job,,Resource Group,Bank Account,Campaign,Fixed Asset,Insurance,Nonstock Item,IC Partner,Job Journal Line';

            //Unsupported feature: Property Modification (OptionString) on ""Table Name"(Field 1)".

        }

        //Unsupported feature: Property Modification (Data type) on "Comment(Field 6)".

        field(50000; "Day Lost Cause"; Code[10])
        {
            TableRelation = "Lost Days".Code;
        }
        field(50001; "Day Lost Location"; Option)
        {
            OptionMembers = PORT,SEA;
        }
        field(50002; "Days Lost"; Decimal)
        {
        }
        field(50003; Vessel; Code[10])
        {
            TableRelation = Location WHERE ("Location Type" = CONST (Vessel));
        }
        field(50004; "Global Dimension 1 Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(50005; "Global Dimension 2 Code"; Code[20])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(50006; "Hours Lost"; Decimal)
        {
        }
        field(50010; Type; Option)
        {
            OptionMembers = " ",Narration,Organoleptic;
        }
        field(50020; "Operation No."; Code[10])
        {
            TableRelation = Job WHERE (Vessel = FIELD (Vessel),
                                       Status = CONST (Completed));
        }
        field(50021; Voyage; Code[10])
        {
        }
        field(50022; Captain; Code[20])
        {
        }
        field(50023; "Date Code"; Date)
        {
        }
        field(50024; "Frozen Weight W/O I/C"; Decimal)
        {
        }
        field(50025; "Drained Weight (KGS)"; Decimal)
        {
            DecimalPlaces = 0 : 3;
        }
        field(50026; "Count/Kg"; Decimal)
        {
            DecimalPlaces = 0 : 3;
        }
        field(50027; "TTL No. Pcs/Slab"; Decimal)
        {
            DecimalPlaces = 0 : 3;
        }
        field(50028; "Upper Grade Count"; Decimal)
        {
            DecimalPlaces = 0 : 3;
        }
        field(50029; "Lower Grade Count"; Decimal)
        {
            DecimalPlaces = 0 : 3;
        }
        field(50030; "Uniformity Ratio"; Decimal)
        {
            DecimalPlaces = 0 : 3;
        }
        field(50031; "Dehydration%"; Decimal)
        {
            DecimalPlaces = 0 : 3;
        }
        field(50032; "Discolouration%"; Decimal)
        {
            DecimalPlaces = 0 : 3;
        }
        field(50033; "Black Spot%"; Decimal)
        {
            DecimalPlaces = 0 : 3;
        }
        field(50034; "Broken%"; Decimal)
        {
            DecimalPlaces = 0 : 3;
        }
        field(50035; "Mech Damage%"; Decimal)
        {
            DecimalPlaces = 0 : 3;
        }
        field(50036; "General Appearance"; Option)
        {
            OptionMembers = Ok," Not Ok";
        }
        field(50037; "Foreign Matter"; Option)
        {
            OptionMembers = Nil,Present;
        }
        field(50038; Odour; Option)
        {
            OptionMembers = Fresh,Satisfactory;
        }
        field(50039; "Overall Remark"; Option)
        {
            OptionMembers = Fair,Pass,Fail;
        }
        field(50040; Deductible; Boolean)
        {
        }
        field(50041; Grade; Code[10])
        {
            NotBlank = true;
            TableRelation = Item."No.";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(50042; "Pack Size"; Code[10])
        {
            TableRelation = "Unit of Measure" WHERE ("In Use" = CONST (true),
                                                     "Catch Code" = FILTER (<> ''));
        }
        field(50043; Brand; Code[10])
        {
            TableRelation = "Reason Code" WHERE ("In Use" = CONST (true),
                                                 Type = CONST (Brands));
        }
        field(50045; "Mix Up%"; Decimal)
        {
            DecimalPlaces = 0 : 3;
        }
        field(50046; "Loose Shells%"; Decimal)
        {
            DecimalPlaces = 0 : 2;
        }
        field(50047; "Loose Neck%"; Decimal)
        {
            DecimalPlaces = 0 : 2;
        }
        field(50463; "Fuel Consumed"; Decimal)
        {
        }
        field(50464; "Fuel Days"; Decimal)
        {
            DecimalPlaces = 0 : 0;
        }
        field(50466; "Fuel Average"; Decimal)
        {
        }
    }
    keys
    {
        key(Key1;"Day Lost Cause", "Day Lost Location", Vessel)
        {
            Enabled = false;
            SumIndexFields = "Days Lost";
        }
        key(Key2; "Hours Lost")
        {
        }
        key(Key3; Deductible, "Day Lost Cause", "Day Lost Location", Vessel)
        {
            SumIndexFields = "Days Lost";
        }
    }


    //Unsupported feature: Code Insertion on "OnInsert".

    //trigger OnInsert()
    //begin
    /*
    "Global Dimension 2 Code":='ATLANTIC';     //AAA - Oct 2002:='ATLANTIC';
    */
    //end;

    //Unsupported feature: Parameter Insertion (Parameter: RECS) (ParameterCollection) on "SetUpNewLine(PROCEDURE 1)".



    //Unsupported feature: Code Modification on "SetUpNewLine(PROCEDURE 1)".

    //procedure SetUpNewLine();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    CommentLine.SetRange("Table Name","Table Name");
    CommentLine.SetRange("No.","No.");
    CommentLine.SetRange(Date,WorkDate);
    if not CommentLine.FindFirst then
      Date := WorkDate;

    OnAfterSetUpNewLine(Rec,CommentLine);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
      CommentLine.SetRange(Type,Type);  //AAA Dec 05 2002;
    #4..7
    */
    //end;

    procedure ETA(): Date
    begin
        //Univision Start 20/01/03
        if Jobss1.Get("Operation No.") then
            exit(Jobss1."Ending Date");
        //Univision Finish 20/01/03
    end;

    procedure ETD(): Date
    begin
        //Univision Start 20/01/03
        if Jobss1.Get("Operation No.") then
            exit(Jobss1."Starting Date");
        //Univision Finish 20/01/03
    end;

    procedure "GRADE(Text)"(): Text[100]
    begin
        //Univision Start 20/01/03
        if Item.Get(Grade) then
            exit(Item.Description);
        //Univision Finish 20/01/03
    end;

    procedure Description(): Text[100]
    begin
        if seaport.Get("Day Lost Cause") then exit(seaport.Description);

        /*
          -> disabled key (Global Dimension 1 Code,Global Dimension 2 Code,Date,Day Lost Cause,Day Lost Location,Vessel);
          -> modified key (No.,Table Name,Deductible) to
            (No.,Table Name,Deductible,Date,Day Lost Cause,Day Lost Location,Vessel)
        */

    end;

    var
        seaport: Record "Lost Days";
        Operation: Record Job;
        Jobss: Record Job;
        Jobss1: Record Job;
        UOM: Record "Unit of Measure";
        Item: Record Item;
}

