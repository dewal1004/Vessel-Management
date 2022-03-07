table 50041 DEPOSIT
{

    fields
    {
        field(1; "Deposit ID"; Code[10])
        {
            Caption = 'Deposit No.';
        }
        field(2; "Bank Acc. No."; Code[10])
        {
            TableRelation = "Bank Account";
        }
        field(3; "Bank Name"; Text[30])
        {
        }
        field(4; "Date of Deposit"; Date)
        {
        }
        field(5; "Maturity Date"; Date)
        {
        }
        field(6; "Interest Rate"; Decimal)
        {
        }
        field(7; "Interest accruing on deposit"; Decimal)
        {
        }
        field(8; "Amount of deposit"; Decimal)
        {
        }
        field(9; "Deposit Balance"; Decimal)
        {
            CalcFormula = Sum ("Bank Account Ledger Entry".Amount WHERE ("Bank Account No." = FIELD ("Bank Acc. No."),
                                                                        "DEPOSIT ID" = FIELD ("Deposit ID")));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Deposit ID")
        {
            Clustered = true;
        }
        key(Key2; "Bank Acc. No.", "Maturity Date")
        {
        }
    }

    fieldgroups
    {
    }
}

