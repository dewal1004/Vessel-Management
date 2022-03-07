tableextension 50251 tableextension50251 extends "Item Journal Batch"
{
    fields
    {
        field(50300; "Transfer From"; Code[10])
        {
            TableRelation = Location;
        }
        field(50301; "Transfer To"; Code[10])
        {
            TableRelation = Location;
        }
        field(50302; "Document No."; Code[20])
        {
            CalcFormula = Max ("Item Journal Line"."Document No." WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                        "Journal Batch Name" = FIELD (Name)));
            FieldClass = FlowField;
        }
        field(50358; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(50359; "Entry Type"; Option)
        {
            OptionMembers = Purchase,Sale,"Positive Adjmt.","Negative Adjmt.",Transfer,Consumption,Output;
        }
    }
}

