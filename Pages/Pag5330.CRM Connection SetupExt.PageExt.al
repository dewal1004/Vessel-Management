pageextension 50313 pageextension50313 extends "CRM Connection Setup"
{

    //Unsupported feature: Property Modification (TextConstString) on "SynchronizeModifiedQst(Variable 1038)".

    //var
    //>>>> ORIGINAL VALUE:
    //SynchronizeModifiedQst : ENU=This will synchronize all modified records in all Integration Table Mappings.\\Do you want to continue?;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SynchronizeModifiedQst : ENU=This will syncrhronize all modified records in all Integration Table Mappings.\\Do you want to continue?;
    //Variable type has not been exported.


    //Unsupported feature: Code Modification on "OnOpenPage".

    //trigger OnOpenPage()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if not Get then begin
      Init;
      InitializeDefaultProxyVersion;
    #4..14
        if "Disable Reason" <> '' then
          CRMIntegrationManagement.SendConnectionDisabledNotification("Disable Reason");
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..17
    RefreshData;
    */
    //end;

    //Unsupported feature: Variable Insertion (Variable: TempCRMConnectionSetup) (VariableCollection) on "SetStyleExpr(PROCEDURE 9)".


    //Unsupported feature: Variable Insertion (Variable: CRMIntegrationManagement) (VariableCollection) on "SetStyleExpr(PROCEDURE 9)".


    //Unsupported feature: Variable Insertion (Variable: ErrorObject) (VariableCollection) on "SetStyleExpr(PROCEDURE 9)".


    //Unsupported feature: Variable Insertion (Variable: ConnectionName) (VariableCollection) on "SetStyleExpr(PROCEDURE 9)".


    //Unsupported feature: Variable Insertion (Variable: CRMIntegrationManagement) (VariableCollection) on "GetRunningJobsStyleExpr(PROCEDURE 1)".

}

