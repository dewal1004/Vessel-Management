table 50037 "Job catch Default"
{
    Caption = 'Job Catch Default';

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            InitValue = Job;
            OptionCaption = 'G/L Account,Customer,Vendor,Item,Resource,Job,,Resource Group,Bank Account,Campaign,Fixed Asset,Insurance,Engineering Change';
            OptionMembers = "G/L Account",Customer,Vendor,Item,Resource,Job,,"Resource Group","Bank Account",Campaign,"Fixed Asset",Insurance,"Engineering Change";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF ("Table Name" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Table Name" = CONST (Customer)) Customer
            ELSE
            IF ("Table Name" = CONST (Vendor)) Vendor
            ELSE
            IF ("Table Name" = CONST (Item)) Item
            ELSE
            IF ("Table Name" = CONST (Resource)) Resource
            ELSE
            IF ("Table Name" = CONST (Job)) Job
            ELSE
            IF ("Table Name" = CONST ("Resource Group")) "Resource Group"
            ELSE
            IF ("Table Name" = CONST ("Bank Account")) "Bank Account"
            ELSE
            IF ("Table Name" = CONST (Campaign)) Campaign
            ELSE
            IF ("Table Name" = CONST ("Fixed Asset")) "Fixed Asset"
            ELSE
            IF ("Table Name" = CONST (Insurance)) Insurance;
        }
        field(5; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(6; Description; Text[30])
        {
        }
        field(7; "Pack Size"; Code[10])
        {
            TableRelation = "Unit of Measure" WHERE ("In Use" = CONST (true),
                                                     "Catch Code" = FILTER (<> ''));
        }
        field(9; Brand; Code[10])
        {
            TableRelation = "Reason Code" WHERE ("In Use" = CONST (true),
                                                 Type = CONST (Brands));
        }
        field(16; "Statistics Group"; Integer)
        {
            Caption = 'Statistics Group';
        }
        field(17; "S/No."; Integer)
        {
        }
        field(50300; "Budget Quantity"; Decimal)
        {
            DecimalPlaces = 0 : 2;
        }
        field(50301; "Marked Rec"; Boolean)
        {
            Description = 'For Voyage P&L Reporting Marked current entrie to be reported, cleared at the end of D Rep.';
        }
        field(50325; GroupSort; Code[15])
        {
            Description = 'Voyage P&L Reporting';
        }
        field(50326; Vessel; Code[10])
        {
            Description = 'Voyage Comparims Reportg';
        }
        field(50327; "Item No."; Code[20])
        {
        }
        field(50328; "Reported catch"; Decimal)
        {
            CalcFormula = - Sum ("Job Ledger Entry".Quantity WHERE ("Job No." = FIELD ("No."),
                                                                  "No." = FIELD ("Item No.")));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Table Name", "No.", "Code", "Pack Size")
        {
            Clustered = true;
        }
        key(Key2; "S/No.")
        {
        }
        key(Key3; "No.", GroupSort)
        {
        }
        key(Key4; GroupSort)
        {
        }
        key(Key5; GroupSort, "Marked Rec", Vessel)
        {
            SumIndexFields = "Budget Quantity";
        }
        key(Key6; "Code", "Budget Quantity")
        {
            SumIndexFields = "Budget Quantity";
        }
        key(Key7; Vessel)
        {
        }
    }

    fieldgroups
    {
    }
}

