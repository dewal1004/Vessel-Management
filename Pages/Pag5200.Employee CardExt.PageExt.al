pageextension 50302 pageextension50302 extends "Employee Card"
{
    layout
    {
        modify("Emplymt. Contract Code")
        {

            //Unsupported feature: Property Modification (Name) on ""Emplymt. Contract Code"(Control 42)".


            //Unsupported feature: Property Modification (SourceExpr) on ""Emplymt. Contract Code"(Control 42)".


            //Unsupported feature: Property Insertion (Lookup) on ""Emplymt. Contract Code"(Control 42)".

            LookupPageID = "Employment Contracts";
        }
        modify("Resource No.")
        {
            Editable = false;
        }
        modify("Application Method")
        {
            Visible = false;
        }
        addafter("Country/Region Code")
        {
            field("Global Dimension 2 Code"; "Global Dimension 2 Code")
            {
            }
        }
        addafter("Grounds for Term. Code")
        {
            field("Modified By"; "Modified By")
            {
            }
            field(Blocked; Blocked)
            {
            }
            field("Blocked Modified Date"; "Blocked Modified Date")
            {
            }
            field("Blocked Modified By"; "Blocked Modified By")
            {
            }
        }
        addafter("Statistics Group Code")
        {
            field("Balance (LCY)"; "Balance (LCY)")
            {
            }
            field("Posting Group"; "Posting Group")
            {
            }
        }
        addafter("Resource No.")
        {
            field("MP Status"; "MP Status")
            {
            }
            field(Suspended; Suspended)
            {
            }
            field("Suspension Modified By"; "Suspension Modified By")
            {
            }
            field("Suspension Modified Date"; "Suspension Modified Date")
            {
            }
        }
        addafter("Salespers./Purch. Code")
        {
            field(Grade; Grade)
            {
            }
            field(Step; Step)
            {
            }
            field("Bank Account"; "Bank Account")
            {
            }
        }
        addafter("Union Code")
        {
            field("Acct. No"; "Acct. No")
            {
            }
        }
        addafter("Union Membership No.")
        {
            field("Pension Scheme"; "Pension Scheme")
            {
            }
            field(Married; Married)
            {
            }
            field("National ID Number"; "National ID Number")
            {
            }
            field("NSITF Number"; "NSITF Number")
            {
            }
        }
        addafter("Employee Posting Group")
        {
            field("Application Method"; "Application Method")
            {
                ApplicationArea = BasicHR;
                ToolTip = 'Specifies how to apply payments to entries for this employee.';
            }
        }
    }
    actions
    {
        addafter(Dimensions)
        {
            action("Make Resource")
            {
                Caption = 'Make Resource';
                Image = "Action";
            }
        }
        addfirst(reporting)
        {
            group(Action78)
            {
            }
            action(" Monthly Payslip")
            {
                Caption = ' Monthly Payslip';
                Image = "Report";
                //*** RunObject = Report "Monthly Payslip";
            }
            action("Payroll Report - NSITF")
            {
                Caption = 'Payroll Report - NSITF';
                Image = "Report";
                //*** RunObject = Report "Payroll Report - NSITF";
            }
            action("Employee-Bank Acct")
            {
                Caption = 'Employee-Bank Acct';
                Image = "Report";
                //*** RunObject = Report "Employee-Bank Acct";
            }
            action("Outstanding Loans")
            {
                Caption = 'Outstanding Loans';
                Image = "Report";
                //*** RunObject = Report "OUTSTANDING LOANS";
            }
            action("Payroll Report")
            {
                Caption = 'Payroll Report';
                Image = "Report";
                //*** RunObject = Report "Payroll Report";
            }
        }
    }

    var
        I: Integer;
        Res: Record Resource;
        Eval: Boolean;
        EmpContra: Record "Employment Contract";
        Res2: Record Resource;
        Answ2: Boolean;
        Answ: Boolean;

    local procedure ResExist()
    begin
        Res2.SetRange(Res2."No.", Res."No.");
        Res2.SetRange(Res2.Name, Res.Name);
        Res2.SetRange(Res2."Employment Date", Res."Employment Date");
        Res2.SetRange(Res2."Resource Group No.", Res."Resource Group No.");
        if Res2.Find('-') then
            repeat
                Answ2 := Confirm('Employee has a resource no already\'
                              + 'delete old resource No.', true);
                if Answ2 then
                    Res2.Delete
                else
                    Error('Resource May not be duplicated');
            until Res2.Next = 0;
    end;
}

