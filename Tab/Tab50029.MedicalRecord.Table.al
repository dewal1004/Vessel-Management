table 50029 "Medical Record"
{

    fields
    {
        field(1; "Line No"; Integer)
        {
            Editable = false;
        }
        field(2; "Employee No"; Code[10])
        {
            NotBlank = true;
            TableRelation = Employee."No.";
        }
        field(3; "Transaction Date"; Date)
        {
        }
        field(4; "Transaction Type"; Option)
        {
            OptionMembers = " ",C,R,H;
        }
        field(5; "Hospital Code"; Code[10])
        {
            TableRelation = IF ("Transaction Type" = CONST (H)) Vendor."No." WHERE (Hospital = CONST (true));
        }
        field(6; Beneficiary; Option)
        {
            OptionMembers = " ",Dependent,Self;
        }
        field(7; "ASL Ref No"; Code[10])
        {
        }
        field(8; Amount; Decimal)
        {
        }
        field(9; "Region Code"; Code[10])
        {
            Editable = false;
            TableRelation = "Business Unit".Code;
        }
        field(10; "Global Dimension 1 Code"; Code[10])
        {
            Editable = false;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(11; "Global Dimension 2 Code"; Code[10])
        {
            Editable = false;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(12; "Period Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = Date."Period No." WHERE ("Period Type" = CONST (Date));
        }
        field(13; "Treatment Cost"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Medical Record".Amount WHERE ("Region Code" = FIELD ("Region Filter"),
                                                             "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                             "Employee No" = FIELD ("Employee Filter"),
                                                             Beneficiary = FIELD ("Beneficiary Filter"),
                                                             "Transaction Type" = FIELD ("Transaction  Filter"),
                                                             "Transaction Date" = FIELD ("Date Filter"),
                                                             "Hospital Code" = FIELD ("Hospital Filter")));
            DecimalPlaces = 2 : 2;
            FieldClass = FlowField;
        }
        field(14; "Employee Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = Employee."No.";
        }
        field(15; "Beneficiary Filter"; Option)
        {
            FieldClass = FlowFilter;
            OptionMembers = " ",Dependent,Self;
        }
        field(16; "Transaction  Filter"; Option)
        {
            FieldClass = FlowFilter;
            OptionMembers = " ",C,R,H;
        }
        field(17; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(18; "Region Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Business Unit".Code;
        }
        field(19; "Global Dimension 1 Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(20; "Global Dimension 2 Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(21; "Clinic Cost"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Medical Record".Amount WHERE ("Region Code" = FIELD ("Region Filter"),
                                                             "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                             "Employee No" = FIELD ("Employee Filter"),
                                                             Beneficiary = FIELD ("Beneficiary Filter"),
                                                             "Transaction Type" = CONST (C),
                                                             "Transaction Date" = FIELD ("Date Filter"),
                                                             "Hospital Code" = FIELD ("Hospital Filter")));
            DecimalPlaces = 2 : 2;
            FieldClass = FlowField;
        }
        field(22; "Reimbursed Cost"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Medical Record".Amount WHERE ("Region Code" = FIELD ("Region Filter"),
                                                             "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                             "Employee No" = FIELD ("Employee Filter"),
                                                             Beneficiary = FIELD ("Beneficiary Filter"),
                                                             "Transaction Type" = CONST (R),
                                                             "Transaction Date" = FIELD ("Date Filter"),
                                                             "Hospital Code" = FIELD ("Hospital Filter")));
            DecimalPlaces = 2 : 2;
            FieldClass = FlowField;
        }
        field(23; "Hospital Cost"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Medical Record".Amount WHERE ("Region Code" = FIELD ("Region Filter"),
                                                             "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                             "Employee No" = FIELD ("Employee Filter"),
                                                             Beneficiary = FIELD ("Beneficiary Filter"),
                                                             "Transaction Type" = CONST (H),
                                                             "Transaction Date" = FIELD ("Date Filter")));
            DecimalPlaces = 2 : 2;
            FieldClass = FlowField;
        }
        field(24; "Hospital Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = IF ("Transaction Type" = CONST (H)) Vendor."No." WHERE (Hospital = CONST (true));
        }
        field(25; "Transaction Description"; Text[30])
        {
        }
        field(26; "No Treated"; Integer)
        {
            CalcFormula = Count ("Medical Record" WHERE ("Region Code" = FIELD ("Region Filter"),
                                                        "Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                        "Employee No" = FIELD ("Employee Filter"),
                                                        Beneficiary = FIELD ("Beneficiary Filter"),
                                                        "Transaction Type" = FIELD ("Transaction  Filter"),
                                                        "Transaction Date" = FIELD ("Date Filter"),
                                                        "Hospital Code" = FIELD ("Hospital Filter")));
            FieldClass = FlowField;
        }
        field(27; "Sickness Description"; Text[30])
        {
        }
    }

    keys
    {
        key(Key1; "Line No")
        {
            Clustered = true;
            SumIndexFields = Amount;
        }
        key(Key2; "Employee No", "Transaction Type", "Transaction Date")
        {
            SumIndexFields = Amount;
        }
        key(Key3; "Hospital Code", "Transaction Date")
        {
            SumIndexFields = Amount;
        }
        key(Key4; "Hospital Code", "Transaction Date", "Transaction Type", Beneficiary, "Region Code", "Global Dimension 1 Code", "Global Dimension 2 Code")
        {
            SumIndexFields = Amount;
        }
        key(Key5; "Employee No")
        {
            SumIndexFields = Amount;
        }
        key(Key6; "Employee No", "Transaction Type", "Transaction Date", Beneficiary)
        {
            SumIndexFields = Amount;
        }
        key(Key7; "Region Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Employee No", Beneficiary, "Transaction Type", "Transaction Date")
        {
            SumIndexFields = Amount;
        }
        key(Key8; "Hospital Code", "Region Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Employee No", Beneficiary, "Transaction Type", "Transaction Date")
        {
            SumIndexFields = Amount;
        }
    }

    fieldgroups
    {
    }
}

