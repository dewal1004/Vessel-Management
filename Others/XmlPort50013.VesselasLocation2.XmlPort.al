xmlport 50013 "Vessel as Location2"
{
    Format = VariableText;

    schema
    {
        textelement(RootNode)
        {
            tableelement(Location; Location)
            {
                XmlName = 'Location';
                textelement(oruko)
                {
                }
                textelement(aditu)
                {
                }
                textelement(ileise)
                {
                }
                fieldelement(Loc; Location."Location Type")
                {
                }
                textelement(Days)
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

