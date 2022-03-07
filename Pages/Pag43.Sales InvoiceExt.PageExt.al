pageextension 50219 pageextension50219 extends "Sales Invoice"
{
    layout
    {
        modify("No.")
        {
            Visible = true;
        }
    }
    var
        ServMgtDocument: Boolean;
}

