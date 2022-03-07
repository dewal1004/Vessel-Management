tableextension 50214 tableextension50214 extends "Sales Header"
{
    fields
    {

        //Unsupported feature: Property Modification (Editable) on ""No. Series"(Field 107)".


        //Unsupported feature: Code Modification on ""Posting Date"(Field 20).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestField("Posting Date");
        TestNoSeriesDate(
          "Posting No.","Posting No. Series",
        #4..25
            ConfirmUpdateCurrencyFactor;
        end;

        if "Posting Date" <> xRec."Posting Date" then
          if DeferralHeadersExist then
            ConfirmUpdateDeferralDate;
        SynchronizeAsmHeader;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..28
        SynchronizeAsmHeader;
        */
        //end;


        //Unsupported feature: Code Modification on ""Location Code"(Field 28).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;
        if ("Location Code" <> xRec."Location Code") and
           (xRec."Sell-to Customer No." = "Sell-to Customer No.")
        then
          MessageIfSalesLinesExist(FieldCaption("Location Code"));

        UpdateShipToAddress;
        UpdateOutboundWhseHandlingTime;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..7

        if "Location Code" <> '' then begin
          if Location.Get("Location Code") then
            "Outbound Whse. Handling Time" := Location."Outbound Whse. Handling Time";
        end else begin
          if InvtSetup.Get then
            "Outbound Whse. Handling Time" := InvtSetup."Outbound Whse. Handling Time";
        end;
        */
        //end;


        //Unsupported feature: Code Modification on ""Posting No. Series"(Field 108).OnValidate".

        //trigger  Series"(Field 108)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "Posting No. Series" <> '' then begin
          GetSalesSetup;
          TestNoSeries;
          NoSeriesMgt.TestSeries(GetPostingNoSeriesCode,"Posting No. Series");
        end;
        TestField("Posting No.",'');
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        if "Posting No. Series" <> '' then begin
         GetSalesSetup;

        TestNoSeries;
        //  NoSeriesMgt.TestSeries(GetPostingNoSeriesCode,"Posting No. Series");
        end;
        //TESTFIELD("Posting No.",'');
        //
        ////ERROR('%1',"Posting No. Series");
        */
        //end;


        //Unsupported feature: Code Modification on ""Sell-to Contact No."(Field 5052).OnValidate".

        //trigger "(Field 5052)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        if "Sell-to Contact No." <> '' then
        #4..36
              Error(Text038,Cont."No.",Cont.Name,"Sell-to Customer No.");
        end;

        if "Sell-to Contact No." <> '' then
          if Cont.Get("Sell-to Contact No.") then
            if ("Salesperson Code" = '') and (Cont."Salesperson Code" <> '') then
              Validate("Salesperson Code",Cont."Salesperson Code");

        UpdateSellToCust("Sell-to Contact No.");
        UpdateSellToCustTemplateCode;
        UpdateShipToContact;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..39
        #45..47
        */
        //end;
        field(50301; "Contr. Code/Postn.  Applied"; Option)
        {
            OptionMembers = "01-Skipper","02-Marine Eng","03-Coxswain","04-Eng Superv","05-Shr Mast/Sail","06-Mec/Carp/Wel/Secu","07-Others";
        }
        field(50302; "Appraisal Selection"; Option)
        {
            Description = ' ,Interview,Skill & Performance';
            OptionMembers = " ",Interview,"Skill & Performance";
        }
        field(50303; "Skill Score"; Decimal)
        {
            CalcFormula = Sum ("Sales Line".Quantity WHERE (Type = CONST (Skill),
                                                           "Document No." = FIELD ("No."),
                                                           "Document Type" = CONST (Appraisal)));
            Editable = false;
            FieldClass = FlowField;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(50304; "Skill Total"; Decimal)
        {
            CalcFormula = Sum ("Sales Line".TTSkill WHERE (Type = CONST (Skill),
                                                          "Document No." = FIELD ("No."),
                                                          "Document Type" = CONST (Appraisal)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50305; "Skill Percentage"; Decimal)
        {
        }
        field(50306; "Performance Score"; Decimal)
        {
            CalcFormula = Sum ("Sales Line".Quantity WHERE (Type = CONST (Performance),
                                                           "Document No." = FIELD ("No."),
                                                           "Document Type" = CONST (Appraisal)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50307; "Performance Total"; Decimal)
        {
            CalcFormula = Sum ("Sales Line".TTPerformance WHERE (Type = CONST (Performance),
                                                                "Document No." = FIELD ("No."),
                                                                "Document Type" = CONST (Appraisal)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50308; "Performance Percentage"; Decimal)
        {
        }
        field(50309; "Total Percentage"; Decimal)
        {
        }
        field(50310; Cgrade; Code[2])
        {
        }
        field(50311; Cstep; Code[2])
        {
        }
        field(50312; Cedamount; Decimal)
        {
            CalcFormula = Sum ("Payroll-Employee Group Lines."."Default Amount" WHERE ("Employee Group" = FIELD (CGrp),
                                                                                      "Payslip Group ID" = CONST ("GROSS PAY")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50313; CGrp; Code[10])
        {
        }
        field(50314; Rgrade; Code[2])
        {
        }
        field(50315; Rstep; Code[2])
        {
        }
        field(50316; Redamount; Decimal)
        {
            CalcFormula = Sum ("Payroll-Employee Group Lines."."Default Amount" WHERE ("Employee Group" = FIELD (RGrp),
                                                                                      "Payslip Group ID" = CONST ("GROSS PAY")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50317; RGrp; Code[10])
        {
            TableRelation = "Payroll-Employee Group Header.";
        }
        field(50330; Agrade; Code[2])
        {
        }
        field(50332; Astep; Code[2])
        {
        }
        field(50334; Aedamount; Decimal)
        {
            CalcFormula = Sum ("Payroll-Employee Group Lines."."Default Amount" WHERE ("Employee Group" = FIELD (AGrp),
                                                                                      "Payslip Group ID" = CONST ("GROSS PAY")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50336; AGrp; Code[10])
        {
        }
        field(50337; Date1; Date)
        {
        }
        field(50338; Date2; Date)
        {
        }
        field(50339; Date3; Date)
        {
        }
        field(50340; Date4; Date)
        {
        }
        field(50341; Date5; Date)
        {
        }
        field(50342; Date6; Date)
        {
        }
        field(50343; Date7; Date)
        {
        }
        field(50344; Date8; Date)
        {
        }
        field(50345; Date9; Date)
        {
        }
        field(50346; Skill1; Integer)
        {
        }
        field(50347; Skill2; Integer)
        {
        }
        field(50348; Skill3; Integer)
        {
        }
        field(50349; Skill4; Integer)
        {
        }
        field(50350; Skill5; Integer)
        {
        }
        field(50351; Skill6; Integer)
        {
        }
        field(50352; Skill7; Integer)
        {
        }
        field(50353; Skill8; Integer)
        {
        }
        field(50354; Skill9; Integer)
        {
        }
        field(50355; Performance1; Integer)
        {
        }
        field(50356; Performance2; Integer)
        {
        }
        field(50357; Performance3; Integer)
        {
        }
        field(50358; Performance4; Integer)
        {
        }
        field(50359; Performance5; Integer)
        {
        }
        field(50360; Performance6; Integer)
        {
        }
        field(50361; Performance7; Integer)
        {
        }
        field(50362; Performance8; Integer)
        {
        }
        field(50363; Performance9; Integer)
        {
        }
        field(50364; Tpercent1; Integer)
        {
        }
        field(50365; Tpercent2; Integer)
        {
        }
        field(50366; Tpercent3; Integer)
        {
        }
        field(50367; Tpercent4; Integer)
        {
        }
        field(50368; Tpercent5; Integer)
        {
        }
        field(50369; Tpercent6; Integer)
        {
        }
        field(50370; Tpercent7; Integer)
        {
        }
        field(50371; Tpercent8; Integer)
        {
        }
        field(50372; Tpercent9; Integer)
        {
        }
        field(50380; "Container Code"; Code[10])
        {
        }
        field(50381; "Seal No"; Code[15])
        {
        }
        field(50382; "Container Size"; Option)
        {
            OptionMembers = "20 Ft","40 Ft";
        }
        field(50383; "Vessel Name"; Text[30])
        {
        }
        field(50384; "Shipment Month"; Option)
        {
            OptionMembers = Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec;
        }
        field(50385; "Total Qty"; Decimal)
        {
            CalcFormula = Sum ("Sales Line".Quantity WHERE ("Document Type" = FIELD ("Document Type"),
                                                           "Document No." = FIELD ("No.")));
            FieldClass = FlowField;
            TableRelation = Item.Inventory;
        }
    }


    //Unsupported feature: Code Modification on "InitInsert(PROCEDURE 61)".

    //procedure InitInsert();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsHandled := false;
    OnBeforeInitInsert(Rec,xRec,IsHandled);
    if not IsHandled then
    #4..7

    OnInitInsertOnBeforeInitRecord(Rec,xRec);
    InitRecord;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..10

    case "Document Type" of
      "Document Type"::Order:
        begin
          SalesSetup.Get;
          "Posting No. Series":=SalesSetup."Posted Exp. Invoice Nos.";
        end;
    end ;
    */
    //end;


    //Unsupported feature: Code Modification on "InitRecord(PROCEDURE 10)".

    //procedure InitRecord();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetSalesSetup;
    IsHandled := false;
    OnBeforeInitRecord(Rec,IsHandled);
    #4..65

    "Posting Description" := Format("Document Type") + ' ' + "No.";

    UpdateOutboundWhseHandlingTime;

    "Responsibility Center" := UserSetupMgt.GetRespCenter(0,"Responsibility Center");
    "Doc. No. Occurrence" := ArchiveManagement.GetNextOccurrenceNo(DATABASE::"Sales Header","Document Type","No.");

    OnAfterInitRecord(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..68
    if InvtSetup.Get then
      Validate("Outbound Whse. Handling Time",InvtSetup."Outbound Whse. Handling Time");
    UpdateOutboundWhseHandlingTime;
    #71..74
    */
    //end;


    //Unsupported feature: Code Modification on "CheckItemAvailabilityInLines(PROCEDURE 142)".

    //procedure CheckItemAvailabilityInLines();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    SalesLine.SetRange("Document Type","Document Type");
    SalesLine.SetRange("Document No.","No.");
    SalesLine.SetRange(Type,SalesLine.Type::Item);
    SalesLine.SetFilter("No.",'<>%1','');
    SalesLine.SetFilter("Outstanding Quantity",'<>%1',0);
    OnCheckItemAvailabilityInLinesOnAfterSetFilters(SalesLine);
    if SalesLine.FindSet then
      repeat
        if ItemCheckAvail.SalesLineCheck(SalesLine) then
          ItemCheckAvail.RaiseUpdateInterruptedError;
      until SalesLine.Next = 0;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..8
        if ItemCheckAvail.SalesLineCheck(SalesLine,true) then
          ItemCheckAvail.RaiseUpdateInterruptedError;
      until SalesLine.Next = 0;
    */
    //end;

    procedure GetGrp(grade: Code[10]; step: Code[10]) Grp: Code[10]
    begin
        Grp := StaffType + grade + step;
    end;


    //Unsupported feature: Property Modification (Id) on "Text039(Variable 1086)".

    //var
    //>>>> ORIGINAL VALUE:
    //Text039 : 1086;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //Text039 : 10086;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "PostedDocsToPrintCreatedMsg(Variable 1084)".

    //var
    //>>>> ORIGINAL VALUE:
    //PostedDocsToPrintCreatedMsg : 1084;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PostedDocsToPrintCreatedMsg : 10084;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "DocumentNotPostedClosePageQst(Variable 1061)".

    //var
    //>>>> ORIGINAL VALUE:
    //DocumentNotPostedClosePageQst : 1061;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DocumentNotPostedClosePageQst : 10061;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "SelectCustomerTemplateQst(Variable 1008)".

    //var
    //>>>> ORIGINAL VALUE:
    //SelectCustomerTemplateQst : 1008;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SelectCustomerTemplateQst : 10008;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "ModifyCustomerAddressNotificationLbl(Variable 1062)".

    //var
    //>>>> ORIGINAL VALUE:
    //ModifyCustomerAddressNotificationLbl : 1062;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ModifyCustomerAddressNotificationLbl : 10062;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "DontShowAgainActionLbl(Variable 1064)".

    //var
    //>>>> ORIGINAL VALUE:
    //DontShowAgainActionLbl : 1064;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DontShowAgainActionLbl : 10064;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "SellToCustomerTxt(Variable 1052)".

    //var
    //>>>> ORIGINAL VALUE:
    //SellToCustomerTxt : 1052;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SellToCustomerTxt : 10052;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "BillToCustomerTxt(Variable 1057)".

    //var
    //>>>> ORIGINAL VALUE:
    //BillToCustomerTxt : 1057;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BillToCustomerTxt : 10057;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "ModifySellToCustomerAddressNotificationNameTxt(Variable 1087)".

    //var
    //>>>> ORIGINAL VALUE:
    //ModifySellToCustomerAddressNotificationNameTxt : 1087;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ModifySellToCustomerAddressNotificationNameTxt : 10087;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "ModifySellToCustomerAddressNotificationDescriptionTxt(Variable 1098)".

    //var
    //>>>> ORIGINAL VALUE:
    //ModifySellToCustomerAddressNotificationDescriptionTxt : 1098;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ModifySellToCustomerAddressNotificationDescriptionTxt : 10098;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "ModifyBillToCustomerAddressNotificationNameTxt(Variable 1089)".

    //var
    //>>>> ORIGINAL VALUE:
    //ModifyBillToCustomerAddressNotificationNameTxt : 1089;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ModifyBillToCustomerAddressNotificationNameTxt : 10089;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "ModifyBillToCustomerAddressNotificationDescriptionTxt(Variable 1099)".

    //var
    //>>>> ORIGINAL VALUE:
    //ModifyBillToCustomerAddressNotificationDescriptionTxt : 1099;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ModifyBillToCustomerAddressNotificationDescriptionTxt : 10099;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "DuplicatedCaptionsNotAllowedErr(Variable 1094)".

    //var
    //>>>> ORIGINAL VALUE:
    //DuplicatedCaptionsNotAllowedErr : 1094;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DuplicatedCaptionsNotAllowedErr : 10094;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "PhoneNoCannotContainLettersErr(Variable 1080)".

    //var
    //>>>> ORIGINAL VALUE:
    //PhoneNoCannotContainLettersErr : 1080;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //PhoneNoCannotContainLettersErr : 10080;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "MissingExchangeRatesQst(Variable 1032)".

    //var
    //>>>> ORIGINAL VALUE:
    //MissingExchangeRatesQst : 1032;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //MissingExchangeRatesQst : 10032;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "SplitMessageTxt(Variable 1079)".

    //var
    //>>>> ORIGINAL VALUE:
    //SplitMessageTxt : 1079;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //SplitMessageTxt : 10079;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "StatusCheckSuspended(Variable 1103)".

    //var
    //>>>> ORIGINAL VALUE:
    //StatusCheckSuspended : 1103;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StatusCheckSuspended : 11003;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "ConfirmEmptyEmailQst(Variable 1017)".

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmEmptyEmailQst : 1017;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmEmptyEmailQst : 10017;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "RecreateSalesLinesCancelErr(Variable 1104)".

    //var
    //>>>> ORIGINAL VALUE:
    //RecreateSalesLinesCancelErr : 1104;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //RecreateSalesLinesCancelErr : 11004;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "CalledFromWhseDoc(Variable 1106)".

    //var
    //>>>> ORIGINAL VALUE:
    //CalledFromWhseDoc : 1106;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CalledFromWhseDoc : 11006;
    //Variable type has not been exported.

    var
        "--------": Integer;
        Emp: Record Employee;
        App: Record Applicants;
        EmpGrpT: Record "Payroll-Employee Group Header.";
        ttscore: Decimal;
        Result: Decimal;
        Precision: Decimal;
        Cedamount: Decimal;
        Redamount: Decimal;
        Aedamount: Decimal;
        Larger: Text[30];
        StaffType: Code[1];
        Rgrade: Code[2];
        Agrade: Code[2];
        Rstep: Code[2];
        Astep: Code[2];
        RGrp5: Code[10];
        length: Integer;
}

