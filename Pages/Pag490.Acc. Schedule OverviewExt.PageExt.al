pageextension 50278 pageextension50278 extends "Acc. Schedule Overview"
{
    layout
    {
        modify(General)
        {
            Visible = true;
        }
        modify("Dimension Filters")
        {
            Visible = false;
        }
    }
}

