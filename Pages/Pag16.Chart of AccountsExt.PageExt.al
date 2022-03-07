pageextension 50205 pageextension50205 extends "Chart of Accounts"
{
    layout
    {
        modify("No.")
        {
            Editable = false;
        }
    }
    actions
    {
        modify("&Balance")
        {
            Visible = false;
        }
    }
}

