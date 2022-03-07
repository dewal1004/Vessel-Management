table 50008 "Payroll-Employee Group Lines."
{
    // Created           : FTN, 14/3/93
    // File name         : KI03 P.Emp.Grp Lines
    // Comments          : The Header card that is to be used to enter detail lines
    //                     for employee groups
    // File details      : Primary Key is;
    //                      Employee Group, E/D Code
    //                   : Relations;
    //                      To E/D File from E/D Code
    //                      To Finance Account from Debit and Credit Account No.
    //                   : Edit/Display fields;
    //                      Employee Group is a NoÙEdit field. It is intended to
    //                      be transfered from the P.Employee Grps. File i.e this
    //                      file should be used in a window that is called from
    //                      another in which the Employee Group is entered/displayed.
    //                   : Window
    // 
    // BDC 25/09/97       : Do not modify the line to be deleted


    fields
    {
        field(1; "Employee Group"; Code[20])
        {
            Editable = true;
            NotBlank = true;
            TableRelation = "Payroll-Employee Group Header.";
        }
        field(2; "E/D Code"; Code[20])
        {
            NotBlank = true;
            TableRelation = "Payroll-E/D Codes.";
        }
        field(3; Units; Text[10])
        {
            Editable = false;
        }
        field(4; Rate; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(5; Quantity; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(6; Flag; Boolean)
        {
        }
        field(7; "Default Amount"; Decimal)
        {
            DecimalPlaces = 2 : 2;
            InitValue = 0;
            NotBlank = true;
        }
        field(8; ChangeOthers; Boolean)
        {
            Editable = false;
            InitValue = false;
        }
        field(9; HasBeenChanged; Boolean)
        {
            Editable = false;
            InitValue = false;
        }
        field(10; ChangeCounter; Integer)
        {
            Editable = true;
            InitValue = 0;
        }
        field(11; "Employee Name"; Text[30])
        {
        }
        field(14; "ED Category"; Option)
        {
            Description = 'Added by for NSITF Report';
            OptionMembers = " ","NSITF Employee","NSITF Employer","Pension Employee","Pension Employer","Gross Salary","Net Pay";
        }
        field(15; "Old Default Amount"; Decimal)
        {
            DecimalPlaces = 2 : 2;
            Description = 'For Increments';
        }
        field(16; "Date Changed"; Date)
        {
            Description = 'For Increments';
        }
        field(17; "Payslip Group ID"; Option)
        {
            OptionMembers = " ","GROSS PAY","TAXABLE PAY","TAX CHARGED","TAX DEDUCTED","TOTAL DEDUCTIONS","NET PAY DUE";
        }
    }

    keys
    {
        key(Key1; "Employee Group", "E/D Code")
        {
            Clustered = true;
            SumIndexFields = "Default Amount";
        }
        key(Key2; "Default Amount")
        {
            SumIndexFields = "Default Amount";
        }
        key(Key3; "Employee Group", "Payslip Group ID")
        {
            SumIndexFields = "Default Amount";
        }
        key(Key4; "ED Category")
        {
            SumIndexFields = "Default Amount";
        }
    }

    fieldgroups
    {
    }
}

