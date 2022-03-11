pageextension 50216 pageextension50216 extends "General Journal"
{
    // UNL-ASL3.60.01.009 (Santus) June 14, 2005
    // -> modified the OnValidate trigger of the external document no. field. to check for permission to insert blocked
    //   employees into journal lines when reason code is employee.
    // //
    // #1..7
    layout
    {


        //Unsupported feature: Code Insertion on ""External Document No."(Control 81)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*

        if ("Reason Code" = 'EMPLOYEE') and ("External Document No." <> '') then begin
          Employee.Get("External Document No.");
          if Employee.Blocked then begin
            UserSetup.SetRange(UserSetup."User ID",UserId);
            UserSetup.SetRange(UserSetup."Pick Blocked Empl in Journal",true);
            if UserSetup.Find('-') then begin
              if not Confirm('Employee is blocked, do you want to continue?',false) then
                Employee.TestField(Blocked,false);
            end else
                Employee.TestField(Blocked,false);
          end;
        end;
        */
        //end;
        addafter("Incoming Document Entry No.")
        {
            field("Depreciation Book Code"; rec."Depreciation Book Code")
            {
            }
        }
        addafter(Description)
        {
            field(Description1; rec.Description1)
            {
            }
        }
        addafter(Quantity)
        {
            field("Line No."; rec."Line No.")
            {
            }
        }
        addafter("Direct Debit Mandate ID")
        {
            field("FA Posting Type"; rec."FA Posting Type")
            {
                Visible = false;
            }
            field("FA Posting Date"; rec."FA Posting Date")
            {
                Visible = false;
            }
            field("Loan ID"; rec."Loan ID")
            {
                Visible = false;
            }
            field("Maintenance Code"; rec."Maintenance Code")
            {
                Visible = false;
            }
            field("Job No."; rec."Job No.")
            {
            }
        }
    }


    //Unsupported feature: Property Modification (Id) on "CanCancelApprovalForJnlBatch(Variable 1024)".

    //var
    //>>>> ORIGINAL VALUE:
    //CanCancelApprovalForJnlBatch : 1024;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CanCancelApprovalForJnlBatch : 10024;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "CanCancelApprovalForJnlLine(Variable 1025)".

    //var
    //>>>> ORIGINAL VALUE:
    //CanCancelApprovalForJnlLine : 1025;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CanCancelApprovalForJnlLine : 10025;
    //Variable type has not been exported.

    var
        Employee: Record Employee;
        UserSetup: Record "User Setup";
        GenJnlLine: Record "Gen. Journal Line";
        GenJnlTemplate: Record "Gen. Journal Template";


        //Unsupported feature: Code Modification on "OnAfterGetRecord".

        //trigger OnAfterGetRecord()
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GenJnlManagement.GetAccounts(Rec,AccName,BalAccName);
        ShowShortcutDimCode(ShortcutDimCode);
        HasIncomingDocument := "Incoming Document Entry No." <> 0;
        CurrPage.IncomingDocAttachFactBox.PAGE.SetCurrentRecordID(RecordId);
        SetUserInteractions;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..5
        ShowView;
        */
        //end;


        //Unsupported feature: Code Modification on "SetControlAppearance(PROCEDURE 5)".

        //procedure SetControlAppearance();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        OpenApprovalEntriesExistForCurrUser :=
          OpenApprovalEntriesExistForCurrUser or
          ApprovalsMgmt.HasOpenApprovalEntriesForCurrentUser(RecordId);

        OpenApprovalEntriesOnJnlLineExist := ApprovalsMgmt.HasOpenApprovalEntries(RecordId);
        OpenApprovalEntriesOnBatchOrCurrJnlLineExist := OpenApprovalEntriesOnJnlBatchExist or OpenApprovalEntriesOnJnlLineExist;

        ShowWorkflowStatusOnLine := CurrPage.WorkflowStatusLine.PAGE.SetFilterOnWorkflowRecord(RecordId);

        CanCancelApprovalForJnlLine := ApprovalsMgmt.CanCancelApprovalForRecord(RecordId);

        SetPayrollAppearance;

        WorkflowWebhookManagement.GetCanRequestAndCanCancel(RecordId,CanRequestFlowApprovalForLine,CanCancelFlowApprovalForLine);
        CanRequestFlowApprovalForBatchAndCurrentLine := CanRequestFlowApprovalForBatch and CanRequestFlowApprovalForLine;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..7
        OpenApprovalEntriesOnJnlLineExist := ApprovalsMgmt.HasOpenApprovalEntries(RecordId);
        OpenApprovalEntriesOnBatchOrCurrJnlLineExist := OpenApprovalEntriesOnJnlBatchExist or OpenApprovalEntriesOnJnlLineExist;

        #8..15
        */
        //end;

    procedure "----"()
    begin
    end;

    procedure ShowView()
    begin
        /*IF "Reason Code"<>'' THEN
        BEGIN
          CurrForm."Reason Code".VISIBLE(TRUE);
          CurrForm."External Document No.".VISIBLE(TRUE);
        END
        ELSE
        BEGIN
          CurrForm."Reason Code".VISIBLE(FALSE);
          CurrForm."External Document No.".VISIBLE(FALSE);
        END;
        */

    end;
}

