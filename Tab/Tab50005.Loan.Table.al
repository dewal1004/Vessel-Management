table 50005 "Loan."
{
    DataCaptionFields = "Loan ID";

    fields
    {
        field(1; "Loan ID"; Code[10])
        {
        }
        field(2; "Staff No."; Code[20])
        {
            NotBlank = true;
            TableRelation = Employee."No.";
        }
        field(3; "Staff Name"; Text[40])
        {
            NotBlank = true;
        }
        field(4; "Loan Type"; Option)
        {
            OptionMembers = Advance,IOU,Loan,Car,Housing,Incidental,Personal,Rent;
        }
        field(5; Description; Text[30])
        {
            NotBlank = true;
        }
        field(6; "Acct. Type"; Option)
        {
            OptionMembers = Finance,Staff,Supplier;
        }
        field(7; "Acct. No."; Code[20])
        {
            TableRelation = IF ("Acct. Type" = CONST (Finance)) "G/L Account"."No."
            ELSE
            IF ("Acct. Type" = CONST (Staff)) Customer."No."
            ELSE
            IF ("Acct. Type" = CONST (Supplier)) Vendor."No.";
        }
        field(8; "Counter Acct. Type"; Option)
        {
            OptionMembers = Finance,Staff,Supplier;
        }
        field(9; "Counter Acct. No."; Code[20])
        {
            TableRelation = IF ("Counter Acct. Type" = CONST (Finance)) "G/L Account"."No."
            ELSE
            IF ("Counter Acct. Type" = CONST (Staff)) Customer."No." WHERE ("No." = FILTER ('E' .. 'F'))
            ELSE
            IF ("Counter Acct. Type" = CONST (Supplier)) Vendor."No.";
        }
        field(10; "Loan Amount"; Decimal)
        {
            MinValue = 0;
        }
        field(11; "Start Period"; Code[10])
        {
            TableRelation = "Payroll-Periods."."Period Code";
        }
        field(12; "Number of Payments"; Integer)
        {
            MinValue = 0;
        }
        field(13; "Monthly Repayment"; Decimal)
        {
        }
        field(14; "Open(Y/N)"; Boolean)
        {
        }
        field(15; "Suspended(Y/N)"; Boolean)
        {
        }
        field(16; "Loan ED"; Code[10])
        {
            TableRelation = "Payroll-E/D Codes."."E/D Code";
        }
        field(17; "Remaining Amount"; Decimal)
        {
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE ("Customer No." = FIELD ("Acct. No."),
                                                                                 "Loan ID" = FIELD ("Loan ID")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "Posting Date for Loan"; Date)
        {
        }
        field(19; "Voucher No. for Loan"; Code[10])
        {
        }
        field(20; "Journal Batch"; Code[10])
        {
            TableRelation = "Gen. Journal Batch".Name;
            ValidateTableRelation = false;
        }
        field(21; "Loan Created"; Boolean)
        {
        }
        field(22; "Actual Ledger Bal."; Decimal)
        {
            Editable = false;
            FieldClass = Normal;
        }
        field(23; "Interest Percent"; Decimal)
        {
            DecimalPlaces = 2 : 2;
            MaxValue = 100;
            MinValue = 0;
        }
        field(50018; Department; Text[30])
        {
        }
        field(50019; "Date of Joining"; Date)
        {
        }
        field(50020; EmployeeGrp; Code[10])
        {
        }
        field(50021; "Emp. Status"; Option)
        {
            OptionMembers = Active,Inactive,Terminated;
        }
        field(50022; "AnnualBasic(1/2)"; Decimal)
        {
        }
        field(50023; "MD. Approved"; Boolean)
        {
        }
        field(50024; "Loan ID Filter"; Code[10])
        {
        }
        field(50025; "Job Title"; Text[30])
        {
        }
    }

    keys
    {
        key(Key1; "Loan ID")
        {
            Clustered = true;
        }
        key(Key2; "Staff No.", "Start Period", "Open(Y/N)", "Suspended(Y/N)")
        {
        }
        key(Key3; "Loan Type", "Posting Date for Loan", "Voucher No. for Loan", "Staff No.")
        {
            SumIndexFields = "Loan Amount";
        }
        key(Key4; "Staff No.", "Loan ID")
        {
            SumIndexFields = "Loan Amount";
        }
    }

    fieldgroups
    {
    }
}

