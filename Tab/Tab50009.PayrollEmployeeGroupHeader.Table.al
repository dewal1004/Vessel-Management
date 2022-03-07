table 50009 "Payroll-Employee Group Header."
{
    // Description
    // Created           : FTN, 12/3/93
    // File name         : KI03 P.Roll Header
    // Comments          : The Header card that is to be used to enter employee
    //                     groups
    // File details      : Primary Key is;
    //                      Code
    //                   : Relations;
    //                      None


    fields
    {
        field(1; "Code"; Code[10])
        {
            NotBlank = true;
        }
        field(2; "Search Name"; Code[10])
        {
        }
        field(5; "Gross Pay"; Decimal)
        {
            CalcFormula = Sum ("Payroll-Employee Group Lines."."Default Amount" WHERE ("Employee Group" = FIELD (Code),
                                                                                      "Payslip Group ID" = FILTER ("GROSS PAY")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Tax Charged"; Decimal)
        {
            CalcFormula = Sum ("Payroll-Employee Group Lines."."Default Amount" WHERE ("Employee Group" = FIELD (Code),
                                                                                      "Payslip Group ID" = FILTER ("TAX CHARGED")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Tax Deducted"; Decimal)
        {
            CalcFormula = Sum ("Payroll-Employee Group Lines."."Default Amount" WHERE ("Employee Group" = FIELD (Code),
                                                                                      "Payslip Group ID" = FILTER ("TAX DEDUCTED")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Taxable Pay"; Decimal)
        {
            CalcFormula = Sum ("Payroll-Employee Group Lines."."Default Amount" WHERE ("Employee Group" = FIELD (Code),
                                                                                      "Payslip Group ID" = FILTER ("TAXABLE PAY")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Total Deductions"; Decimal)
        {
            CalcFormula = Sum ("Payroll-Employee Group Lines."."Default Amount" WHERE ("Employee Group" = FIELD (Code),
                                                                                      "Payslip Group ID" = FILTER ("TOTAL DEDUCTIONS")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Net Pay Due"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Payroll-Employee Group Lines."."Default Amount" WHERE ("Employee Group" = FIELD (Code),
                                                                                      "Payslip Group ID" = FILTER ("NET PAY DUE")));
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Posting Group Code"; Code[10])
        {
            TableRelation = "Payroll-Posting Group Header."."Posting Group Code";
        }
        field(12; Grade; Code[2])
        {
        }
        field(13; Step; Code[2])
        {
        }
        field(14; Management; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Posting Group Code")
        {
        }
        key(Key3; Grade, Step)
        {
        }
        key(Key4; Grade)
        {
        }
        key(Key5; Step)
        {
        }
        key(Key6; Management)
        {
        }
    }

    fieldgroups
    {
    }
}

