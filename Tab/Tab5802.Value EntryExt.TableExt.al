tableextension 50317 tableextension50317 extends "Value Entry"
{
    // 
    // UNL-ASL3.60.01.005 (Santus) May 17, 2005
    fields
    {
        field(50026; "Old External Document No."; Code[20])
        {
            Caption = 'External Document No.';
        }
        field(50300; "Maintenance Code"; Code[10])
        {
        }
        field(50301; "Marked Rec"; Boolean)
        {
            Description = 'For Voyage P&L Reporting Marked current entrie to be reported, cleared at the end of D Rep.';
        }
        field(50302; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(50303; Changed; Boolean)
        {
        }
        field(50304; "Old Quantity"; Decimal)
        {
        }
        field(50305; ItemLedQty; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Entry No." = FIELD ("Item Ledger Entry No.")));
            FieldClass = FlowField;
        }
    }
    keys
    {
        key(ASLKeyI1; "Location Code", "Inventory Posting Group", "Posting Date", "Source Code")
        {
            SumIndexFields = "Valued Quantity";
        }
        key(ASLKeyG2; "Inventory Posting Group", "Item No.", "Posting Date", "Location Code", "External Document No.")
        {
        }
        key(ASLKeyD3; "Document No.", "Gen. Prod. Posting Group")
        {
        }
        key(ASLKeyC4; "Item Ledger Entry Type", "Location Code", "External Document No.", "Gen. Prod. Posting Group", "Item No.", "Posting Date")
        {
        }
        key(ASLKeyB5; "Reason Code", "External Document No.", "Gen. Prod. Posting Group", "Posting Date", "Item Ledger Entry Type")
        {
        }
        key(ASLKeyA6; "External Document No.")
        {
        }
    }

    procedure ItemName() Desc: Text[50]
    begin
        if item.Get("Item No.") then Desc := item.Description;
    end;

    var
        DimMgt: Codeunit DimensionManagement;
        "--------": Integer;
        item: Record Item;
}

