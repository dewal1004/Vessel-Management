tableextension 50220 tableextension50220 extends "Invoice Post. Buffer"
{
    fields
    {
        field(50362; "External Document No."; Code[20])
        {
            Caption = 'External Document No.';
            TableRelation = IF ("Reason Code" = CONST ('USAGE')) "Fixed Asset" WHERE ("FA Subclass Code" = FILTER (<> 'VESSEL'))
            ELSE
            IF ("Reason Code" = CONST ('USAGERES')) Location WHERE ("Location Type" = FILTER (Residence))
            ELSE
            IF ("Reason Code" = CONST ('USAGEOTHRS')) "Standard Text" WHERE (Others = CONST (true));
        }
        field(50364; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
    }
}

