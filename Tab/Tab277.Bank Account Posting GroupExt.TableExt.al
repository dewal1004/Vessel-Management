tableextension 50262 tableextension50262 extends "Bank Account Posting Group"
{
    fields
    {
        field(50001; Category; Option)
        {
            OptionMembers = "Cash/Cheques","Local Bank","Foreign Bank";
        }
    }
}

