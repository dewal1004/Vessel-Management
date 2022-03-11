tableextension 50313 tableextension50313 extends "Transfer Shipment Header"
{
    fields
    {
        field(50000; "Voyage No."; Code[10])
        {
            Editable = false;
        }
        field(50001; "Req. Type"; Option)
        {
            Editable = false;
            OptionMembers = " ",DECK,ELEC,LSFF,"FISHING GEAR",PACKING,ENGR,LUBS;
        }
        field(50002; "New Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(50300; "Transfer From Voy. No."; Code[10])
        {
            Editable = false;
        }
        field(50301; "Transfer To Voy. No."; Code[10])
        {
            Editable = false;
        }
        field(50311; "Requested By"; Code[30])
        {
            Editable = false;
        }
        field(50312; "Received By"; Code[30])
        {
            Editable = false;
        }
        field(50314; "Issued By"; Code[30])
        {
            Editable = false;
        }
        field(50315; "Approved By"; Code[30])
        {
            Editable = false;
        }
        field(50316; "Transfer Type"; Option)
        {
            Editable = false;
            OptionMembers = Regular,Repairs,"Dry Dock","Over Hauling";
        }
        field(50321; "Posting Date Old"; Date)
        {
        }
        field(50345; "Gen. Prod. Posting Grp. Filter"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            FieldClass = FlowFilter;
            TableRelation = "Gen. Product Posting Group";
        }
        field(50399; "Transfer Value"; Decimal)
        {
            FieldClass = Normal;
        }
    }
    keys
    {
        key(ASLKeyH1; "Transfer Order No.")
        {
        }
        key(ASLKeyF2; "Transfer-to Code", "Shipment Date")
        {
        }
    }
}

