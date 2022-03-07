table 50027 "Training Courses"
{

    fields
    {
        field(1; "Courses Code"; Code[10])
        {
        }
        field(2; "Course Type"; Code[10])
        {
            TableRelation = "Course Types"."Course Type Code";
        }
        field(3; "Course Name"; Text[100])
        {
            Editable = false;
        }
        field(4; "Vendor Code"; Code[10])
        {
            TableRelation = IF ("Training Group" = FILTER (Mixed | Outdoor)) Vendor."No." WHERE (Trainer = CONST (true));
        }
        field(5; "Vendor name"; Text[30])
        {
            Editable = false;
        }
        field(6; Time; Time)
        {
        }
        field(7; "Course Start Date"; Date)
        {
        }
        field(8; "Course Duration"; Code[10])
        {
            DateFormula = true;
        }
        field(9; "Total Cost"; Decimal)
        {
            BlankZero = true;
            DecimalPlaces = 2 : 2;
        }
        field(10; "Unit Cost"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Average ("Course Attendance".Cost WHERE ("Training Course Code" = FIELD ("Courses Code")));
            FieldClass = FlowField;
        }
        field(11; Comment; Text[250])
        {
        }
        field(12; "No Series"; Code[10])
        {
        }
        field(13; "Region Code"; Code[10])
        {
        }
        field(14; "Global Dimension 1 Code"; Code[10])
        {
        }
        field(15; "Global Dimension 2 Code"; Code[10])
        {
        }
        field(16; "Total Vendor Cost"; Decimal)
        {
            FieldClass = Normal;
        }
        field(17; "Class Size"; Integer)
        {
            CalcFormula = Count ("Course Attendance" WHERE ("Training Course Code" = FIELD ("Courses Code")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "Course Description"; Text[100])
        {
        }
        field(19; "Training Group"; Option)
        {
            OptionMembers = " ",Mixed,Outdoor,"In-House";
        }
    }

    keys
    {
        key(Key1; "Courses Code")
        {
            Clustered = true;
            SumIndexFields = "Total Vendor Cost", "Total Cost";
        }
        key(Key2; "Vendor Code")
        {
            SumIndexFields = "Total Cost";
        }
        key(Key3; "Training Group", "Courses Code")
        {
            SumIndexFields = "Total Vendor Cost", "Total Cost";
        }
    }

    fieldgroups
    {
    }
}

