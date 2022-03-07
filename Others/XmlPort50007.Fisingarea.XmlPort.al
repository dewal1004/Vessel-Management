xmlport 50007 "Fising area"
{

    schema
    {
        textelement(RootNode)
        {
            tableelement(Location; Location)
            {
                XmlName = 'FishingArea';
                fieldelement(n; Location.Code)
                {
                }
                textelement(a)
                {
                }
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }
}

