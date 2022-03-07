tableextension 50218 tableextension50218 extends "Sales Comment Line"
{
    fields
    {
        modify("Document Type")
        {
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Shipment,Posted Invoice,Posted Credit Memo,Posted Return Receipt,Posted Appraisal';

            //Unsupported feature: Property Modification (OptionString) on ""Document Type"(Field 1)".

        }
        field(50000; Quantity; Integer)
        {
            BlankZero = true;
        }
        field(50001; Weight; Decimal)
        {
        }
    }
}

