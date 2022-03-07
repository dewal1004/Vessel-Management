tableextension 50267 tableextension50267 extends "Inventory Setup"
{
    fields
    {
        field(50000; "Automatic BOM Explosion"; Boolean)
        {
        }
        field(50001; "Catches Class"; Code[1])
        {
            Description = 'Here Product cathes are categoried into class so as to filter them when been reported (This is catches Default before actual Code is given)';
        }
        field(50002; "Default Store"; Code[10])
        {
            TableRelation = Location WHERE ("Location Type" = FILTER (Store));
        }
        field(50003; "Default Cold Room"; Code[10])
        {
            TableRelation = Location WHERE ("Location Type" = FILTER (Store));
        }
        field(50004; "FA Acquisition"; Code[10])
        {
            TableRelation = "Reason Code";
        }
        field(50005; "FA Acquisition Template"; Code[10])
        {
            TableRelation = "Gen. Journal Template";
        }
        field(50006; "FA Maintenance"; Code[10])
        {
            TableRelation = "Reason Code";
        }
        field(50007; "FA Maintenance Template"; Code[10])
        {
            TableRelation = "Gen. Journal Template";
        }
    }
}

