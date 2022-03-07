table 50003 "Payroll-Lookup Lines."
{

    fields
    {
        field(1; TableId; Code[20])
        {
            NotBlank = true;
            TableRelation = "Payroll-Lookup Header.";
        }
        field(2; "Lower Amount"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(3; "Upper Amount"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(4; "Lower Code"; Code[20])
        {
        }
        field(5; "Upper Code"; Code[20])
        {
        }
        field(8; "Extract Amount"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(9; "Tax Rate %"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(10; "Cum. Tax Payable"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; TableId, "Lower Amount", "Lower Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

