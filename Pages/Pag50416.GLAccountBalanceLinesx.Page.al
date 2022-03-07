page 50416 "G/L Account Balance Linesx"
{
    Caption = 'G/L Account Balance Lines';
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Card;
    SaveValues = true;
    SourceTable = Date;

    layout
    {
        area(content)
        {
            // repeater(Control1)
            // {
            //     ShowCaption = false;
            //     field("Period Start"; "Period Start")
            //     {
            //         Editable = false;
            //     }
            //     field("Period Name"; "Period Name")
            //     {
            //         Editable = false;
            //     }
            //     field("GLAcc.""Debit Amount"""; GLAcc."Debit Amount")
            //     {
            //         AutoFormatType = 1;
            //         BlankNumbers = BlankNegAndZero;
            //         Caption = 'Debit Amount';
            //         DrillDown = true;
            //         Editable = false;
            //     }
            //     field("GLAcc.""Credit Amount"""; GLAcc."Credit Amount")
            //     {
            //         AutoFormatType = 1;
            //         BlankNumbers = BlankNegAndZero;
            //         Caption = 'Credit Amount';
            //         DrillDown = true;
            //         Editable = false;
            //     }
            //     field("GLAcc.""Net Change"""; GLAcc."Net Change")
            //     {
            //         AutoFormatType = 1;
            //         BlankZero = true;
            //         Caption = 'Net Change';
            //         DrillDown = true;
            //         Editable = false;
            //         Visible = false;
            //     }
            // }
        }
    }

    actions
    {
    }
}

