pageextension 50225 pageextension50225 extends "Purchase Invoice"
{
    layout
    {
        modify("No.")
        {
            Visible = true;
        }
        modify("Responsibility Center")
        {
            Visible = false;
        }

        //Unsupported feature: Property Modification (ImplicitType) on ""Ship-to City"(Control 42)".


        //Unsupported feature: Property Modification (ImplicitType) on ""Pay-to City"(Control 24)".

    }

    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SetDocNoVisible;
    IsOfficeAddin := OfficeMgt.IsAvailable;
    CreateIncomingDocFromEmailAttachment := OfficeMgt.OCRAvailable;
    #4..8
      SetRange("Responsibility Center",UserMgt.GetPurchasesFilter);
      FilterGroup(0);
    end;
    if ("No." <> '') and ("Buy-from Vendor No." = '') then
      DocumentIsPosted := (not Get("Document Type","No."));

    SetRange("Date Filter",0D,WorkDate);

    ActivateFields;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..11
    SetDocNoVisible;
    #12..17
    {<<<<<<<}
    */
    //end;
}

