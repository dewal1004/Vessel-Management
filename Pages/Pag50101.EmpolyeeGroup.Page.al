page 50101 "Empolyee Group"
{
    CardPageID = "Employee Group Header.";
    PageType = List;
    SourceTable = "Payroll-Employee Group Header.";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code"; Code)
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field(Step; Step)
                {
                }
                field(Grade; Grade)
                {
                }
                field("Net Pay Due"; "Net Pay Due")
                {
                }
            }
        }
    }

    actions
    {
    }
}

