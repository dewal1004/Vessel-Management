page 50136 "Role Center ID"
{
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group(Control22)
            {
                ShowCaption = false;
                part(Control21; "Finance Performance")
                {
                    Visible = false;
                }
                part(Control20; "Account Manager Activities")
                {
                }
                part(Control19; "My Customers")
                {
                }
            }
            group(Control18)
            {
                ShowCaption = false;
                part(Control17; "Trailing Sales Orders Chart")
                {
                    Visible = false;
                }
                part(Control16; "My Job Queue")
                {
                    Visible = false;
                }
                part(Control14; "My Vendors")
                {
                }
                part(Control13; "Report Inbox Part")
                {
                }
                systempart(Control11; MyNotes)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            group(Action7)
            {
            }
        }
    }
}

