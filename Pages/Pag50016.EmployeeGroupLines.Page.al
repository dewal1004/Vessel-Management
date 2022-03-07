page 50016 "Employee Group Lines."
{
    PageType = ListPart;
    SourceTable = "Payroll-Employee Group Lines.";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("Employee Name"; "Employee Name")
                {
                }
                field("Employee Group"; "Employee Group")
                {
                }
                field("E/D Code"; "E/D Code")
                {
                    Lookup = true;
                    LookupPageID = "E/D Survey.";
                }
                // field(GetEDName; GetEDName)
                // {
                //     Caption = 'Payslip Text';
                // }
                field(Units; Units)
                {
                }
                field(Rate; Rate)
                {
                }
                field(Quantity; Quantity)
                {
                }
                field(Flag; Flag)
                {
                }
                // field("Default Amount"; "Default Amount")
                // {
                //     DecimalPlaces = 0 :;
                //     NotBlank = true;
                //     Numeric = false;
                // }
                field("Old Default Amount"; "Old Default Amount")
                {
                }
                field("Date Changed"; "Date Changed")
                {
                }
                field("Payslip Group ID"; "Payslip Group ID")
                {
                }
            }
        }
    }

    actions
    {
    }
}

