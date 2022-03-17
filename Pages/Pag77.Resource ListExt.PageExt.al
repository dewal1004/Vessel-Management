pageextension 50232 pageextension50232 extends "Resource List"
{
    layout
    {
        addafter("Default Deferral Template Code")
        {
            field(Posted; Posted)
            {
            }
            field("Posted To Operation Voyage No."; "Posted To Operation Voyage No.")
            {
            }
        }
    }
    actions
    {
        addfirst(Reporting)
        {
            action("Catch Incentive Report")
            {
                Caption = 'Catch Incentive Report';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                RunObject = Report "Catch Incentive";
            }
            action("Crew List Report")
            {
                Caption = 'Crew List Report';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                RunObject = Report "Crew List";
            }
        }
    }
}

