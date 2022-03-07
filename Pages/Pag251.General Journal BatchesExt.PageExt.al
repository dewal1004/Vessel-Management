pageextension 50262 pageextension50262 extends "General Journal Batches"
{
    layout
    {
        modify(Name)
        {
            Visible = false;
        }
        modify(Description)
        {
            Visible = false;
        }
        modify("Bal. Account Type")
        {
            Visible = false;
        }
        modify("Bal. Account No.")
        {
            Visible = false;
        }
        modify("No. Series")
        {
            Visible = false;
        }
        modify("Posting No. Series")
        {
            Visible = false;
        }
        modify("Reason Code")
        {
            Visible = false;
        }
        modify("Copy VAT Setup to Jnl. Lines")
        {
            Visible = false;
        }
        modify("Allow VAT Difference")
        {
            Visible = false;
        }
        modify("Allow Payment Export")
        {
            Visible = false;
        }
        modify("Bank Statement Import Format")
        {
            Visible = false;
        }
        addfirst(Control1)
        {
            field("Journal Template Name"; "Journal Template Name")
            {
            }
            field(Name; Name)
            {
            }
            field(Description; Description)
            {
            }
            field("Reason Code"; "Reason Code")
            {
            }
            field("Bal. Account Type"; "Bal. Account Type")
            {
            }
            field("Bal. Account No."; "Bal. Account No.")
            {
            }
            field("No. Series"; "No. Series")
            {
            }
            field("Posting No. Series"; "Posting No. Series")
            {
            }
            field("Copy VAT Setup to Jnl. Lines"; "Copy VAT Setup to Jnl. Lines")
            {
            }
            field("Allow VAT Difference"; "Allow VAT Difference")
            {
            }
            field("Allow Payment Export"; "Allow Payment Export")
            {
            }
            field("Bank Statement Import Format"; "Bank Statement Import Format")
            {
            }
            field("Template Type"; "Template Type")
            {
            }
            field(Recurring; Recurring)
            {
            }
            field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
            {
            }
            field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
            {
            }
        }
    }
    actions
    {

        //Unsupported feature: Property Modification (Name) on "TestReport(Action 16)".

    }
}

