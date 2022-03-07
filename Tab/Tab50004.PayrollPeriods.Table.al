table 50004 "Payroll-Periods."
{
    // Created           : FTN 8/3/93
    // File Name         : KI03 - P.Roll Period (1006)
    // Comments          : Payroll periods are created and stored in this file.
    // File details      : Primary Key;
    //                      Code
    //                   : Relations - None


    fields
    {
        field(1; "Period Code"; Code[10])
        {
            NotBlank = true;
        }
        field(2; "Start Date"; Date)
        {
            NotBlank = true;
        }
        field(3; "End Date"; Date)
        {
            NotBlank = true;
        }
        field(4; Name; Text[40])
        {
        }
        field(5; Closed; Boolean)
        {
            Editable = false;
        }
        field(6; "Search Name"; Code[20])
        {
        }
        field(7; "ED Delimitation"; Code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = "Payroll-E/D Codes.";
        }
        field(8; "Empl. Delimitation"; Code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = "Loan.";
        }
        field(9; EDAmount; Decimal)
        {
            CalcFormula = Sum ("Payroll-Payslip Lines.".Amount WHERE ("Payroll Period" = FIELD ("Period Code"),
                                                                     "Employee No" = FIELD ("ED Delimitation"),
                                                                     "E/D Code" = FIELD ("Empl. Delimitation")));
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Period Code")
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

