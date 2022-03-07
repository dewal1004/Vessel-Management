page 50024 "Applicant Picture"
{
    PageType = Card;
    SourceTable = Applicants;

    layout
    {
        area(content)
        {
            field(Picture; Picture)
            {
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Picture")
            {
                Caption = '&Picture';
                action(Import)
                {
                    Caption = 'Import';
                    Ellipsis = true;
                }
                action("E&xport")
                {
                    Caption = 'E&xport';
                    Ellipsis = true;
                }
                action(Delete)
                {
                    Caption = 'Delete';
                }
            }
        }
    }
}

