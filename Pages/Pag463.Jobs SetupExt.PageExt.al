pageextension 50277 pageextension50277 extends "Jobs Setup"
{
    layout
    {
        addfirst(General)
        {
            field("AGO Account"; "AGO Account")
            {
            }
            field("AGO Posting Code"; "AGO Posting Code")
            {
            }
            field("LUB.  Posting Code"; "LUB.  Posting Code")
            {
            }
            field("Export Prouct Code"; "Export Prouct Code")
            {
            }
        }
        addafter("Job Nos.")
        {
            field("Catch Nos."; "Catch Nos.")
            {
            }
            field("Dry Docking"; "Dry Docking")
            {
            }
            field("Job Val Begin Account"; "Job Val Begin Account")
            {
            }
            field("Job Val End Account"; "Job Val End Account")
            {
            }
            group(Rates)
            {
                Caption = 'Rates';
                field("Default Price Group Code"; "Default Price Group Code")
                {
                }
            }
        }
    }
    actions
    {

        addfirst(creation)
        {
            group(Action22)
            {
                action(Delete)
                {
                }
            }
        }
    }


    //Unsupported feature: Property Modification (Id) on "JobSimplificationAvailable(Variable 1000)".

    //var
    //>>>> ORIGINAL VALUE:
    //JobSimplificationAvailable : 1000;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //JobSimplificationAvailable : 1003;
    //Variable type has not been exported.

    var
        Text001: Label 'Do you want to replace the existing picture?';
        Text002: Label 'Do you want to delete the picture?';
        PictureExists: Boolean;
}

