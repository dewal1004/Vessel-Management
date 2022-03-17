page 50166 "Human res-Reports"
{

    layout
    {
    }

    actions
    {
        area(reporting)
        {
            group(Action107)
            {
                
                action("Payrol Report-NSITF")
                {
                    Caption = 'Payrol Report-NSITF';
                    
                    RunObject = Report "Payroll Report - NSITF";
                }
                action("Employee-Staff Absences")
                {
                    Caption = 'Staff Absences';
                    
                    RunObject = Report "Employee - Staff Absences";
                }
                action("Employee-Absences by Causes")
                {
                    Caption = 'Absences by Causes';
                    
                    RunObject = Report "Employee - Absences by Causes";
                }
                action("Man power budget report")
                {
                    
                    RunObject = Report "Mp Budget report";
                }
                action("Staff position count")
                {
                    
                    RunObject = Report "Staff Position as at";
                }
                action("Staff position -Group Wise")
                {
                    
                    RunObject = Report "Staff Position as at by PG";
                }
                action("Employee-List")
                {
                    
                    RunObject = Report "Employee - List";
                }
                action("Employee-Bank Acc No.s")
                {
                    Caption = 'Employee-Bank Acc Nos';
                    
                    RunObject = Report "Employee-Bank Acct";
                }
            }
        }
    }
}

