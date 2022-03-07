table 50033 "Sea Food categories"
{

    fields
    {
        field(1; "Sea food code"; Code[15])
        {
        }
        field(2; "Sea food Description"; Text[30])
        {
        }
        field(3; "Entry code"; Code[10])
        {
        }
        field(4; "Landed Value"; Decimal)
        {
        }
        field(5; "Do not show"; Boolean)
        {
        }
        field(6; Export; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "Sea food code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

