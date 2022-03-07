table 50028 "Course Attendance"
{

    fields
    {
        field(1; "Rec No."; Integer)
        {
        }
        field(2; "Training Course Code"; Code[10])
        {
            TableRelation = "Training Courses"."Courses Code";
        }
        field(3; "Course name"; Text[30])
        {
            Editable = false;
        }
        field(4; "Employee No"; Code[10])
        {
            TableRelation = Employee;
        }
        field(5; "Employee Name"; Text[100])
        {
            Editable = false;
        }
        field(6; "Region Code"; Code[10])
        {
            Editable = false;
        }
        field(7; "Global Dimension 1 Code"; Code[10])
        {
            Editable = false;
        }
        field(8; "Global Dimension 2 Code"; Code[10])
        {
            Editable = false;
        }
        field(9; "Start Date"; Date)
        {
            Editable = false;
        }
        field(10; Cost; Decimal)
        {
            BlankZero = true;
            Editable = false;
        }
        field(11; Comments; Text[100])
        {
        }
        field(12; "Course Line No."; Integer)
        {
            Editable = false;
        }
        field(13; "Training Group"; Option)
        {
            OptionMembers = " ",Mixed,Outdoor,"In-House";
        }
    }

    keys
    {
        key(Key1; "Training Course Code", "Employee No")
        {
            Clustered = true;
            SumIndexFields = Cost;
        }
        key(Key2; "Training Group", "Training Course Code", "Course Line No.")
        {
            SumIndexFields = Cost;
        }
        key(Key3; "Employee No", "Training Course Code")
        {
            SumIndexFields = Cost;
        }
        key(Key4; "Training Course Code", "Course Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

