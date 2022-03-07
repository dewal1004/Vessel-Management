table 50023 "MP Budget Entry"
{

    fields
    {
        field(1; "Entry No."; Integer)
        {
        }
        field(2; "Budget Name"; Code[10])
        {
            TableRelation = "MP Budget Name";
        }
        field(3; "Employee Grp"; Code[30])
        {
            TableRelation = "Employment Contract"."Unique Cd No";
        }
        field(4; Date; Date)
        {
            ClosingDates = true;
        }
        field(5; "Global Dimension 1 Code"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(6; "Global Dimension 2 Code"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(7; "Employee Count"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            DecimalPlaces = 0 : 0;
        }
        field(9; Description; Text[50])
        {
        }
        field(10; "Region Code"; Code[10])
        {
            TableRelation = "Business Unit";
        }
        field(11; "User ID"; Code[20])
        {
            Editable = false;
           // TableRelation = Table2000000002;
            //This property is currently not supported
            //TestTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Budget Name", "Employee Grp", Date)
        {
            SumIndexFields = "Employee Count";
        }
        key(Key3; "Budget Name", "Employee Grp", "Region Code", "Global Dimension 1 Code", "Global Dimension 2 Code", Date)
        {
            SumIndexFields = "Employee Count";
        }
        key(Key4; "Employee Grp", Date)
        {
            SumIndexFields = "Employee Count";
        }
        key(Key5; "Employee Grp", "Region Code", "Global Dimension 1 Code", "Global Dimension 2 Code", Date)
        {
            SumIndexFields = "Employee Count";
        }
    }

    fieldgroups
    {
    }
}

