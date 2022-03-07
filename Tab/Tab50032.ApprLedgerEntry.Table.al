table 50032 "Appr. Ledger Entry"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Usage,Sale';
            OptionMembers = Usage,Sale;
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(5; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            TableRelation = Resource;
        }
        field(6; "Resource Group No."; Code[20])
        {
            Caption = 'Resource Group No.';
            TableRelation = "Resource Group";
        }
        field(7; Description; Text[150])
        {
            Caption = 'Description';
        }
        field(8; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(9; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(10; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(11; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(12; "Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost';
        }
        field(13; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
        }
        field(14; "Total Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost';
        }
        field(15; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
        }
        field(16; "Total Price"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price';
        }
        field(17; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(18; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(20; "User ID"; Code[20])
        {
            Caption = 'User ID';
            //TableRelation = Table2000000002;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(21; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(22; Chargeable; Boolean)
        {
            Caption = 'Chargeable';
            InitValue = true;
        }
        field(23; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
        }
        field(24; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(25; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(26; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(27; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(28; "External Document No."; Code[20])
        {
            Caption = 'External Document No.';
        }
        field(29; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(50301; Comment; Text[100])
        {
        }
        field(50302; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Account (G/L),Item,Resource,Fixed Asset,Charge (Item),Skill,Performance';
            OptionMembers = " ","Account (G/L)",Item,Resource,"Fixed Asset","Charge (Item)",Skill,Performance;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Resource No.", "Posting Date")
        {
        }
        key(Key3; "Entry Type", Chargeable, "Unit of Measure Code", "Resource No.", "Posting Date")
        {
            SumIndexFields = Quantity, "Total Cost", "Total Price";
        }
        key(Key4; "Entry Type", Chargeable, "Unit of Measure Code", "Resource Group No.", "Posting Date")
        {
            SumIndexFields = Quantity, "Total Cost", "Total Price";
        }
        key(Key5; "Document No.", "Posting Date")
        {
        }
    }

    fieldgroups
    {
    }
}

