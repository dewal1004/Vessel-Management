pageextension 50243 pageextension50243 extends "Comment List"
{
    layout
    {

        //Unsupported feature: Property Modification (ImplicitType) on "Comment(Control 6)".

        addafter("Code")
        {
            field(Vessel; Vessel)
            {
            }
            field("Day Lost Cause"; "Day Lost Cause")
            {
            }
            field("Days Lost"; "Days Lost")
            {
                Visible = false;
            }
        }
    }
}

