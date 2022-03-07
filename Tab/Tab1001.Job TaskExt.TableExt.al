tableextension 50282 tableextension50282 extends "Job Task"
{
    fields
    {

        //Unsupported feature: Property Deletion (Editable) on ""Job No."(Field 1)".

        field(50300; Incentive; Decimal)
        {
        }
        field(50301; "Hook Inc"; Decimal)
        {
        }
        field(50302; "Add/Ded"; Decimal)
        {
        }
        field(50303; "Net Inc"; Decimal)
        {
            Editable = false;
        }
        field(50305; "Alloted %"; Decimal)
        {
        }
        field(50308; "Allocation Quantity"; Decimal)
        {
            Caption = 'Allocation Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(50309; "Allocation %"; Decimal)
        {
            Caption = 'Allocation %';
            DecimalPlaces = 2 : 2;
        }
        field(50310; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(50315; "Resource Group"; Code[20])
        {
        }
        field(50316; "S/No."; Integer)
        {
        }
        field(50317; Counter; Integer)
        {
            CalcFormula = Count ("Job Task" WHERE ("Job No." = FIELD ("Job No."),
                                                  "Job Task No." = FILTER (<> '"')));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50318; "Ended Voyage"; Boolean)
        {
        }
        field(50319; Level; Integer)
        {
        }
    }
    keys
    {

        //Unsupported feature: Deletion (KeyCollection) on ""Job Task No."(Key)".

           }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    LockTable;
    Job.Get("Job No.");
    if Job.Blocked = Job.Blocked::All then
      Job.TestBlocked;
    Job.TestField("Bill-to Customer No.");
    Cust.Get(Job."Bill-to Customer No.");
    #7..9
    CalcFields("Schedule (Total Cost)","Usage (Total Cost)");
    Job.UpdateOverBudgetValue("Job No.",true,"Usage (Total Cost)");
    Job.UpdateOverBudgetValue("Job No.",false,"Schedule (Total Cost)");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    LockTable;
    Job.Get("Job No.");
    if Job.Blocked = Job.Blocked::Posting then
    #4..12
    */
    //end;

    procedure "------------------"()
    begin
    end;

    //Unsupported feature: Insertion (FieldGroupCollection) on "(FieldGroup: Brick)".


    var
        Res: Record Resource;
}

