page 50165 "Job-Reports"
{
    PageType = List;

    layout
    {
        area(content)
        {
        }
    }

    actions
    {
        area(processing)
        {
        }
        area(reporting)
        {
            group(Jobs)
            {
                
                action("Points Summary")
                {
                    
                    RunObject = Report "Points Summary VJ";
                }
                action("New Daily Points Report Fast")
                {
                    
                    RunObject = Report "New Daily Points Report Fast";
                }
                action("Consolidated Narration")
                {
                    
                    RunObject = Report "Consolidated Narration_";
                }
                action("Daily BreakUp by Vess Summary")
                {
                    
                    RunObject = Report "Daily BreakUp by Vess Summary";
                }
                action("Daily BreakUp by Vessel Rep 1")
                {
                    
                    RunObject = Report "Daily BreakUp by Vessel Rep 1";
                }
                action("Daily BreakUp by Vessel Rep 2")
                {
                    
                    RunObject = Report "Daily BreakUp by Vessel Rep 2";
                }
                action("Daily BreakUp by Vessel Rep 3")
                {
                    
                    RunObject = Report "Daily BreakUp by Vessel Rep 3";
                }
                action("Daily BreakUp by Vessel Rep 4")
                {
                    
                    RunObject = Report "Daily BreakUp by Vessel Rep 4";
                }
                action("Vessel Daily Log")
                {
                    
                    RunObject = Report "Vessel Daily Log";
                }
                action("Voyage Narration")
                {
                    
                    RunObject = Report "Voyage Narration";
                }
                action("Transfer To Vessel")
                {
                    
                    RunObject = Report "Transfer To Vessel";
                }
                action("Report Organoleptic")
                {
                    Caption = 'Report Organoleptic';
                    
                    RunObject = Report Organoleptic;
                }
                action("Job - Transaction Detail 2")
                {
                    Caption = 'Job - Transaction Detail 2';
                    
                    RunObject = Report "Job - Transaction Detail 2";
                }
            }
        }
    }
}

