pageextension 50218 pageextension50218 extends "Sales Order"
{
    layout
    {
        modify("No.")
        {
            Visible = true;
        }

        //Unsupported feature: Property Modification (Level) on ""Sell-to Post Code"(Control 115)".


        //Unsupported feature: Property Modification (Level) on ""Sell-to Country/Region Code"(Control 72)".


        //Unsupported feature: Property Modification (Level) on ""Sell-to Contact No."(Control 157)".


        //Unsupported feature: Property Modification (Level) on ""Sell-to Phone No."(Control 136)".


        //Unsupported feature: Property Modification (Level) on ""Sell-to E-Mail"(Control 128)".


        //Unsupported feature: Property Modification (Name) on ""Salesperson Code"(Control 10)".


        //Unsupported feature: Property Modification (SourceExpr) on ""Salesperson Code"(Control 10)".


        //Unsupported feature: Property Modification (ImplicitType) on ""Salesperson Code"(Control 10)".


        //Unsupported feature: Property Modification (Level) on "SelectedPayments(Control 16)".


        //Unsupported feature: Property Modification (Level) on ""Bill-to Name"(Control 18)".


        //Unsupported feature: Property Modification (Level) on ""Bill-to Address"(Control 20)".


        //Unsupported feature: Property Modification (Level) on ""Bill-to Address 2"(Control 22)".


        //Unsupported feature: Property Modification (Level) on ""Bill-to City"(Control 24)".


        //Unsupported feature: Property Modification (Level) on ""Bill-to Post Code"(Control 89)".


        //Unsupported feature: Property Modification (Level) on ""Bill-to Contact No."(Control 159)".


        //Unsupported feature: Property Modification (Level) on ""Bill-to Contact"(Control 26)".

        modify("Salesperson Code")
        {
            Visible = false;
        }

        //Unsupported feature: Property Deletion (QuickEntry) on ""Salesperson Code"(Control 10)".

        modify("Shortcut Dimension 2 Code")
        {
            Visible = false;
        }
        addafter("Sell-to Contact")
        {
            field("Shipment Month"; rec."Shipment Month")
            {
                QuickEntry = false;
            }
        }
        addafter("Area")
        {
            field("Posting No. Series"; rec."Posting No. Series")
            {
            }
        }
        moveafter("Quote No."; "Campaign No.")
        moveafter(Status; SalesLines)
        moveafter("Invoice Details"; SelectedPayments)
        moveafter(SelectedPayments; "Bill-to Contact No.")
        moveafter("Bill-to Contact No."; "Bill-to Name")
        moveafter("Bill-to Address 2"; "Bill-to Post Code")
        moveafter("Bill-to Post Code"; "Bill-to City")
        moveafter("Bill-to City"; "Bill-to Contact")
    }
    actions
    {

        //Unsupported feature: Property Modification (Name) on "PagePostedSalesPrepaymentInvoices(Action 234)".


        //Unsupported feature: Property Modification (Name) on "MoveNegativeLines(Action 154)".


        //Unsupported feature: Property Modification (Name) on "PreviewPosting(Action 51)".

    }


    //Unsupported feature: Property Modification (Id) on "IsOfficeHost(Variable 1019)".

    //var
    //>>>> ORIGINAL VALUE:
    //IsOfficeHost : 1019;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsOfficeHost : 10019;
    //Variable type has not been exported.

    var
        SelectApprover: Code[10];
}

