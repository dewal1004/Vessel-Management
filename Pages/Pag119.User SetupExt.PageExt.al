pageextension 50241 pageextension50241 extends "User Setup"
{
    // 
    // UNL-ASL3.60.01.009 (Santus) June 14, 2005
    // -> added new control "Pick Blocked Empl in Journal";
    layout
    {
        addafter("Time Sheet Admin.")
        {
            field("Create Loan"; "Create Loan")
            {
                ShowCaption = true;
            }
            field("Unblock Employee"; "Unblock Employee")
            {
                ShowCaption = true;
            }
            field("Edit Resource"; "Edit Resource")
            {
                ShowCaption = true;
            }
            field("Periodic Activits/SetUp Access"; "Periodic Activits/SetUp Access")
            {
                ShowCaption = true;
            }
            field("Job Catch"; "Job Catch")
            {
                ShowCaption = true;
            }
            field("Pick Blocked Empl in Journal"; "Pick Blocked Empl in Journal")
            {
                ShowCaption = true;
            }
            field("JrnllineShowCRM-ASL"; "JrnllineShowCRM-ASL")
            {
            }
            field("Confirm StockOutWarning"; "Confirm StockOutWarning")
            {
                ShowCaption = true;
                Visible = true;
            }
            field("Sales Price"; "Sales Price")
            {
            }
        }
    }
}

