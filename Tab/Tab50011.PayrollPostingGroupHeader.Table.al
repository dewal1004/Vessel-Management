table 50011 "Payroll-Posting Group Header."
{
    // Created           : FTN, 143/93
    // File name         : KI03 P.Booking Grps.
    // Comments          : The Header card that is to be used to enter booking
    //                     groups
    // File details      : Primary Key is;
    //                      Code
    //                   : Relations;
    //                      None


    fields
    {
        field(1; "Posting Group Code"; Code[20])
        {
            NotBlank = true;
        }
        field(2; "Search Name"; Code[20])
        {
        }
        field(3; Description; Text[30])
        {
        }
        field(50005; "Date Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
        field(50006; "Global Dimension 1 Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(50007; "Global Dimension 2 Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(50008; "Budgeted Count"; Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            DecimalPlaces = 0 : 0;
            FieldClass = Normal;
        }
        field(50010; "Budget Filter"; Code[10])
        {
            FieldClass = Normal;
            //TableRelation = Table52095;
        }
        field(50011; "Region Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Business Unit";
        }
        field(50015; "Termination Date Filter"; Date)
        {
            Description = 'Staff Count report 50179';
            FieldClass = FlowFilter;
        }
        field(50300; StaffCount; Integer)
        {
            CalcFormula = Count (Employee WHERE ("Global Dimension 1 Code" = FIELD ("Global Dimension 1 Filter"),
                                                "Global Dimension 2 Code" = FIELD ("Global Dimension 2 Filter"),
                                                "Posting Group" = FIELD ("Posting Group Code"),
                                                "Employment Date" = FIELD ("Date Filter"),
                                                "Termination Date" = FIELD ("Termination Date Filter"),
                                                Blocked = CONST (false)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(52000; "Group Range"; Code[10])
        {
        }
        field(52001; Management; Boolean)
        {
        }
        field(52002; "Annual Leave Days"; Integer)
        {
        }
    }

    keys
    {
        key(Key1; "Posting Group Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

