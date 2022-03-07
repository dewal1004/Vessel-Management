xmlport 50058 FADEP2
{
    Format = VariableText;

    schema
    {
        textelement(node)
        {
            tableelement("FA Depreciation Book"; "FA Depreciation Book")
            {
                XmlName = 'root';
                fieldelement(FANO; "FA Depreciation Book"."FA No.")
                {
                }
                fieldelement(FABOOK; "FA Depreciation Book"."Depreciation Book Code")
                {
                }
                fieldelement(DEPCODE; "FA Depreciation Book"."Depreciation Method")
                {
                }
                fieldelement(DATE; "FA Depreciation Book"."Depreciation Starting Date")
                {
                }
                fieldelement(YEARS; "FA Depreciation Book"."No. of Depreciation Years")
                {
                }
                fieldelement(FPG; "FA Depreciation Book"."FA Posting Group")
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

