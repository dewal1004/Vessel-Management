table 50030 "Casual Employees"
{

    fields
    {
        field(1; "No."; Code[10])
        {
        }
        field(2; Address; Text[250])
        {
        }
        field(3; Sex; Option)
        {
            OptionMembers = " ",Male,Female;
        }
        field(4; "Date of Birth"; Date)
        {
        }
        field(5; "Job Code"; Code[10])
        {
            TableRelation = "Job Category".Code;
        }
        field(6; "Global Dimension 2 Code"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(7; "Date Employed"; Date)
        {
        }
        field(8; "Leaving Date"; Date)
        {
        }
        field(9; "Employee No Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Casual Employees"."No.";
        }
        field(11; "Job Code Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Job Category".Code;
        }
        field(12; "Global Dimension 2 Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(13; "Date Employed Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(14; "Leaving Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(15; "Employee Count"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("Casual Employees" WHERE ("No." = FIELD ("Employee No Filter"),
                                                          "Job Code" = FIELD ("Job Code Filter"),
                                                          "Date Employed" = FIELD ("Date Employed Filter"),
                                                          "Leaving Date" = FIELD ("Leaving Date Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Employee name"; Text[60])
        {
        }
        field(17; "No. Series"; Code[10])
        {
            Editable = false;
            TableRelation = "No. Series";
        }
        field(19; "Global Dimension 1 Code"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(20; Region; Code[10])
        {
            TableRelation = "Business Unit".Code;
        }
        field(21; Blocked; Boolean)
        {
        }
        field(31; Status; Option)
        {
            OptionMembers = Active,Inactive,Terminated;
        }
        field(32; "Inactive Date"; Date)
        {
        }
        field(33; "Cause of Inactivity Code"; Code[10])
        {
            TableRelation = "Cause of Inactivity";
        }
        field(34; "Disengagement Date"; Date)
        {
        }
        field(35; "Disengagement Grounds"; Code[10])
        {
            TableRelation = "Grounds for Termination";
        }
        field(40; "Last Date Modified"; Date)
        {
            Editable = false;
        }
        field(41; Guarrantor; Text[60])
        {
        }
        field(42; "Guarrantor Address"; Text[100])
        {
        }
        field(43; Class; Code[10])
        {
            TableRelation = "Class Information";
        }
        field(44; Guarrantor2; Text[60])
        {
        }
        field(45; "Guarrantor Address2"; Text[100])
        {
        }
        field(46; "Next of Kin Name"; Text[30])
        {
        }
        field(47; "Next of Kin Address"; Text[100])
        {
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Global Dimension 2 Code", "Job Code", "Date of Birth", "Leaving Date")
        {
        }
    }

    fieldgroups
    {
    }
}

