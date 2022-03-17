table 50018 Applicants
{
    DataCaptionFields = "No.", Surname, "First Name", "Middle Name";
    DataPerCompany = false;

    fields
    {
        field(1; "No."; Code[20])
        {
        }
        field(2; Surname; Text[30])
        {
        }
        field(3; "First Name"; Text[30])
        {
        }
        field(4; "Middle Name"; Text[30])
        {
        }
        field(5; Initials; Text[30])
        {
        }
        field(7; "Search Name"; Code[30])
        {
        }
        field(8; Address; Text[30])
        {
        }
        field(9; "Address 2"; Text[30])
        {
        }
        field(10; City; Text[30])
        {
        }
        field(11; "Post Code"; Code[20])
        {
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(12; County; Text[30])
        {
        }
        field(13; "Phone No."; Text[30])
        {
        }
        field(14; "Mobile Phone No."; Text[30])
        {
        }
        field(15; "E-Mail"; Text[80])
        {
        }
        field(16; "Alt. Address Code"; Code[10])
        {
            TableRelation = "Alternative Address".Code WHERE ("Employee No." = FIELD ("No."));
        }
        field(17; "Alt. Address Start Date"; Date)
        {
        }
        field(18; "Alt. Address End Date"; Date)
        {
        }
        field(19; Picture; BLOB)
        {
            SubType = Bitmap;
        }
        field(20; "Birth Date"; Date)
        {
        }
        field(24; Sex; Option)
        {
            OptionMembers = Male,Female;
        }
        field(25; "Country Code"; Code[10])
        {
            TableRelation = "Country/Region";
        }
        field(31; "Application Status"; Option)
        {
            OptionMembers = " ","Under Interview","Short Listed",Accepted,Rejected;
        }
        field(36; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(37; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(39; Comment; Boolean)
        {
            CalcFormula = Exist ("Human Resource Comment Line" WHERE ("Table Name" = CONST (Employee),
                                                                     "No." = FIELD ("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Last Date Modified"; Date)
        {
            Editable = false;
        }
        field(48; Pager; Text[30])
        {
        }
        field(49; "Fax No."; Text[30])
        {
        }
        field(50; "Company E-Mail"; Text[80])
        {
        }
        field(51; Title; Text[30])
        {
        }
        field(52; "Salespers./Purch. Code"; Code[10])
        {
            TableRelation = "Salesperson/Purchaser";
        }
        field(53; "No. Series"; Code[10])
        {
            Editable = false;
            TableRelation = "No. Series";
        }
        field(50000; "Region Code"; Code[10])
        {
            TableRelation = "Business Unit".Code;
        }
        field(50015; "Posting Group"; Code[20])
        {
            TableRelation = "Payroll-Posting Group Header."."Posting Group Code";
        }
        field(50016; "Employee Group"; Code[20])
        {
            TableRelation = "Payroll-Employee Group Header." WHERE ("Posting Group Code" = FIELD ("Posting Group"));
        }
        field(50071; Blocked; Boolean)
        {
        }
        field(50073; "Modified By"; Code[10])
        {
            Editable = false;
        }
        field(50076; Class; Code[10])
        {
            TableRelation = "Skill Appraisal"."Skill code";
        }
        field(50086; "Date Offer Made"; Date)
        {
        }
        field(50088; "Position Applied For"; Code[20])
        {
            TableRelation = "Employment Contract"."Unique Cd No";
        }
        field(50089; "Position Description"; Text[30])
        {
            Editable = false;
        }
        field(50092; "Agreed Start Date"; Date)
        {
        }
        field(50093; "Assigned Employee No"; Code[10])
        {
        }
        field(50094; "Date Accepted/Rejected"; Date)
        {
        }
        field(50095; "Next of Kin"; Text[30])
        {
            CalcFormula = Lookup ("Employee Relative"."First Name" WHERE ("Employee No." = FIELD ("No."),
                                                                         Source = CONST (Applicant),
                                                                         "Relative Code" = CONST ('NEXT')));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50096; Staffed; Boolean)
        {
            InitValue = false;
        }
        field(50097; "Last Renumeration"; Decimal)
        {
            BlankZero = true;
            DecimalPlaces = 2 : 2;
        }
        field(53000; "First Interview"; Boolean)
        {
        }
        field(53001; "First Interview Date"; Date)
        {
        }
        field(53002; "First Interview Result"; Decimal)
        {
            DecimalPlaces = 1 : 1;
        }
        field(53003; "Second Interview"; Boolean)
        {
        }
        field(53004; "Second Interview Date"; Date)
        {
        }
        field(53005; "Second Interview Result"; Decimal)
        {
            DecimalPlaces = 1 : 1;
        }
        field(53006; "Final Interview"; Boolean)
        {
        }
        field(53007; "Final Interview Date"; Date)
        {
        }
        field(53008; "Final Interview Result"; Decimal)
        {
            DecimalPlaces = 1 : 1;
        }
        field(53009; "First Interview Maximum"; Decimal)
        {
        }
        field(53010; "Second Interview Maximum"; Decimal)
        {
        }
        field(53011; "Final Interview Maximum"; Decimal)
        {
        }
        field(53012; "Advert Ref No"; Code[20])
        {
        }
        field(53013; "Position check lis"; Text[30])
        {
        //    TableRelation = Table50055.Field2;
        }
        field(53014;FullName;Text[100])
        {            
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; Surname, "First Name", "Middle Name")
        {
        }
        key(Key3; "Assigned Employee No")
        {
        }
        key(Key4; "Application Status")
        {
        }
        key(Key5; "Advert Ref No")
        {
        }
        key(Key6; "First Name", "Middle Name")
        {
        }
    }

    fieldgroups
    {
    }
}

