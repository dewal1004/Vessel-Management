tableextension 50294 tableextension50294 extends Employee
{
    fields
    {

        //Unsupported feature: Property Insertion (ValidateTableRelation) on ""No."(Field 1)".

       
        //Unsupported feature: Property Modification (Data type) on ""Emplymt. Contract Code"(Field 27)".


        //Unsupported feature: Code Insertion on ""First Name"(Field 2)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*

         //Univision Insert 6/11/01
        if ("Search Name" = '') then
          "Search Name" := "First Name";

        //Univision Finish 6/11/01
        */
        //end;


        //Unsupported feature: Code Modification on ""Post Code"(Field 11).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GuiAllowed);

        if PostCode.Get("Post Code") then
          City := PostCode.City;
        */
        //end;

        //Unsupported feature: Property Deletion (TableRelation) on ""Emplymt. Contract Code"(Field 27)".

        field(50000; "Region Code"; Code[10])
        {
            TableRelation = "Business Unit".Code;
        }
        field(50001; "Employment Group"; Code[10])
        {
        }
        field(50002; Security; Boolean)
        {
        }
        field(50003; "No.2"; Code[20])
        {
        }
        field(50004; "Bar Code ID"; Code[10])
        {
        }
        field(50013; Bank; Code[20])
        {
            TableRelation = IF ("Mode of payment" = CONST (Bank)) "Payroll-Banks.".Code;
        }
        field(50014; "Bank Account"; Text[30])
        {
        }
        field(50015; "Posting Group"; Code[20])
        {
            TableRelation = "Payroll-Posting Group Header."."Posting Group Code";
        }
        field(50016; "Employee Group"; Code[20])
        {
            TableRelation = "Payroll-Employee Group Header.";
        }
        field(50020; "SAM Number"; Code[20])
        {
            TableRelation = Customer;
        }
        field(50021; "Pay Station"; Code[20])
        {
        }
        field(50022; "P.I.N"; Code[20])
        {
        }
        field(50023; "Mode of payment"; Option)
        {
            OptionMembers = Cash,Cheque,Bank;
        }
        field(50024; "Period Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Payroll-Periods.";
        }
        field(50025; EDAmount; Decimal)
        {
            CalcFormula = Sum ("Payroll-Payslip Lines.".Amount WHERE ("Payroll Period" = FIELD ("Period Filter"),
                                                                     "Employee No" = FIELD ("No."),
                                                                     "E/D Code" = FIELD ("ED Filter")));
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
        field(50026; "ED Filter"; Code[20])
        {
            FieldClass = FlowFilter;
            TableRelation = "Payroll-E/D Codes.";
        }
        field(50027; Designation; Code[10])
        {
        }
        field(50028; "National ID Number"; Code[20])
        {
        }
        field(50029; "NSITF Number"; Code[20])
        {
        }
        field(50034; "Acct. type"; Option)
        {
            OptionMembers = Finance,Customer,Supplier;
        }
        field(50035; "Acct. No"; Code[20])
        {
            TableRelation = IF ("Acct. type" = CONST (Finance)) "G/L Account"."No."
            ELSE
            IF ("Acct. type" = CONST (Customer)) Customer."No."
            ELSE
            IF ("Acct. type" = CONST (Supplier)) Vendor."No.";
        }
        field(50037; "No of Days"; Integer)
        {
        }
        field(50039; "No2."; Code[20])
        {
        }
        field(50040; "NPF Number"; Code[20])
        {
        }
        field(50041; "NHF Number"; Code[20])
        {
        }
        field(50071; Blocked; Boolean)
        {
        }
        field(50073; "Modified By"; Code[10])
        {
            Editable = false;
        }
        field(50074; "Pension Scheme"; Boolean)
        {
        }
        field(50075; "Work Status"; Code[10])
        {
            TableRelation = "Monthly Variables Lines."."Payroll Period";
        }
        field(50076; Class; Code[10])
        {
            TableRelation = "Skill Appraisal"."Skill code";
        }
        field(50077; "Overall Medical Cost"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Medical Record".Amount WHERE ("Employee No" = FIELD ("No."),
                                                             "Transaction Date" = FIELD ("Date Filter"),
                                                             Beneficiary = FIELD ("Beneficiary Filter"),
                                                             "Transaction Type" = FIELD ("Medical Trans Type Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50078; "Hospital Cost"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Medical Record".Amount WHERE ("Employee No" = FIELD ("No."),
                                                             "Transaction Date" = FIELD ("Date Filter"),
                                                             "Transaction Type" = CONST (H),
                                                             Beneficiary = FIELD ("Beneficiary Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50079; "Clinic Cost"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Medical Record".Amount WHERE ("Employee No" = FIELD ("No."),
                                                             "Transaction Date" = FIELD ("Date Filter"),
                                                             "Transaction Type" = CONST (C),
                                                             Beneficiary = FIELD ("Beneficiary Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50080; "Medical Reimbursed Cost"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Medical Record".Amount WHERE ("Employee No" = FIELD ("No."),
                                                             "Transaction Date" = FIELD ("Date Filter"),
                                                             "Transaction Type" = CONST (R),
                                                             Beneficiary = FIELD ("Beneficiary Filter")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50084; "Medical Trans Type Filter"; Option)
        {
            FieldClass = FlowFilter;
            OptionMembers = " ",C,R,H;
        }
        field(50085; "Sam No."; Code[10])
        {
            TableRelation = Customer."No.";
        }
        field(50100; "Place of Birth"; Text[30])
        {
        }
        field(50101; "Leave Type Filter"; Option)
        {
            FieldClass = FlowFilter;
            OptionMembers = PLAN,ACTUAL;
        }
        field(50102; "Leave Days Taken"; Integer)
        {
            BlankZero = true;
            Enabled = false;
        }
        field(50103; "Leave Category Filter"; Code[50])
        {
            FieldClass = Normal;
            //TableRelation = Table60016.Field1;
        }
        field(50104; "Leave Days"; Integer)
        {
            BlankZero = true;
           /* CalcFormula = Count (Table60009 WHERE (Field1 = FIELD ("No."),
                                                  Field5 = FIELD ("Date Filter"),
                                                  Field2 = FIELD ("Leave Type Filter"),
                                                  Field8 = FIELD ("Region Code")));
                                                  */
            FieldClass = Normal;
        }
        field(50105; "Region Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = "Business Unit";
        }
        field(50106; "Training Cost"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum ("Course Attendance".Cost WHERE ("Employee No" = FIELD ("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(50107; "Course Filter"; Code[30])
        {
        }
        field(50108; "Scholarship Cost"; Decimal)
        {
            BlankZero = true;
            //CalcFormula = Sum (Table60033.Field4 WHERE (Field2 = FIELD ("No.")));
            FieldClass = Normal;
        }
        field(50109; "Hospital Filter"; Code[10])
        {
            FieldClass = FlowFilter;
            TableRelation = Vendor."No." WHERE (Hospital = CONST (true));
        }
        field(50110; "Beneficiary Filter"; Option)
        {
            FieldClass = FlowFilter;
            OptionMembers = " ",Dependent,Self;
        }
        field(50111; Sam; Boolean)
        {
        }
        field(50112; State; Code[3])
        {
            TableRelation = States.code;
        }
        field(50113; "Annual Tax Freepay"; Decimal)
        {
        }
        field(50114; Manager; Boolean)
        {
            Editable = false;
        }
        field(50115; Married; Boolean)
        {
        }
        field(50301; PositionApplied; Code[10])
        {
            TableRelation = "Class Information";
        }
        field(50302; Grade; Code[2])
        {
        }
        field(50303; Step; Code[2])
        {
        }
        field(50304; "MP Status"; Option)
        {
            Description = 'Man Power Status';
            OptionMembers = Permanent,"Contract A","Contract B";
        }
        field(50307; "Working day"; Integer)
        {
        }
        field(50308; "Inactive Date End"; Date)
        {
        }
        field(50309; "Empl Contr Uni Code"; Code[10])
        {
            NotBlank = true;
            TableRelation = "Employment Contract" WHERE ("Global Dimension 1 Code" = FIELD ("Global Dimension 1 Code"));
        }
        field(50310; Checked; Boolean)
        {
        }
        field(50319; "Address 3"; Text[30])
        {
        }
        field(50359; "Balance (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE ("Customer No." = FIELD ("Acct. No"),
                                                                                 "Initial Entry Global Dim. 1" = FIELD ("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD ("Global Dimension 2 Filter"),
                                                                                 "Currency Code" = FIELD ("Currency Filter")));
            Caption = 'Balance (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50360; "Currency Filter"; Code[10])
        {
            Caption = 'Currency Filter';
            FieldClass = FlowFilter;
            TableRelation = Currency;
        }
        field(50362; "Deductible Filter"; Boolean)
        {
            FieldClass = FlowFilter;
        }
        field(50364; "Deductible Absence"; Decimal)
        {
            CalcFormula = Sum ("Employee Absence".Quantity WHERE ("Employee No." = FIELD ("No."),
                                                                 "Deduct from Payroll" = CONST (true),
                                                                 "From Date" = FIELD ("Date Filter")));
            FieldClass = FlowField;
        }
        field(50366; "Deducted Absence"; Decimal)
        {
            CalcFormula = Sum ("Monthly Variables Lines.".Quantity WHERE ("Employee No" = FIELD ("No."),
                                                                         "E/D Code" = CONST ('6150')));
            FieldClass = FlowField;
        }
        field(50369; "IOU Balance"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)" WHERE ("Customer No." = FIELD ("Acct. No"),
                                                                                 "Initial Entry Global Dim. 1" = FIELD ("Global Dimension 1 Filter"),
                                                                                 "Initial Entry Global Dim. 2" = FIELD ("Global Dimension 2 Filter"),
                                                                                 "Currency Code" = FIELD ("Currency Filter")));
            Caption = 'IOU Balance';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50400; "Passport no"; Code[10])
        {
        }
        field(50401; "Place of Issue"; Text[30])
        {
        }
        field(50402; "Date Issued"; Date)
        {
        }
        field(50403; "Expiry date"; Date)
        {
        }
        field(50404; "Cerpac No/Code"; Code[10])
        {
        }
        field(50405; "Cerpac Expiry date"; Date)
        {
        }
        field(50406; Suspended; Boolean)
        {
        }
        field(50407; "Suspension Modified By"; Code[20])
        {
            Editable = false;
        }
        field(50408; "Suspension Modified Date"; Date)
        {
            Editable = false;
        }
        field(50409; "Blocked Modified By"; Code[20])
        {
            Editable = false;
        }
        field(50410; "Blocked Modified Date"; Date)
        {
            Editable = false;
        }
        field(50411; "Country Code"; Code[10])
        {
        }
    }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Modified Date Time" := CurrentDateTime;
    HumanResSetup.Get;
    if "No." = '' then begin
    #4..17
    DimMgt.UpdateDefaultDim(
      DATABASE::Employee,"No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");
    UpdateSearchName;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..20
     //Univision Insert 6/11/01
    "Acct. No" :='EC'+CopyStr("No.",2);
    "Acct. type":=Rec."Acct. type"::Customer;
    UpdateSearchName;
    */
    //end;


    //Unsupported feature: Code Modification on "OnRename".

    //trigger OnRename()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    DimMgt.RenameDefaultDim(DATABASE::Employee,xRec."No.","No.");
    "Last Modified Date Time" := CurrentDateTime;
    "Last Date Modified" := Today;
    UpdateSearchName;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    "Modified By" := UserId; //Univision Insert 6/11/01
    UpdateSearchName;
    */
    //end;


    //Unsupported feature: Code Modification on "FullName(PROCEDURE 1)".

    //procedure FullName();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    OnBeforeGetFullName(Rec,NewFullName,Handled);
    if Handled then
      exit(NewFullName);

    if "Middle Name" = '' then
      exit("First Name" + ' ' + "Last Name");

    exit("First Name" + ' ' + "Middle Name" + ' ' + "Last Name");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3
    if "Middle Name" = '' then
      exit("First Name" + ' ' + "Last Name")
    else
      exit("First Name" + ' ' + "Middle Name" + ' ' + "Last Name");
    */
    //end;

    procedure "---------"()
    var
        GenSetUp: Record "General Ledger Setup";
        Text001: Label 'You are not permitted to modify this field';
        Text002: Label 'You can only edit Record on %1';
    begin
    end;

    procedure ResCode(): Text[100]
    begin
        //AAA-July 03/02-Sta
        if Res.Get("First Name") then begin
            if not Res.Rename("First Name" + CopyStr("Last Name", 1, 1))
             then
                if not Res.Rename("First Name" + CopyStr("Last Name", 1, 2))
                  then begin
                    Res2.Init;
                    Res2."No." := "First Name" + CopyStr("Last Name", 1, 2) + '1';
                    if not Res2.Insert() then Res2.Modify();
                    exit("First Name" + CopyStr("Last Name", 1, 2) + '1')
                end;
            exit("First Name" + CopyStr("Last Name", 1, 2));
            exit("First Name" + CopyStr("Last Name", 1, 1));
        end;
        //AAA-July 03/02-Sto
    end;

    procedure MakeRes(empl: Record Employee)
    begin
    end;

    procedure RemovRes(empl: Record Employee)
    begin
        if Res.Get("Resource No.") then begin
            Res.Delete;
            Message('Employee no longer a resource');
        end
        else
            Message('Resource does not Exist');
        "Resource No." := '';
        Modify;
    end;

    procedure TagName(): Text[100]
    begin
        //AAA-Feb 24, 2003
        //EXIT("First Name" + ' ' + UPPERCASE("Last Name"))
        exit("First Name" + ' ' + ("Last Name"))
    end;

    procedure GetED(var EDCd: Code[10]): Decimal
    begin
        GrpLinesRec.SetRange(GrpLinesRec."Employee Group", "Employee Group");
        GrpLinesRec.SetRange(GrpLinesRec."E/D Code", EDCd);
        if GrpLinesRec.Find('-') then
            exit(GrpLinesRec."Default Amount")
        else
            exit(0);
    end;

    procedure GetBasic(EmpNo: Code[10]): Decimal
    begin
        Employee.Reset;
        EDRec.SetRange(EDRec."Control Type", EDRec."Control Type"::Basic);
        EDRec.Find('-');
        BasicEDCode := EDRec."E/D Code";
        Employee.Get(EmpNo);
        EmpGrpCode := Employee."Employee Group";

        GrpLinesRec.SetRange(GrpLinesRec."Employee Group", EmpGrpCode);
        GrpLinesRec.SetRange(GrpLinesRec."E/D Code", BasicEDCode);
        if GrpLinesRec.Find('-') then
            exit(GrpLinesRec."Default Amount")
        else
            exit(0);
    end;

    procedure CheckMod()
    var
        GenSetUp: Record "General Ledger Setup";
        Text001: Label 'You are not permitted to modify this field';
        Text002: Label 'You can only edit Record on %1';
    begin
        GenSetUp.Get;
        payrsetup.Get('LOAN');
        if xRec."Employee Group" <> "Employment Group" then begin
            if (UserId <> GenSetUp.Administrator) and (UserId <> payrsetup."HR Officer") then Error(Text001);
            if (UserId = payrsetup."HR Officer") and (Today <> payrsetup."Allow HR Edit on") then Error(Text002);
        end;
    end;


    //Unsupported feature: Property Modification (Id) on "BlockedEmplForJnrlPostingErr(Variable 1017)".

    //var
    //>>>> ORIGINAL VALUE:
    //BlockedEmplForJnrlPostingErr : 1017;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BlockedEmplForJnrlPostingErr : 10017;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "EmployeeLinkedToResourceErr(Variable 1018)".

    //var
    //>>>> ORIGINAL VALUE:
    //EmployeeLinkedToResourceErr : 1018;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //EmployeeLinkedToResourceErr : 10018;
    //Variable type has not been exported.

    var
        PostGrp: Record "Payroll-Posting Group Header.";
        Posit: Record "Employment Contract";
        //approv: Record "Object";
        EmpGrpRec: Record "Payroll-Employee Group Header.";
        GrpLinesRec: Record "Payroll-Employee Group Lines.";
        RegRec: Record "Business Unit";
        CustRec: Record Customer;
        VendRec: Record Vendor;
        CustLdgRec: Record "Cust. Ledger Entry";
        DesigRec: Record Designation;
        EDRec: Record "Payroll-E/D Codes.";
        DepartRec: Record Dimension;
        BCRec: Record Dimension;
        CCRec: Record Dimension;
        DepartRec1: Record "Dimension Value";
        BCRec1: Record "Dimension Value";
        CCRec1: Record "Dimension Value";
        approved: Boolean;
        "day Employeed": Integer;
        SamBalance: Decimal;
        EmpDesignation: Code[10];
        PGrp: Code[10];
        EmpGrpCode: Code[10];
        BasicEDCode: Code[10];
        payrsetup: Record "ASL Payroll Setup";
        employcontr: Record "Employment Contract";
        ECont: Record "Employment Contract";
        Res2: Record Resource;
        "--------------------": Integer;
        I: Integer;
        Eval: Boolean;
        Answ: Boolean;
        EmpContra: Record "Employment Contract";
        ResGroup: Record "Resource Group";
        ResCopy: Record Resource;
        StaffNo: Code[10];
        userrec: Record "User Setup";
        "----------------------": Integer;
        Answ2: Boolean;
        Res : Record Resource;

    var
        Employee: Record Employee;
}

