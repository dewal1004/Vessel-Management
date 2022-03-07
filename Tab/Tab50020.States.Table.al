table 50020 States
{

    fields
    {
        field(1; "code"; Code[3])
        {
        }
        field(2; Name; Text[30])
        {
        }
    }

    keys
    {
        key(Key1; "code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

