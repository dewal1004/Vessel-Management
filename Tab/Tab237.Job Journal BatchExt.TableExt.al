tableextension 50252 tableextension50252 extends "Job Journal Batch"
{

    //Unsupported feature: Property Insertion (Permissions) on ""Job Journal Batch"(Table 237)".

    fields
    {

        //Unsupported feature: Property Modification (Data type) on ""Journal Template Name"(Field 1)".

        modify(Name)
        {

            //Unsupported feature: Property Modification (Data type) on "Name(Field 2)".

            TableRelation = IF ("Journal Template Name" = CONST ('RECURRING')) Location WHERE ("Location Type" = CONST (Vessel));
        }

        //Unsupported feature: Code Insertion on "Name(Field 2)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*

        if FA.Get(Name) then
          "Global Dimension 2 Code":=FA."Global Dimension 2 Code";
        if locat.Get(Name) then "Vessel Name":=locat.Name;
        */
        //end;
        field(50300; "Voyage No."; Code[10])
        {
        }
        field(50301; "Catch Date"; Date)
        {
        }
        field(50303; "Fishing Ground"; Code[30])
        {
            TableRelation = "Job Task"."Job Task No.";
        }
        field(50304; "Sea Temperature"; Decimal)
        {
            MaxValue = 100;
            MinValue = 0;
        }
        field(50305; "Job No."; Code[20])
        {
            TableRelation = Job WHERE (Vessel = FIELD (Name),
                                       Status = FILTER (Open));
        }
        field(50317; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            NotBlank = true;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(50318; "Init Journal"; Boolean)
        {
            InitValue = false;
        }
        field(50320; "Fish Hold Temp"; Decimal)
        {
        }
        field(50322; "Fuel Balance"; Decimal)
        {
        }
        field(50323; "R.P.M."; Decimal)
        {
        }
        field(50324; "Vessel Name"; Text[30])
        {
        }
        field(50325; "Batch Type"; Option)
        {
            OptionMembers = ,EXPT,MRKT,CONS;
        }
        field(50326; Posted; Boolean)
        {
        }
    }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    LockTable;
    JobJnlTemplate.Get("Journal Template Name");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //LOCKTABLE;//nitin
    JobJnlTemplate.Get("Journal Template Name");
    */
    //end;

    var
        "------": Integer;
        User: Record "User Setup";
        JobsRec: Record Job;
        jobs: Record Job;
        JLedEntry: Record "Job Ledger Entry";
        JLedEntry2: Record "Job Ledger Entry";
        JLedEntry3: Record "Job Ledger Entry";
        FA: Record "Fixed Asset";
        OPDailyRad: Record "Operation Daily Radio";
        "LastNo.": Integer;
        locat: Record Location;
        Res: Record Resource;
        g_Name: Text;
}

