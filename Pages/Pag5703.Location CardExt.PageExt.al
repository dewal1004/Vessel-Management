pageextension 50324 pageextension50324 extends "Location Card"
{
    layout
    {
        modify(Control1900000007)
        {
            Visible = false;
        }
        addafter("Bin Policies")
        {
            group(Vessel)
            {
                Caption = 'Vessel';
                field("Location Type"; "Location Type")
                {
                }
                field(Captain; Captain)
                {
                }
                field("Ves Age"; "Ves Age")
                {
                }
                field("Insurance Rate"; "Insurance Rate")
                {
                }
                field("Depreciation Rate"; "Depreciation Rate")
                {
                }
                field("Budgeted Voyages"; "Budgeted Voyages")
                {
                }
                field("Current Operation"; "Current Operation")
                {
                }
                field("Current Voyage"; "Current Voyage")
                {
                }
                field("Rad Tel"; "Rad Tel")
                {
                }
                field(ExpCode; ExpCode)
                {
                }
                field("Interest Rate"; "Interest Rate")
                {
                }
                field("Vessel Endurance"; "Vessel Endurance")
                {
                }
                field("Port Captain"; "Port Captain")
                {
                }
            }
            group("Vessel Schedules")
            {
                Caption = 'Vessel Schedules';
                field("Lst Ovh"; "Lst Ovh")
                {
                }
                field("Nxt Ovh"; "Nxt Ovh")
                {
                }
                field("Lst Ddk"; "Lst Ddk")
                {
                }
                field("Nxt Ddk"; "Nxt Ddk")
                {
                }
                field("Brnd Pk"; "Brnd Pk")
                {
                }
                field("Inner P"; "Inner P")
                {
                }
                field(Grades; Grades)
                {
                }
                field(Deratg; Deratg)
                {
                }
                field("Crab CW"; "Crab CW")
                {
                }
                field("WT GL/W"; "WT GL/W")
                {
                }
                field(Batch; Batch)
                {
                }
                field("R Flare"; "R Flare")
                {
                }
                field("Str Lic"; "Str Lic")
                {
                }
                field("Fsh Ins"; "Fsh Ins")
                {
                }
                field("Fsh Dst"; "Fsh Dst")
                {
                }
                field("Ins Sur"; "Ins Sur")
                {
                }
                field("Dst Sur"; "Dst Sur")
                {
                }
                field("Pow Ext"; "Pow Ext")
                {
                }
                field("Fom Ext"; "Fom Ext")
                {
                }
                field("CO2 Ext"; "CO2 Ext")
                {
                }
                field("Life Rf"; "Life Rf")
                {
                }
                field(Parchut; Parchut)
                {
                }
                field("E.U. No"; "E.U. No")
                {
                }
            }
            area(factboxes)
            {
            }
            systempart(Control67;Links)
            {
                Visible = false;
            }
            systempart(Control64;Notes)
            {
                Visible = false;
            }
        }
    }
}

