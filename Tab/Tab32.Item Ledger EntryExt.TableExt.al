tableextension 50213 tableextension50213 extends "Item Ledger Entry"
{
    fields
    {
        field(50025; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
        }
        field(50026; "Old External Document No."; Code[20])
        {
            Caption = 'Old External Document No.';
        }
        field(50027; "Applied Negative"; Decimal)
        {
            CalcFormula = - Sum ("Item Application Entry".Quantity WHERE ("Outbound Item Entry No." = FIELD ("Entry No."),
                                                                        "Inbound Item Entry No." = FILTER (<> 0),
                                                                        Quantity = FILTER (< 0)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50028; "Applied Positive"; Decimal)
        {
            CalcFormula = Sum ("Item Application Entry".Quantity WHERE ("Inbound Item Entry No." = FIELD ("Entry No."),
                                                                       "Outbound Item Entry No." = FILTER (<> 0),
                                                                       Quantity = FILTER (< 0)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50029; Changed; Boolean)
        {
        }
        field(50030; "Old Quantity"; Decimal)
        {
        }
        field(50031; "Value Entry Qty"; Decimal)
        {
            CalcFormula = Sum ("Value Entry"."Item Ledger Entry Quantity" WHERE ("Item Ledger Entry No." = FIELD ("Entry No."),
                                                                                Adjustment = CONST (false),
                                                                                "Entry Type" = CONST ("Direct Cost")));
            FieldClass = FlowField;
        }
    }
    keys
    {
        key(ASLKey1; "Document No.", "Posting Date", "Entry Type")
        {
            SumIndexFields = Quantity;
        }
        key(ASLKey2; "Entry Type", Nonstock, "Item No.", "Posting Date", "Location Code")
        {
        }
        key(ASLKey3; "Entry Type", "Item No.", "Posting Date", "Location Code")
        {
        }
        key(ASLKey4; "Item No.", "Location Code", "Posting Date", "Entry Type")
        {
        }
    }


    //Unsupported feature: Code Modification on "SetAvgTransCompletelyInvoiced(PROCEDURE 80)".

    //procedure SetAvgTransCompletelyInvoiced();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "Entry Type" <> "Entry Type"::Transfer then
      exit(false);

    ItemApplnEntry.SetCurrentKey("Item Ledger Entry No.");
    ItemApplnEntry.SetRange("Item Ledger Entry No.","Entry No.");
    ItemApplnEntry.Find('-');
    if not "Completely Invoiced" then begin
      CompletelyInvoiced := true;
      repeat
    #10..17
      end;
    end;
    exit(false);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    if ItemApplnEntry.Find('-') then
    #7..20
    */
    //end;
}

