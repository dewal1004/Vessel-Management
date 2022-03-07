table 50007 "Payroll-Payslip Header."
{
    // Created           : FTN, 8/3/93
    // File name         : KI03b P.Roll Header
    // Comments          : Just to test the Header card that is intended to be used
    //                     as the main user interface for entering periodic employee
    //                     payroll details.
    // File details      : Primary Key is;
    //                      Payroll Period, Employee No
    //                   : Relations;
    //                      To Employee files
    // Display fields are: Period start, Period end and Period name, Employee name

    DataCaptionFields = "Payroll Period", "Employee No", "Employee Name";

    fields
    {
        field(1; "Payroll Period"; Code[20])
        {
            NotBlank = true;
            TableRelation = "Payroll-Periods.";
        }
        field(2; "Period Start"; Date)
        {
            Editable = false;
        }
        field(3; "Period End"; Date)
        {
            Editable = false;
        }
        field(4; "Period Name"; Text[40])
        {
            Editable = false;
        }
        field(5; Company; Code[20])
        {
            Editable = false;
        }
        field(7; Section; Code[20])
        {
            Editable = false;
        }
        field(8; "Employee No"; Code[20])
        {
            TableRelation = Employee;
        }
        field(9; "Employee Name"; Text[40])
        {
            Editable = false;
        }
        field(11; "Closed?"; Boolean)
        {
            Editable = false;
        }
        field(12; "Gross Pay"; Decimal)
        {
            Editable = false;
        }
        field(13; "Tax Charged"; Decimal)
        {
            Editable = false;
        }
        field(14; "Tax Deducted"; Decimal)
        {
            Editable = false;
        }
        field(15; "Taxable Pay"; Decimal)
        {
            Editable = false;
        }
        field(16; "Total Deductions"; Decimal)
        {
            Editable = false;
        }
        field(17; "Net Pay Due"; Decimal)
        {
            Editable = false;
        }
        field(18; "Total Relief"; Decimal)
        {
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(19; "Global Dimension 1 Code"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(20; "Global Dimension 2 Code"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(21; "Customer Number"; Code[20])
        {
            TableRelation = Customer;
        }
        field(22; Designation; Text[30])
        {
        }
        field(23; EDFILTER; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Payroll-E/D Codes."."E/D Code";
        }
        field(24; Edvalue; Decimal)
        {
            CalcFormula = Sum ("Payroll-Payslip Lines.".Amount WHERE ("Payroll Period" = FIELD ("Payroll Period"),
                                                                     "Employee No" = FIELD ("Employee No"),
                                                                     "E/D Code" = FIELD (EDFILTER)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Debit Amount"; Decimal)
        {
            CalcFormula = Sum ("Payroll-Payslip Lines.".Amount WHERE ("Payroll Period" = FIELD ("Payroll Period"),
                                                                     "Employee No" = FIELD ("Employee No"),
                                                                     "Debit Account" = FILTER (<> '')));
            FieldClass = FlowField;
        }
        field(26; "Credit Amount"; Decimal)
        {
            CalcFormula = Sum ("Payroll-Payslip Lines.".Amount WHERE ("Payroll Period" = FIELD ("Payroll Period"),
                                                                     "Employee No" = FIELD ("Employee No"),
                                                                     "Credit Account" = FILTER (<> '')));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Payroll Period", "Employee No")
        {
            Clustered = true;
        }
        key(Key2; "Employee No", "Payroll Period")
        {
        }
        key(Key3; Company, "Employee No", "Payroll Period")
        {
        }
    }

    fieldgroups
    {
    }
}

