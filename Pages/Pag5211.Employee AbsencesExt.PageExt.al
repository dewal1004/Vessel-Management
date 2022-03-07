pageextension 50308 pageextension50308 extends "Employee Absences"
{
    layout
    {
        modify("Employee No.")
        {
            HideValue = true;
        }
        addafter(Quantity)
        {
            field("Employee Contract code"; "Employee Contract code")
            {
            }
        }
    }
}

