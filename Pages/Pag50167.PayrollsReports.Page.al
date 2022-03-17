page 50167 "Payrolls-Reports"
{

    layout
    {
    }

    actions
    {
        area(reporting)
        {
            group(Action152)
            {
                
                action("Create New Payslips ")
                {
                    
                    RunObject = Report "ASL Create New payslips - New";
                }
                action("Monthly Payslip")
                {
                    
                    RunObject = Report "Monthly Payslip";
                }
                action("Payroll Report")
                {
                    
                    RunObject = Report "Payroll Report";
                }
                action("Outstanding Loans")
                {
                    
                    RunObject = Report "OUTSTANDING LOANS";
                }
            }
        }
    }
}

