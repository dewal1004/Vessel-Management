tableextension 50303 tableextension50303 extends "Employee Statistics Group"
{
    fields
    {
        field(50000; "Ledger Code"; Code[10])
        {
        }
        field(50001; Frequency; Code[10])
        {
            DateFormula = true;
        }
        field(50002; "Hours Frequency"; Integer)
        {
        }
        field(50003; "G/L Account"; Code[10])
        {
        }
    }
}

