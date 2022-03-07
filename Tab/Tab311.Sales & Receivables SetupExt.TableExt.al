tableextension 50265 tableextension50265 extends "Sales & Receivables Setup"
{
    fields
    {
        field(50001; "Appraisal No."; Code[10])
        {
            TableRelation = "No. Series";
        }
        field(50002; "Posted Appraisal No."; Code[10])
        {
            TableRelation = "No. Series";
        }
        field(50013; "Posted Exp. Invoice Nos."; Code[10])
        {
            TableRelation = "No. Series";
        }
    }
}

