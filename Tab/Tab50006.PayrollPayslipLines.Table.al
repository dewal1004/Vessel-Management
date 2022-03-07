table 50006 "Payroll-Payslip Lines."
{

    fields
    {
        field(1; "Payroll Period"; Code[10])
        {
            Editable = false;
            TableRelation = "Payroll-Periods.";
        }
        field(2; "Employee No"; Code[20])
        {
            Editable = false;
            NotBlank = true;
            TableRelation = Employee;
        }
        field(3; "E/D Code"; Code[20])
        {
            NotBlank = true;
            TableRelation = "Payroll-E/D Codes.";
        }
        field(4; Units; Text[10])
        {
            Editable = false;
        }
        field(5; Rate; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(6; Quantity; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(7; Flag; Boolean)
        {
        }
        field(8; Amount; Decimal)
        {
        }
        field(9; "Debit Account"; Code[20])
        {
            TableRelation = IF ("Debit Acc. Type" = CONST (Finance)) "G/L Account"
            ELSE
            IF ("Debit Acc. Type" = CONST (Customer)) Customer;
        }
        field(10; "Credit Account"; Code[20])
        {
            TableRelation = IF ("Credit Acc. Type" = CONST (Finance)) "G/L Account"
            ELSE
            IF ("Credit Acc. Type" = CONST (Customer)) Customer;
        }
        field(11; "Global Dimension 1 Code"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(12; "Global Dimension 2 Code"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(13; AmountToBook; Decimal)
        {
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(14; "Payslip Group ID"; Option)
        {
            OptionMembers = " ","GROSS PAY","TAXABLE PAY","TAX CHARGED","TAX DEDUCTED","TOTAL DEDUCTIONS","NET PAY DUE";
        }
        field(15; "Pos. In Payslip Grp."; Integer)
        {
        }
        field(16; "Payslip appearance"; Option)
        {
            OptionMembers = "Non-zero & Code","Always & Code","Always & Text","Non-zero & Text","Does not appear",Heading;
        }
        field(17; "Debit Acc. Type"; Option)
        {
            OptionMembers = Finance,Customer,Supplier;
        }
        field(18; "Credit Acc. Type"; Option)
        {
            OptionMembers = Finance,Customer,Supplier;
        }
        field(19; ChangeOthers; Boolean)
        {
            Editable = false;
            InitValue = false;
        }
        field(20; HasBeenChanged; Boolean)
        {
            Editable = false;
            InitValue = false;
        }
        field(21; ChangeCounter; Integer)
        {
            InitValue = 0;
        }
        field(22; "Payslip Column"; Option)
        {
            InitValue = "2";
            OptionMembers = "1","2","3";
        }
        field(23; "S. Report appearance"; Option)
        {
            OptionMembers = "Non-zero & Code","Always & Code","Always & Text","Non-zero & Text","Does not appear",Heading;
        }
        field(24; "Overline Column"; Option)
        {
            InitValue = "None";
            OptionMembers = "None","1","2","3","1-2","2-3","1-3";
        }
        field(25; "Underline Amount"; Option)
        {
            InitValue = "None";
            OptionMembers = "None",Underline,"Double Underline";
        }
        field(26; "Loan ID"; Code[10])
        {
            TableRelation = "Monthly Variables Header.";
        }
        field(27; "Payslip Print Column"; Option)
        {
            OptionMembers = " ",Postive,Negative,"Total Earning","Total Deduction","Net Earning";
        }
        field(28; "Payslip Text"; Text[100])
        {
        }
        field(29; "Variable Unit"; Option)
        {
            Editable = false;
            OptionMembers = " ",Hours,Days;
        }
        field(30; "Monthly Variable"; Boolean)
        {
            Description = 'Added for Overtime';
            Editable = false;
        }
        field(50000; "Postg Group"; Code[10])
        {
            TableRelation = "Payroll-Posting Group Header.";
        }
    }

    keys
    {
        key(Key1; "Payroll Period", "Employee No", "E/D Code")
        {
            Clustered = true;
            SumIndexFields = Amount;
        }
        key(Key2; "Payroll Period", "Global Dimension 1 Code", "Global Dimension 2 Code", "Debit Acc. Type", "Debit Account", "Credit Acc. Type", "Credit Account", "Loan ID")
        {
        }
        key(Key3; "Payroll Period", "Employee No", "Payslip Group ID", "Pos. In Payslip Grp.")
        {
        }
        key(Key4; "E/D Code", "Employee No", "Payroll Period")
        {
        }
        key(Key5; "Employee No", "Payroll Period")
        {
        }
        key(Key6; "Payroll Period", "Employee No", "Global Dimension 1 Code", "Global Dimension 2 Code")
        {
        }
        key(Key7; "Global Dimension 2 Code", "Global Dimension 1 Code")
        {
        }
        key(Key8; "Payslip Print Column", "E/D Code")
        {
        }
        key(Key9; "Debit Account", "Credit Account")
        {
            SumIndexFields = Amount;
        }
    }

    fieldgroups
    {
    }
}

