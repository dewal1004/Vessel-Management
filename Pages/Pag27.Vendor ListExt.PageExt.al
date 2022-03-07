pageextension 50212 pageextension50212 extends "Vendor List"
{
    layout
    {
        modify("Responsibility Center")
        {
            Visible = false;
        }
        addafter("Language Code")
        {
            field(Trainer; Trainer)
            {
            }
            field(Address; Address)
            {
            }
            field("Address 2"; "Address 2")
            {
            }
            field("Telex No."; "Telex No.")
            {
            }
        }
    }
}

