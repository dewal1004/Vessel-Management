page 50044 "Medical record Card"
{
    PageType = Card;
    SourceTable = "Medical Record";

    layout
    {
        area(content)
        {
            // group(General)
            // {
            //     Caption = 'General';
            //     field("Line No"; "Line No")
            //     {
            //     }
            //     field("Employee No"; "Employee No")
            //     {
            //     }
            //     field(FullName; FullName)
            //     {
            //     }
            //     field("Hospital Code"; "Hospital Code")
            //     {
            //         Editable = "Hospital CodeEditable";
            //     }
            //     field(VendName; VendName)
            //     {
            //         Editable = false;
            //     }
            //     field(Beneficiary; Beneficiary)
            //     {
            //     }
            //     field("Transaction Type"; "Transaction Type")
            //     {
            //         Caption = 'Transaction Code';
            //     }
            //     field("Transaction Description"; "Transaction Description")
            //     {
            //     }
            //     field("Transaction Date"; "Transaction Date")
            //     {
            //     }
            //     field("ASL Ref No"; "ASL Ref No")
            //     {
            //         Caption = 'ASL Ref No';
            //         Editable = "ASL Ref NoEditable";
            //     }
            //     field(Amount; Amount)
            //     {
            //     }
            // }
            group(Employee)
            {
                Caption = 'Employee';
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Region Code"; "Region Code")
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Overview")
            {
                Caption = '&Overview';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Medical Treatment Costs";
            }
        }
    }
}

