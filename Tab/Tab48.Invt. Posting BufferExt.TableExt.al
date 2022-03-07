tableextension 50219 tableextension50219 extends "Invt. Posting Buffer"
{
    fields
    {
        field(50362; "External Document No."; Code[20])
        {
            Caption = 'External Document No.';
        }
        field(50364; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(50365; "Maintenance Code"; Code[10])
        {
        }
    }
}

