table 50015 "Staff Log"
{

    fields
    {
        field(1; "Bar Code ID"; Code[10])
        {
            NotBlank = true;
        }
        field(2; "Staff No."; Code[10])
        {
            TableRelation = Employee."No.";
        }
        field(3; "Staff Name"; Text[30])
        {
        }
        field(4; "Log Date"; Date)
        {
        }
        field(5; "Log Time"; Time)
        {
        }
        field(6; "IN/OUT"; Option)
        {
            OptionMembers = "IN",OUT,OPBAL;
        }
        field(7; "Time in Premises"; Decimal)
        {
        }
    }

    keys
    {
        key(Key1; "Bar Code ID", "Log Date", "Log Time")
        {
            Clustered = true;
        }
        key(Key2; "IN/OUT", "Bar Code ID")
        {
        }
        key(Key3; "Staff No.")
        {
            SumIndexFields = "Time in Premises";
        }
        key(Key4; "Log Time", "IN/OUT")
        {
        }
    }

    fieldgroups
    {
    }
}

