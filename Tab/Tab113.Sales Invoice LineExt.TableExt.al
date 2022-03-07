tableextension 50231 tableextension50231 extends "Sales Invoice Line"
{
    fields
    {

        //Unsupported feature: Property Modification (Data type) on ""Description 2"(Field 12)".

        field(50300; Grade; Option)
        {
            Description = ',Excellent,Good,Average,Poor';
            OptionMembers = " ",Excellent,Good,"Average",Poor;
        }
        field(50301; Comment; Text[80])
        {
        }
        field(50302; quantity1; Decimal)
        {
            Description = 'Used by Performance score for sum';
        }
        field(50303; TTSkill; Decimal)
        {
            Description = 'Used by skill score for sum';
        }
        field(50304; TTPerformance; Decimal)
        {
            Description = 'used by performance total for sum';
        }
        field(50350; Numbers; Decimal)
        {
            Description = 'factor of Quantity';
        }
        field(50351; Packing; Decimal)
        {
            Description = 'factor of Quantity';
        }
    }
    keys
    {
        key(ASLKey1; "Document No.", Type, "No.")
        {
            SumIndexFields = Quantity;
        }
        key(ASLKey2; "Document No.", Type, "Item Category Code", "Posting Group")
        {
            SumIndexFields = Quantity;
        }
        key(ASLKey3; "Location Code", "Shipment Date", "No.")
        {
            SumIndexFields = Amount;
        }
    }


    //Unsupported feature: Code Modification on "ShowLineComments(PROCEDURE 8)".

    //procedure ShowLineComments();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SalesCommentLine.ShowComments(SalesCommentLine."Document Type"::"Posted Invoice","Document No.","Line No.");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    SalesCommentLine.ShowComments(SalesCommentLine."Document Type"::Shipment,"Document No.","Line No.");
    */
    //end;
}

