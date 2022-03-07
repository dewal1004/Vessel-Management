tableextension 50203 tableextension50203 extends "Country/Region"
{
    fields
    {
        modify("Address Format")
        {
            OptionCaption = 'Post Code+City,City+Post Code,City+County+Post Code,Blank Line+Post Code+City,,,,,,,,,,Custom,City Only';

            //Unsupported feature: Property Modification (OptionString) on ""Address Format"(Field 8)".

        }
        field(50300; "License Fees Rate"; Decimal)
        {
            Description = 'For Allowing the Vessel to fish : For Voyage P&L Rep.';
        }
        field(50301; "Country Code"; Integer)
        {
        }
    }
}

