pageextension 50268 pageextension50268 extends "Recurring Job Jnl."
{
    // layout
    // {
    //     modify("Recurring Method")
    //     {

    //         //Unsupported feature: Property Modification (Name) on ""Recurring Method"(Control 30)".


    //         //Unsupported feature: Property Modification (SourceExpr) on ""Recurring Method"(Control 30)".


    //         //Unsupported feature: Property Modification (ImplicitType) on ""Recurring Method"(Control 30)".

    //         Editable = false;
    //     }
    //     modify("Recurring Frequency")
    //     {
    //         Visible = false;
    //     }
    //     modify("Line Type")
    //     {
    //         Visible = false;
    //     }
    //     modify("Posting Date")
    //     {
    //         Editable = false;
    //     }
    //     modify("Document No.")
    //     {
    //         Visible = false;
    //     }
    //     modify("Job No.")
    //     {
    //         Editable = false;
    //     }
    //     modify("Job Task No.")
    //     {
    //         Visible = false;
    //         Editable = false;
    //     }
    //     modify(Type)
    //     {
    //         Visible = false;
    //     }
    //     modify(Description)
    //     {

    //         //Unsupported feature: Property Modification (Name) on "Description(Control 12)".


    //         //Unsupported feature: Property Modification (SourceExpr) on "Description(Control 12)".


    //         //Unsupported feature: Property Modification (ImplicitType) on "Description(Control 12)".

    //         Editable = false;
    //     }
    //     modify(Quantity)
    //     {
    //         Editable = false;
    //     }

    //     //Unsupported feature: Code Modification on "CurrentJnlBatchName(Control 78).OnValidate".

    //     //trigger OnValidate()
    //     //Parameters and return type have not been exported.
    //     //>>>> ORIGINAL CODE:
    //     //begin
    //     /*
    //     JobJnlManagement.CheckName(CurrentJnlBatchName,Rec);
    //     CurrentJnlBatchNameOnAfterVali;
    //     */
    //     //end;
    //     //>>>> MODIFIED CODE:
    //     //begin
    //     /*
    //     JobJnlManagement.CheckName(CurrentJnlBatchName,Rec);
    //     */
    //     //end;
    //     modify("Total Cost")
    //     {
    //         Visible = false;
    //     }
    //     addfirst(Control1)
    //     {
    //         field(Code1; Code1)
    //         {
    //             Editable = false;
    //         }
    //         field(Catch; Catch)
    //         {
    //         }
    //         field(Pack; Pack)
    //         {
    //             Editable = false;
    //         }
    //     }
    //     addafter(Description)
    //     {
    //         field("Line No."; "Line No.")
    //         {
    //             Editable = false;
    //         }
    //     }
    //     addafter("External Document No.")
    //     {
    //         field("Recurring Method"; "Recurring Method")
    //         {
    //         }
    //     }
    //     addafter("No.")
    //     {
    //         field("Phase Code"; "Phase Code")
    //         {
    //         }
    //         field("Task Code"; "Task Code")
    //         {
    //         }
    //     }
    //     addafter("ShortcutDimCode[8]")
    //     {
    //         field("Source Code"; "Source Code")
    //         {
    //         }
    //     }
    //     addafter("Unit Cost (LCY)")
    //     {
    //         field("Total Cost"; "Total Cost")
    //         {
    //             ApplicationArea = Jobs;
    //             ToolTip = 'Specifies the total cost for the journal line. The total cost is calculated based on the job currency, which comes from the Currency Code field on the job card.';
    //         }
    //     }
    //     addafter("Account Name")
    //     {
    //         group("Shrimp Points")
    //         {
    //             Caption = 'Shrimp Points';
    //             field(Control9; "Shrimp Points")
    //             {
    //             }
    //         }
    //         group("Fish Points")
    //         {
    //             Caption = 'Fish Points';
    //             field(Control13; "Fish Points")
    //             {
    //             }
    //         }
    //         group("Catch Points")
    //         {
    //             Caption = 'Catch Points';
    //             field(Control17; "Catch Points")
    //             {
    //             }
    //         }
    //         group("Catch Total")
    //         {
    //             Caption = 'Catch Total';
    //             field(Control21; "Catch Total")
    //             {
    //             }
    //         }
    //     }
    //     moveafter(Description; Description)
    // }
    actions
    {
        modify("Test Report")
        {
            Promoted = true;
            PromotedIsBig = true;
            PromotedCategory = Process;
        }


        //Unsupported feature: Code Modification on ""P&ost"(Action 56).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CODEUNIT.Run(CODEUNIT::"Job Jnl.-Post",Rec);
        CurrentJnlBatchName := GetRangeMax("Journal Batch Name");
        CurrPage.Update(false);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*

        SetFilter(Quantity,'<>0');
        #1..3
        */
        //end;


        //Unsupported feature: Code Modification on ""Post and &Print"(Action 57).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CODEUNIT.Run(CODEUNIT::"Job Jnl.-Post+Print",Rec);
        CurrentJnlBatchName := GetRangeMax("Journal Batch Name");
        CurrPage.Update(false);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        SetFilter(Quantity,'<>0');
        #1..3
        */
        //end;
        addafter(Reconcile)
        {
            action(ClearCatch)
            {
                Caption = 'ClearCatch';
                Image = Import;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
            }
        }
        addafter("Post and &Print")
        {
            action(Narration)
            {
                Caption = 'Narration';
                Image = TaskList;
                Promoted = true;
                RunObject = Page "Lost Days";
                RunPageLink = "Table Name" = CONST (Job),
                              "No." = FIELD ("Job No."),
                              Type = CONST (Narration);
            }
        }
    }

    var
        ".................................": Integer;
        Items: Record Item;
        Location: Record Location;
        Job: Record Job;


        //Unsupported feature: Code Modification on "OnAfterGetCurrRecord".

        //trigger OnAfterGetCurrRecord()
        //>>>> ORIGINAL CODE:
        //begin
        /*
        JobJnlManagement.GetNames(Rec,JobDescription,AccName);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        JobJnlManagement.GetNames(Rec,JobDescription,AccName);
        {
        //3.0
        CurrPage.SAVERECORD;
        JobJnlManagement.SetName(CurrentJnlBatchName,Rec);
        CurrPage.UPDATE(FALSE);
        }
        */
        //end;
}

