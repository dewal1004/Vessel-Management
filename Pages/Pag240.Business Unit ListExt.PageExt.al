pageextension 50261 pageextension50261 extends "Business Unit List"
{
    layout
    {
        modify("Currency Code")
        {
            Visible = false;
        }
        modify(Consolidate)
        {
            Visible = false;
        }
        modify("Consolidation %")
        {
            Visible = false;
        }
        modify("Starting Date")
        {
            Visible = false;
        }
        modify("Ending Date")
        {
            Visible = false;
        }
    }
}

