tableextension 50224 tableextension50224 extends "User Setup"
{
    // 
    // UNL-ASL3.60.01.009 (Santus) June 14, 2005
    // -> added new field "Pick Blocked Empl in Journal";
    fields
    {
        field(50029; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(50317; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(50330; Category; Option)
        {
            Description = 'Categories for the Departments filter for View windows';
            OptionMembers = " ",Export,"Local",Consumption;
        }
        field(50331; "Create Loan"; Boolean)
        {
        }
        field(50332; "Unblock Employee"; Boolean)
        {
        }
        field(50333; "Periodic Activits/SetUp Access"; Boolean)
        {
            Description = 'Periodic Activities / Set Up Access';
        }
        field(50334; "Pick Blocked Empl in Journal"; Boolean)
        {
        }
        field(50335; "Job Catch"; Boolean)
        {
        }
        field(50336; "Confirm StockOutWarning"; Boolean)
        {
        }
        field(50337; "Edit Resource"; Boolean)
        {
        }
        field(50338; "JrnllineShowCRM-ASL"; Boolean)
        {
        }
        field(50339; "Sales Price"; Boolean)
        {
        }
    }
}

