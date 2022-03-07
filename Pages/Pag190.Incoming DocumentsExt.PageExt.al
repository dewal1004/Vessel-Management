pageextension 50257 pageextension50257 extends "Incoming Documents"
{
    layout
    {

        //Unsupported feature: Code Modification on "Control17(Control 17).OnDrillDown".

        //trigger OnDrillDown()
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ErrorMessage.SetContext(RecordId);
        ErrorMessage.ShowErrorMessages(false);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        //ErrorMessage.ShowErrorMessagesInContext(RECORDID,FALSE);
        */
        //end;
    }
    actions
    {
        modify(CreateManually)
        {

            //Unsupported feature: Property Modification (Image) on "CreateManually(Action 63)".

            PromotedCategory = Category5;
        }

        //Unsupported feature: Property Deletion (Enabled) on "ReceiveFromOCR(Action 47)".

        moveafter(Setup; CreateManually)
    }


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsDataExchTypeEditable := true;
    if GuiAllowed then begin
      HasCamera := CameraProvider.IsAvailable;
      if HasCamera then
        CameraProvider := CameraProvider.Create;
    end;
    EnableReceiveFromOCR := WaitingToReceiveFromOCR;
    UpdateOCRSetupVisibility;

    FilterGroup(0);
    SetProcessedDocumentsVisibility(GetFilter(Processed) = Format(true));
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6
    //EnableReceiveFromOCR := WaitingToReceiveFromOCR;
    #8..11
    */
    //end;


    //Unsupported feature: Code Modification on "SetControlVisibility(PROCEDURE 9)".

    //procedure SetControlVisibility();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(RecordId);
    EnableReceiveFromOCR := WaitingToReceiveFromOCR;
    UpdateOCRSetupVisibility;
    CanCancelApprovalForRecord := ApprovalsMgmt.CanCancelApprovalForRecord(RecordId);
    AutomaticCreationActionsAreEnabled := "Data Exchange Type" <> '';
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(RecordId);
    //EnableReceiveFromOCR := WaitingToReceiveFromOCR;
    #3..5
    */
    //end;
}

