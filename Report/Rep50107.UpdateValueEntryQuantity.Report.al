report 50107 "Update Value Entry Quantity"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem("Value Entry"; "Value Entry")
        {
            DataItemTableView = SORTING ("Item Ledger Entry No.", "Entry Type") WHERE ("Entry Type" = CONST ("Direct Cost"), Adjustment = CONST (false));
            RequestFilterFields = "Entry No.", "Item No.", "Posting Date", "Location Code", "Invoiced Quantity", "Item Ledger Entry Quantity";

            trigger OnAfterGetRecord()
            begin
                with "Value Entry" do begin
                    CalcFields(ItemLedQty);
                    "Old Quantity" := "Item Ledger Entry Quantity";
                    if ("Item Ledger Entry Quantity" = 0) and ("Invoiced Quantity" <> 0) then
                        "Item Ledger Entry Quantity" := "Invoiced Quantity";
                    if ("Invoiced Quantity" = 0) and (ItemLedQty <> 0) then begin
                        "Invoiced Quantity" := ItemLedQty;
                        "Item Ledger Entry Quantity" := ItemLedQty;
                        "Valued Quantity" := ItemLedQty;
                    end;
                    if ("Item Ledger Entry Quantity" <> 0) and ("Invoiced Quantity" = 0) then
                        "Invoiced Quantity" := "Item Ledger Entry Quantity";
                    if ("Cost Posted to G/L" <> 0) and ("Cost per Unit" = 0) and ("Invoiced Quantity" <> 0) then
                        "Cost per Unit" := "Cost Posted to G/L" / "Invoiced Quantity";
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

