report 50105 "Itew Ledger Qty Update"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            CalcFields = "Value Entry Qty", "Applied Positive", "Applied Negative";
            DataItemTableView = SORTING ("Item No.", "Posting Date");
            RequestFilterFields = "Entry No.", "Item No.", Quantity, "Posting Date", "Location Code", "Value Entry Qty";

            trigger OnAfterGetRecord()
            begin
                with "Item Ledger Entry" do begin
                    CalcFields("Value Entry Qty", "Applied Negative", "Applied Positive");
                    "Old Quantity" := Quantity;
                    Quantity := "Value Entry Qty";
                    "Invoiced Quantity" := "Value Entry Qty";
                    "Remaining Quantity" := "Value Entry Qty" + "Applied Negative" + "Applied Positive";
                    Changed := true;
                    Modify;
                end;
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }
}

