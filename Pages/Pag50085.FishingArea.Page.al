page 50085 "Fishing Area"
{
    Editable = false;
    PageType = Card;
    SourceTable = Location;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Code"; Code)
                {
                }
                field(Name; Name)
                {
                }
            }
        }
    }

    actions
    {
    }
}

