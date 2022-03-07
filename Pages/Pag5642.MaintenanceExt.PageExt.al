pageextension 50323 pageextension50323 extends Maintenance
{
    Editable = false;
    actions
    {
        addfirst(creation)
        {
            action("&Edit Maintenace Code")
            {
                Caption = '&Edit Maintenace Code';
                RunObject = Page Maintenance;
            }
            action(Ok)
            {
                Caption = 'Ok';
            }
        }
    }
}

