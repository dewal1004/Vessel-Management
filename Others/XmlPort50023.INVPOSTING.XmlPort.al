xmlport 50023 INVPOSTING
{
    Format = VariableText;

    schema
    {
        textelement(ROOT)
        {
            tableelement("Inventory Posting Setup"; "Inventory Posting Setup")
            {
                XmlName = 'INV';
                fieldelement(LO; "Inventory Posting Setup"."Location Code")
                {
                }
                fieldelement(GROUP; "Inventory Posting Setup"."Invt. Posting Group Code")
                {
                }
                fieldelement(GL1; "Inventory Posting Setup"."Inventory Account")
                {
                }
                fieldelement(GL2; "Inventory Posting Setup"."Inventory Account (Interim)")
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

