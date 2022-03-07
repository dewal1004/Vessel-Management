table 50021 Designation
{

    fields
    {
        field(1; "Code"; Code[10])
        {
        }
        field(2; Description; Text[30])
        {
        }
        field(3; "Default Employee Group"; Code[10])
        {
            TableRelation = "Payroll-Employee Group Header.".Code;
        }
        field(4; "Default Employee Cost"; Decimal)
        {
            FieldClass = Normal;
            TableRelation = "Payroll-Employee Group Header."."Gross Pay" WHERE (Code = FIELD ("Default Employee Group"));
        }
        field(5; Manager; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
            SumIndexFields = "Default Employee Cost";
        }
        key(Key2; "Default Employee Group")
        {
            SumIndexFields = "Default Employee Cost";
        }
    }

    fieldgroups
    {
    }
}

