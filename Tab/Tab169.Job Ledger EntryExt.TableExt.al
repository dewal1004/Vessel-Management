tableextension 50243 tableextension50243 extends "Job Ledger Entry"
{
    fields
    {

        //Unsupported feature: Code Insertion on ""No."(Field 7)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*
        // IF Type = Type::Resource THEN
        //  Res.GET("No.");
        //  Description := Res.Name;
        */
        //end;
        field(50026; "Old External Document No."; Code[20])
        {
            Caption = 'External Document No.';
        }
        field(50301; "Marked Rec"; Boolean)
        {
            Description = 'For Voyage P&L Reporting Marked current entrie to be reported, cleared at the end of D Rep.';
        }
        field(50309; "Allocation %"; Decimal)
        {
            Caption = 'Allocation %';
            DecimalPlaces = 2 : 2;
        }
        field(50314; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(50315; "Resource Group"; Code[20])
        {
        }
        field(50318; "Ended Voyage"; Boolean)
        {
        }
        field(50321; ROB; Decimal)
        {
        }
        field(50324; "Catch Sea Days"; Decimal)
        {
            Description = 'Total sea day on a day that there is a catch';
        }
        field(50325; GroupSort; Code[15])
        {
            Description = 'Voyage P&L Reporting';
        }
        field(50351; "ROB By"; Code[10])
        {
            Editable = false;
            TableRelation = User;
        }
        field(50352; "Phase Code"; Code[10])
        {
        }
        field(50353; "Task Code"; Code[10])
        {
        }
    }


    //Unsupported feature: Code Modification on "ShowDimensions(PROCEDURE 1)".

    //procedure ShowDimensions();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    DimMgt.ShowDimensionSet("Dimension Set ID",StrSubstNo('%1 %2',TableCaption,"Entry No."));
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    //DimMgt.ShowDimensionSet("Dimension Set ID",STRSUBSTNO('%1 %2',TABLECAPTION," No"));
    */
    //end;

    var
        "Ending Date": Date;
        "Starting Date": Date;
        Res: Record Resource;
}

