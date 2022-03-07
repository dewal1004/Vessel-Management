pageextension 50258 pageextension50258 extends "Job Journal"
{
    layout
    {

        //Unsupported feature: Property Modification (ImplicitType) on "CurrentJnlBatchName(Control 78)".

        modify("Document No.")
        {
            Visible = false;
        }
        modify("Job No.")
        {
            Visible = false;
        }
        modify(Type)
        {
            Visible = false;
        }
        modify("Work Type Code")
        {
            Visible = false;
        }
        modify("Unit of Measure Code")
        {
            Visible = false;
        }
        modify(Quantity)
        {
            Visible = true;
        }
        modify("Unit Cost")
        {
            Visible = false;
        }
        modify("Total Cost")
        {
            Visible = false;
        }
        modify("Unit Price")
        {
            Visible = false;
        }
        modify(ShortcutDimCode3)
        {
            Visible = false;
        }
        modify(ShortcutDimCode4)
        {
            Visible = false;
        }
        addafter(Quantity)
        {
            field(Catch; Catch)
            {
            }
            field("Stock Position Calc."; "Stock Position Calc.")
            {
            }
            field("Posting Group"; "Posting Group")
            {
            }
        }
        addafter("Total Cost (LCY)")
        {
            field("Source Code"; "Source Code")
            {
            }
        }
        addafter("Shortcut Dimension 2 Code")
        {
            field(ShortcutDimCode3; ShortcutDimCode[3])
            {
                ApplicationArea = Dimensions;
                CaptionClass = '1,2,3';
                TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (3),
                                                              "Dimension Value Type" = CONST (Standard),
                                                              Blocked = CONST (false));
                Visible = DimVisible3;
            }
            field(ShortcutDimCode4; ShortcutDimCode[4])
            {
                ApplicationArea = Dimensions;
                CaptionClass = '1,2,4';
                TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (4),
                                                              "Dimension Value Type" = CONST (Standard),
                                                              Blocked = CONST (false));
                Visible = DimVisible4;
            }
        }
        addafter(Control73)
        {
            field("Reconciliation Catch Quantity"; "Reconciliation Catch Quantity")
            {
            }
        }
        moveafter(Description; Quantity)
    }
    actions
    {


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
        SetFilter(Quantity,'<>%1',0);
        SetRange("Location Code");
        CODEUNIT.Run(CODEUNIT::"Job Jnl.-Post",Rec);  //standard
        //SETRANGE(Quantity,0,0);
        //DELETEALL;

        SetRange(Quantity);
        CurrentJnlBatchName := GetRangeMax("Journal Batch Name");  //standard
        CurrPage.Update(false);        //standard
        Catigo;
        if (User."Global Dimension 2 Code"<>'MRKT') then
            SetRange("Location Code",'CRM-ASL');
        */
        //end;
        addafter(SuggestLinesFromTimeSheets)
        {
            action("Fish Caught/Reconciliation")
            {
                Caption = 'Fish Caught/Reconciliation';
                Image = Reconcile;
            }
            action("------------------------")
            {
                Caption = 'Separator';
            }
        }
    }


    //Unsupported feature: Property Modification (Length) on "CurrentJnlBatchName(Variable 1005)".

    //var
    //>>>> ORIGINAL VALUE:
    //CurrentJnlBatchName : 10;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CurrentJnlBatchName : 20;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "IsSaasExcelAddinEnabled(Variable 1007)".

    //var
    //>>>> ORIGINAL VALUE:
    //IsSaasExcelAddinEnabled : 1007;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsSaasExcelAddinEnabled : 10007;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "DimVisible1(Variable 1016)".

    //var
    //>>>> ORIGINAL VALUE:
    //DimVisible1 : 1016;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimVisible1 : 10016;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "DimVisible2(Variable 1015)".

    //var
    //>>>> ORIGINAL VALUE:
    //DimVisible2 : 1015;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimVisible2 : 10015;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "DimVisible3(Variable 1014)".

    //var
    //>>>> ORIGINAL VALUE:
    //DimVisible3 : 1014;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimVisible3 : 10014;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "DimVisible4(Variable 1013)".

    //var
    //>>>> ORIGINAL VALUE:
    //DimVisible4 : 1013;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimVisible4 : 10013;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "DimVisible5(Variable 1012)".

    //var
    //>>>> ORIGINAL VALUE:
    //DimVisible5 : 1012;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimVisible5 : 10012;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "DimVisible6(Variable 1011)".

    //var
    //>>>> ORIGINAL VALUE:
    //DimVisible6 : 1011;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimVisible6 : 10011;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "DimVisible7(Variable 1010)".

    //var
    //>>>> ORIGINAL VALUE:
    //DimVisible7 : 1010;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimVisible7 : 10010;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "DimVisible8(Variable 1009)".

    //var
    //>>>> ORIGINAL VALUE:
    //DimVisible8 : 1009;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DimVisible8 : 10009;
    //Variable type has not been exported.

    var
        "---": Integer;
        User: Record "User Setup";
        Inventr: Record "Inventory Setup";
        Category: Option " ",HON,HDLS,OTHER,"LOCAL";
        Isactive: Boolean;
        JBat: Record "Job Journal Batch";
        i: Integer;
        JobcatchDefault: Record "Job catch Default";
        JobJournalLine: Record "Job Journal Line";
        UnitofMeasure: Record "Unit of Measure";
        UnitofMeasureCd: Code[10];
        ITVars: Code[10];
        Jobs: Record Job;
        Items: Record Item;
        Flt: Code[10];


        //Unsupported feature: Code Modification on "OnAfterGetRecord".

        //trigger OnAfterGetRecord()
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ShowShortcutDimCode(ShortcutDimCode);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ShowShortcutDimCode(ShortcutDimCode);
        if (Catch=0) and ("Location Code"='CRM-ASL') then Validate(Catch);
        */
        //end;


        //Unsupported feature: Code Modification on "OnOpenPage".

        //trigger OnOpenPage()
        //>>>> ORIGINAL CODE:
        //begin
        /*
        OnBeforeOpenPage(Rec,CurrentJnlBatchName);

        IsSaasExcelAddinEnabled := ServerConfigSettingHandler.GetIsSaasExcelAddinEnabled;
        #4..14
        if not JnlSelected then
          Error('');
        JobJnlManagement.OpenJnl(CurrentJnlBatchName,Rec);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..17

        if User.Get(UserId) then begin
           if (User."Global Dimension 2 Code" <> 'MRKT') and (User.Category = User.Category:: Export) then
            if User."JrnllineShowCRM-ASL"=true then
              "Location Code":='CRM-ASL'
            end;
        */
        //end;

    procedure Catigo()
    begin
        SetRange("Statistics Group", Category);
        CurrPage.Update(false);
        if (User."Global Dimension 2 Code" <> 'MRKT') then begin
            case User.Category of
                1:
                    begin
                        case Category of
                            0, 4:
                                SetRange("Statistics Group", 1, 3);
                            1:
                                SetRange("Statistics Group", 1);
                            2:
                                SetRange("Statistics Group", 2);
                            3:
                                SetRange("Statistics Group", 3);
                        end;
                    end;
                2:
                    begin
                        case Category of
                            0, 1, 2, 3:
                                SetRange("Statistics Group", 4);
                            4:
                                SetRange("Statistics Group", 4);
                        end;
                    end;
            end;
        end;
    end;
}

