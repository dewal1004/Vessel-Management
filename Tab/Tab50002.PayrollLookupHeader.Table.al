table 50002 "Payroll-Lookup Header."
{

    fields
    {
        field(1; TableId; Code[20])
        {
            NotBlank = true;
        }
        field(2; Type; Option)
        {
            NotBlank = true;
            OptionMembers = Numeric,"Code",Tax;
        }
        field(3; Description; Text[50])
        {
        }
        field(4; "Search Name"; Code[20])
        {
        }
        field(6; "Max. Extract Amount"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(7; "Min. Extract Amount"; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(8; "Input Factor"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            InitValue = 1;
            MinValue = 0;
            NotBlank = true;
        }
        field(9; "Output Factor"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            InitValue = 1;
            MinValue = 0;
            NotBlank = true;
        }
        field(10; "Rounding Precision"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(11; "Rounding Direction"; Option)
        {
            OptionMembers = Nearest,Higher,Lower;
        }
    }

    keys
    {
        key(Key1; TableId)
        {
            Clustered = true;
        }
        key(Key2; "Search Name")
        {
        }
    }

    fieldgroups
    {
    }
}

