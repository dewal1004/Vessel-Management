report 50093 "Personal Record List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report\Rdlc\PersonalRecordList.rdlc';

    dataset
    {
        dataitem(Employee; Employee)
        {
            DataItemTableView = SORTING("Global Dimension 1 Code", "Global Dimension 2 Code");
            RequestFilterFields = "Posting Group", "Global Dimension 1 Code", "Global Dimension 2 Code";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Filters_______Employee_GETFILTERS__; 'Filters - ' + Employee.GetFilters())
            {
            }
            column(Employee__Global_Dimension_2_Code_; "Global Dimension 2 Code")
            {
            }
            column(Employee__Global_Dimension_1_Code_; "Global Dimension 1 Code")
            {
            }
            column(BCName; BCName)
            {
            }
            column(CCName; CCName)
            {
            }
            column(Employee__No__; "No.")
            {
            }
            column(EmpName; EmpName)
            {
            }
            column(FormatDate__Employment_Date__; FormatDate("Employment Date"))
            {
            }
            column(DesigName; DesigName)
            {
            }
            column(Grd; Grd)
            {
            }
            column(StateName; StateName)
            {
            }
            column(FormatDate__Birth_Date__; FormatDate("Birth Date"))
            {
            }
            column(Employee_Gender; Gender)
            {
            }
            column(Stp; Stp)
            {
            }
            column(BasicPay; BasicPay)
            {
            }
            column(BCCount; BCCount)
            {
            }
            column(CCCount; CCCount)
            {
            }
            column(PERSONAL_RECORD_LISTCaption; PERSONAL_RECORD_LISTCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Employee__No__Caption; FieldCaption("No."))
            {
            }
            column(EmpNameCaption; EmpNameCaptionLbl)
            {
            }
            column(Emp__DateCaption; Emp__DateCaptionLbl)
            {
            }
            column(DesignationCaption; DesignationCaptionLbl)
            {
            }
            column(GradeCaption; GradeCaptionLbl)
            {
            }
            column(StateCaption; StateCaptionLbl)
            {
            }
            column(Birth_DateCaption; Birth_DateCaptionLbl)
            {
            }
            column(Employee_GenderCaption; FieldCaption(Gender))
            {
            }
            column(StepCaption; StepCaptionLbl)
            {
            }
            column(Monthly_BasicCaption; Monthly_BasicCaptionLbl)
            {
            }
            column(Employee__Global_Dimension_2_Code_Caption; FieldCaption("Global Dimension 2 Code"))
            {
            }
            column(Employee__Global_Dimension_1_Code_Caption; FieldCaption("Global Dimension 1 Code"))
            {
            }
            column(Employees_In_DepartmentCaption; Employees_In_DepartmentCaptionLbl)
            {
            }
            column(Employees_In_Business_UnitCaption; Employees_In_Business_UnitCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*
                EmpName := Employee.FullName;
                BasicPay := EmpGrp.GetBasic(Employee."Employee Group");
                Grd := EmpGrp.GetGrade(Employee."Employee Group");
                Stp := EmpGrp.GetStep(Employee."Employee Group");
                
                IF DesigRec.GET(Employee.Designation) THEN
                  DesigName := DesigRec.Description
                ELSE
                  DesigName := '';
                
                IF StateRec.GET(Employee.State) THEN
                  StateName := StateRec.Name
                ELSE
                  StateName := '';
                
                IF BCRec.GET(Employee."Global Dimension 1 Code") THEN
                  BCName := BCRec.Name
                ELSE
                  BCName := '';
                
                IF CCRec.GET(Employee."Global Dimension 2 Code") THEN
                  CCName := CCRec.Name
                ELSE
                  CCName := '';
                
                
                
                
                
                EmpRec.COPYFILTERS(Employee);
                EmpRec.SETRANGE(EmpRec."Global Dimension 1 Code",Employee."Global Dimension 1 Code");
                BCCount := EmpRec.COUNT;
                EmpRec.SETRANGE(EmpRec."Global Dimension 2 Code",Employee."Global Dimension 2 Code");
                CCCount := EmpRec.COUNT;
                *////AAA

            end;

            trigger OnPreDataItem()
            begin
                /*
                LastFieldNo := FIELDNO("Global Dimension 2 Code");
                BCCount := 0;
                CCCount := 0;
                *////AAA

            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        EmpGrp: Record "Payroll-Employee Group Header.";
        BasicPay: Decimal;
        EmpName: Text[100];
        Grd: Code[2];
        Stp: Code[2];
        DesigName: Text[30];
        DesigRec: Record Designation;
        StateRec: Record States;
        StateName: Text[30];
        Dy: Integer;
        Mt: Integer;
        Yr: Integer;
        DStr: Code[2];
        CCCount: Integer;
        BCCount: Integer;
        EmpRec: Record Employee;
        BCRec: Record "Dimension Value";
        CCRec: Record "Dimension Value";
        BCName: Text[30];
        CCName: Text[30];
        PERSONAL_RECORD_LISTCaptionLbl: Label 'PERSONAL RECORD LIST';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        EmpNameCaptionLbl: Label 'Name';
        Emp__DateCaptionLbl: Label 'Emp. Date';
        DesignationCaptionLbl: Label 'Designation';
        GradeCaptionLbl: Label 'Grade';
        StateCaptionLbl: Label 'State';
        Birth_DateCaptionLbl: Label 'Birth Date';
        StepCaptionLbl: Label 'Step';
        Monthly_BasicCaptionLbl: Label 'Monthly Basic';
        Employees_In_DepartmentCaptionLbl: Label 'Employees In Department';
        Employees_In_Business_UnitCaptionLbl: Label 'Employees In Business Unit';


    procedure FormatDate(Dt: Date): Text[20]
    begin
        /*
        IF Dt = 0D THEN EXIT('');
        
        Dy := DATE2DMY(Dt,1);
        Mt := DATE2DMY(Dt,2);
        Yr := DATE2DMY(Dt,3);
        
        IF Dy < 10 THEN
          DStr := '0' + FORMAT(Dy)
        ELSE
          DStr := FORMAT(Dy);
        EXIT(DStr + ' ' + COPYSTR(FORMAT(Dt,0,'<Month text>'),1,3) + ' ' +  FORMAT(Yr,0));
        *////AAA

    end;
}

