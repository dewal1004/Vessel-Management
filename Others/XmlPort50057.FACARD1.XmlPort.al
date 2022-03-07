xmlport 50057 "FA-CARD1"
{
    Format = VariableText;
    FormatEvaluate = Xml;

    schema
    {
        textelement(NODE)
        {
            tableelement("Fixed Asset"; "Fixed Asset")
            {
                XmlName = 'ROOT';
                fieldelement(NO; "Fixed Asset"."No.")
                {
                }
                fieldelement(DES; "Fixed Asset".Description)
                {
                }
                fieldelement(DES2; "Fixed Asset"."Description 2")
                {
                }
                fieldelement(FAPG; "Fixed Asset"."FA Posting Group")
                {
                }
                fieldelement(FALOCATION; "Fixed Asset"."FA Location Code")
                {
                }
                fieldelement(FACLASS; "Fixed Asset"."FA Class Code")
                {
                }
                fieldelement(SUBCLASS; "Fixed Asset"."FA Subclass Code")
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

