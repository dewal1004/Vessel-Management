report 50000 Sample_Item
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report\Rdlc\SampleItem.rdlc';

    dataset
    {
        dataitem(Item; Item)
        {
            column(SalesLCY_Item; Item."Sales (LCY)")
            {
            }
            column(No_Item; Item."No.")
            {
            }
            column(Description_Item; Item.Description)
            {
            }
            column(SalesQty_Item; Item."Sales (Qty.)")
            {
            }

            trigger OnAfterGetRecord()
            begin
                // if PrintToExcel then
                //   ExcelBuff.CreateBook('Item', 'Test');
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(PrintToExcel; PrintToExcel)
                {
                    ShowCaption = false;
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        ExcelBuff: Record "Excel Buffer";
        PrintToExcel: Boolean;
}

