pageextension 50226 pageextension50226 extends "Purchase Credit Memo"
{
    layout
    {
        modify("No.")
        {
            Visible = true;
        }

        //Unsupported feature: Property Modification (ImplicitType) on ""Ship-to City"(Control 38)".


        //Unsupported feature: Property Modification (ImplicitType) on ""Pay-to City"(Control 28)".

    }

    //Unsupported feature: Property Modification (Id) on "IsOfficeAddin(Variable 1015)".

    //var
    //>>>> ORIGINAL VALUE:
    //IsOfficeAddin : 1015;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsOfficeAddin : 10015;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "CanCancelApprovalForRecord(Variable 1014)".

    //var
    //>>>> ORIGINAL VALUE:
    //CanCancelApprovalForRecord : 1014;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CanCancelApprovalForRecord : 10014;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "OpenPostedPurchCrMemoQst(Variable 1013)".

    //var
    //>>>> ORIGINAL VALUE:
    //OpenPostedPurchCrMemoQst : 1013;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //OpenPostedPurchCrMemoQst : 10013;
    //Variable type has not been exported.

    var
        purchLine: Record "Purchase Line";
        purchHeader: Record "Purchase Header";
        PurchSetup: Record "Purchases & Payables Setup";
        PurchCalcDisc: Codeunit "Purch.-Calc.Discount";
}

