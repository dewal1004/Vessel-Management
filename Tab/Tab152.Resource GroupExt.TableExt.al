tableextension 50240 tableextension50240 extends "Resource Group"
{
    fields
    {
        field(50300; IncentivePect; Decimal)
        {
        }
        field(50301; "Crew(Juniour)"; Boolean)
        {
        }
        field(50302; Level; Integer)
        {
        }
    }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    DimMgt.UpdateDefaultDim(
      DATABASE::"Resource Group","No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    "Global Dimension 2 Code":='ATLANTIC';     //AAA - Oct 2002
    #1..3
    */
    //end;
}

