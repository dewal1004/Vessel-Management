report 50191 "Vessel Performance Cnsld Excel"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report\Rdlc\VesselPerformanceCnsldExcel.rdlc';

    dataset
    {
        dataitem(Jobss; Job)
        {
            DataItemTableView = SORTING("Ending Date") WHERE("Voyage Ended" = CONST(true));
            RequestFilterFields = "No.", "Creation Date";
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
            column(GETFILTERS__; GetFilters())
            {
            }
            column(Text18; Text18)
            {
            }
            column(Text27; Text27)
            {
                //DecimalPlaces = 0 : 0;
            }
            column(Text26; Text26)
            {
                //DecimalPlaces = 0 : 0;
            }
            column(Text25; Text25)
            {
                //DecimalPlaces = 0 : 0;
            }
            column(Text24; Text24)
            {
                //DecimalPlaces = 0 : 0;
            }
            column(Text23; Text23)
            {
            }
            column(Text22; Text22)
            {
            }
            column(Text21; Text21)
            {
            }
            column(Jobss_Vessel; Vessel)
            {
            }
            column(PntStor_7_; PntStor[7])
            {
            }
            column(PntStor_6_; PntStor[6])
            {
                DecimalPlaces = 2 : 2;
            }
            column(PntStor_5_; PntStor[5])
            {
            }
            column(PntStor_4_; PntStor[4])
            {
            }
            column(PntStor_3_; PntStor[3])
            {
            }
            column(PntStor_2_; PntStor[2])
            {
            }
            column(PntStor_1_; PntStor[1])
            {
            }
            column(PortDay; PortDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(LostDay; LostDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(FishgDay; FishgDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(CycleDay; CycleDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Jobss__Ending_Date_; "Ending Date")
            {
            }
            column(Jobss__Starting_Date_; "Starting Date")
            {
            }
            column(Jobss__No__; "No.")
            {
            }
            column(PntStor_7__Countrs; PntStor[7] / Countrs)
            {
            }
            column(PntStor_6__Control1000000233; PntStor[6])
            {
                DecimalPlaces = 2 : 2;
            }
            column(PntStor_5__Control1000000234; PntStor[5])
            {
            }
            column(PntStor_4__Control1000000235; PntStor[4])
            {
            }
            column(PntStor_3__Control1000000236; PntStor[3])
            {
            }
            column(PntStor_2__Control1000000237; PntStor[2])
            {
            }
            column(PntStor_1__Control1000000238; PntStor[1])
            {
            }
            column(PortDay_Control1000000239; PortDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(LostDay_Control1000000240; LostDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(FishgDay_Control1000000241; FishgDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(CycleDay_Control1000000242; CycleDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotalFor___FIELDCAPTION_Vessel_; TotalFor + FieldCaption(Vessel))
            {
            }
            column(PntStor_7__Countrs_Control1000000221; PntStor[7] / Countrs)
            {
            }
            column(PntStor_6__Control1000000222; PntStor[6])
            {
                DecimalPlaces = 2 : 2;
            }
            column(PntStor_5__Control1000000223; PntStor[5])
            {
            }
            column(PntStor_4__Control1000000224; PntStor[4])
            {
            }
            column(PntStor_3__Control1000000225; PntStor[3])
            {
            }
            column(PntStor_2__Control1000000226; PntStor[2])
            {
            }
            column(PntStor_1__Control1000000227; PntStor[1])
            {
            }
            column(PortDay_Control1000000228; PortDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(LostDay_Control1000000229; LostDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(FishgDay_Control1000000230; FishgDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(CycleDay_Control1000000231; CycleDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(Coutry_Name; Coutry.Name)
            {
            }
            column(Res_Name; Res.Name)
            {
            }
            column(Vess; Vess)
            {
            }
            column(PntStor_1__Control1000000190; PntStor[1])
            {
            }
            column(Text21_Control1000000191; Text21)
            {
            }
            column(PntStor_2__Control1000000192; PntStor[2])
            {
            }
            column(Text22_Control1000000193; Text22)
            {
            }
            column(GETFILTER__No___; GetFilter("No."))
            {
            }
            column(PntStor_3__Control1000000200; PntStor[3])
            {
            }
            column(Text23_Control1000000201; Text23)
            {
            }
            column(CycleDay_Control1000000202; CycleDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(PntStor_4__Control1000000204; PntStor[4])
            {
                DecimalPlaces = 0 : 2;
            }
            column(Text24_Control1000000205; Text24)
            {
                //DecimalPlaces = 0 : 0;
            }
            column(FishgDay_Control1000000206; FishgDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(PntStor_5__Control1000000208; PntStor[5])
            {
                DecimalPlaces = 0 : 2;
            }
            column(Text25_Control1000000209; Text25)
            {
                //DecimalPlaces = 0 : 0;
            }
            column(LostDay_Control1000000210; LostDay)
            {
                //DecimalPlaces = 0 : 0;
            }
            column(PntStor_6__Control1000000212; PntStor[6])
            {
                DecimalPlaces = 0 : 2;
            }
            column(Text26_Control1000000213; Text26)
            {
                //DecimalPlaces = 0 : 0;
            }
            column(PntStor_7__Countrs_Control1000000214; PntStor[7] / Countrs)
            {
                DecimalPlaces = 0 : 2;
            }
            column(Text27_Control1000000215; Text27)
            {
                //DecimalPlaces = 0 : 0;
            }
            column(PortDay_Control1000000216; PortDay)
            {
                DecimalPlaces = 0 : 0;
            }
            column(ETDCons; ETDCons)
            {
            }
            column(ETACons; ETACons)
            {
            }
            column(SeaRange_20_; SeaRange[20])
            {
            }
            column(SeaRange_19_; SeaRange[19])
            {
            }
            column(SeaRange_18_; SeaRange[18])
            {
            }
            column(SeaRange_17_; SeaRange[17])
            {
            }
            column(SeaRange_16_; SeaRange[16])
            {
            }
            column(SeaRange_15_; SeaRange[15])
            {
            }
            column(SeaRange_14_; SeaRange[14])
            {
            }
            column(SeaRange_13_; SeaRange[13])
            {
            }
            column(SeaRange_12_; SeaRange[12])
            {
            }
            column(SeaRange_11_; SeaRange[11])
            {
            }
            column(SeaRange_10_; SeaRange[10])
            {
            }
            column(SeaRange_9_; SeaRange[9])
            {
            }
            column(SeaRange_8_; SeaRange[8])
            {
            }
            column(SeaRange_7_; SeaRange[7])
            {
            }
            column(SeaRange_6_; SeaRange[6])
            {
            }
            column(SeaRange_5_; SeaRange[5])
            {
            }
            column(SeaRange_4_; SeaRange[4])
            {
            }
            column(SeaRange_3_; SeaRange[3])
            {
            }
            column(SeaRange_2_; SeaRange[2])
            {
            }
            column(SeaRange_1_; SeaRange[1])
            {
                //DecimalPlaces = 0 : 0;
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Control1000000167Caption; Control1000000167CaptionLbl)
            {
            }
            column(Control1000000168Caption; Control1000000168CaptionLbl)
            {
            }
            column(Control1000000169Caption; Control1000000169CaptionLbl)
            {
            }
            column(Control1000000170Caption; Control1000000170CaptionLbl)
            {
            }
            column(Control1000000171Caption; Control1000000171CaptionLbl)
            {
            }
            column(Control1000000172Caption; Control1000000172CaptionLbl)
            {
            }
            column(Control1000000173Caption; Control1000000173CaptionLbl)
            {
            }
            column(Jobss_VesselCaption; FieldCaption(Vessel))
            {
            }
            column(GETFILTER__No___Caption; GETFILTER__No___CaptionLbl)
            {
            }
            column(CycleDay_Control1000000202Caption; CycleDay_Control1000000202CaptionLbl)
            {
            }
            column(FishgDay_Control1000000206Caption; FishgDay_Control1000000206CaptionLbl)
            {
            }
            column(LostDay_Control1000000210Caption; LostDay_Control1000000210CaptionLbl)
            {
            }
            column(PortDay_Control1000000216Caption; PortDay_Control1000000216CaptionLbl)
            {
            }
            column(ActualCaption; ActualCaptionLbl)
            {
            }
            column(BudgetCaption; BudgetCaptionLbl)
            {
            }
            column(ETDConsCaption; ETDConsCaptionLbl)
            {
            }
            column(ETAConsCaption; ETAConsCaptionLbl)
            {
            }
            column(VarianceCaption; VarianceCaptionLbl)
            {
            }
            column(VarianceCaption_Control1000000286; VarianceCaption_Control1000000286Lbl)
            {
            }
            column(ActualCaption_Control1000000445; ActualCaption_Control1000000445Lbl)
            {
            }
            column(BudgetCaption_Control1000000446; BudgetCaption_Control1000000446Lbl)
            {
            }
            column(VarianceCaption_Control1000000447; VarianceCaption_Control1000000447Lbl)
            {
            }
            column(ActualCaption_Control1000000448; ActualCaption_Control1000000448Lbl)
            {
            }
            column(BudgetCaption_Control1000000449; BudgetCaption_Control1000000449Lbl)
            {
            }
            column(VarianceCaption_Control1000000450; VarianceCaption_Control1000000450Lbl)
            {
            }
            column(ActualCaption_Control1000000451; ActualCaption_Control1000000451Lbl)
            {
            }
            column(BudgetCaption_Control1000000452; BudgetCaption_Control1000000452Lbl)
            {
            }
            column(VarianceCaption_Control1000000453; VarianceCaption_Control1000000453Lbl)
            {
            }
            column(ActualCaption_Control1000000454; ActualCaption_Control1000000454Lbl)
            {
            }
            column(BudgetCaption_Control1000000455; BudgetCaption_Control1000000455Lbl)
            {
            }
            column(VarianceCaption_Control1000000456; VarianceCaption_Control1000000456Lbl)
            {
            }
            column(ActualCaption_Control1000000457; ActualCaption_Control1000000457Lbl)
            {
            }
            column(BudgetCaption_Control1000000458; BudgetCaption_Control1000000458Lbl)
            {
            }
            column(VarianceCaption_Control1000000459; VarianceCaption_Control1000000459Lbl)
            {
            }
            column(ActualCaption_Control1000000460; ActualCaption_Control1000000460Lbl)
            {
            }
            column(BudgetCaption_Control1000000461; BudgetCaption_Control1000000461Lbl)
            {
            }
            column(VarianceCaption_Control1000000462; VarianceCaption_Control1000000462Lbl)
            {
            }
            column(ActualCaption_Control1000000463; ActualCaption_Control1000000463Lbl)
            {
            }
            column(BudgetCaption_Control1000000464; BudgetCaption_Control1000000464Lbl)
            {
            }
            column(VarianceCaption_Control1000000465; VarianceCaption_Control1000000465Lbl)
            {
            }
            column(ActualCaption_Control1000000466; ActualCaption_Control1000000466Lbl)
            {
            }
            column(BudgetCaption_Control1000000467; BudgetCaption_Control1000000467Lbl)
            {
            }
            column(VarianceCaption_Control1000000468; VarianceCaption_Control1000000468Lbl)
            {
            }
            column(ActualCaption_Control1000000469; ActualCaption_Control1000000469Lbl)
            {
            }
            column(BudgetCaption_Control1000000470; BudgetCaption_Control1000000470Lbl)
            {
            }
            column(VarianceCaption_Control1000000471; VarianceCaption_Control1000000471Lbl)
            {
            }
            column(ActualCaption_Control1000000472; ActualCaption_Control1000000472Lbl)
            {
            }
            column(BudgetCaption_Control1000000473; BudgetCaption_Control1000000473Lbl)
            {
            }
            column(VarianceCaption_Control1000000474; VarianceCaption_Control1000000474Lbl)
            {
            }
            column(ActualCaption_Control1000000475; ActualCaption_Control1000000475Lbl)
            {
            }
            column(BudgetCaption_Control1000000476; BudgetCaption_Control1000000476Lbl)
            {
            }
            column(VarianceCaption_Control1000000477; VarianceCaption_Control1000000477Lbl)
            {
            }
            column(ActualCaption_Control1000000478; ActualCaption_Control1000000478Lbl)
            {
            }
            column(BudgetCaption_Control1000000479; BudgetCaption_Control1000000479Lbl)
            {
            }
            column(VarianceCaption_Control1000000480; VarianceCaption_Control1000000480Lbl)
            {
            }
            column(ActualCaption_Control1000000481; ActualCaption_Control1000000481Lbl)
            {
            }
            column(BudgetCaption_Control1000000482; BudgetCaption_Control1000000482Lbl)
            {
            }
            column(VarianceCaption_Control1000000483; VarianceCaption_Control1000000483Lbl)
            {
            }
            column(ActualCaption_Control1000000484; ActualCaption_Control1000000484Lbl)
            {
            }
            column(BudgetCaption_Control1000000485; BudgetCaption_Control1000000485Lbl)
            {
            }
            column(VarianceCaption_Control1000000486; VarianceCaption_Control1000000486Lbl)
            {
            }
            column(ActualCaption_Control1000000487; ActualCaption_Control1000000487Lbl)
            {
            }
            column(BudgetCaption_Control1000000488; BudgetCaption_Control1000000488Lbl)
            {
            }
            column(VarianceCaption_Control1000000489; VarianceCaption_Control1000000489Lbl)
            {
            }
            column(ActualCaption_Control1000000490; ActualCaption_Control1000000490Lbl)
            {
            }
            column(BudgetCaption_Control1000000491; BudgetCaption_Control1000000491Lbl)
            {
            }
            column(VarianceCaption_Control1000000492; VarianceCaption_Control1000000492Lbl)
            {
            }
            column(ActualCaption_Control1000000493; ActualCaption_Control1000000493Lbl)
            {
            }
            column(BudgetCaption_Control1000000494; BudgetCaption_Control1000000494Lbl)
            {
            }
            column(VarianceCaption_Control1000000495; VarianceCaption_Control1000000495Lbl)
            {
            }
            column(ActualCaption_Control1000000496; ActualCaption_Control1000000496Lbl)
            {
            }
            column(BudgetCaption_Control1000000497; BudgetCaption_Control1000000497Lbl)
            {
            }
            column(VarianceCaption_Control1000000498; VarianceCaption_Control1000000498Lbl)
            {
            }
            column(ActualCaption_Control1000000499; ActualCaption_Control1000000499Lbl)
            {
            }
            column(BudgetCaption_Control1000000500; BudgetCaption_Control1000000500Lbl)
            {
            }
            column(VarianceCaption_Control1000000504; VarianceCaption_Control1000000504Lbl)
            {
            }
            column(ActualCaption_Control1000000505; ActualCaption_Control1000000505Lbl)
            {
            }
            column(BudgetCaption_Control1000000506; BudgetCaption_Control1000000506Lbl)
            {
            }
            column(QuantityCaption; QuantityCaptionLbl)
            {
            }
            column(EmptyStringCaption; EmptyStringCaptionLbl)
            {
            }
            column(QuantityCaption_Control1000000308; QuantityCaption_Control1000000308Lbl)
            {
            }
            column(Var___N_Caption; Var___N_CaptionLbl)
            {
            }
            column(Bud___N_Caption; Bud___N_CaptionLbl)
            {
            }
            column(Bud___Caption; Bud___CaptionLbl)
            {
            }
            column(Bud__Qty_Caption; Bud__Qty_CaptionLbl)
            {
            }
            column(RateCaption; RateCaptionLbl)
            {
            }
            column(N_Caption; N_CaptionLbl)
            {
            }
            column(VarianceCaption_Control1000000252; VarianceCaption_Control1000000252Lbl)
            {
            }

            trigger OnAfterGetRecord()
            begin

                Mark(true);
                //VoyageFilter:=COPYSTR(VoyageFilter+"No."+'|',1,1024);
                //VoyageFilter:=VoyageFilter+"No."+'|';
                if (not Mark(true)) then Error('Not Marked');
                ;

                if Res.Get("Person Responsible") then;
                ETD := "Starting Date";
                ETA := "Ending Date";
                if (ETD <> 0D) and (ETD < ETDCons) then ETDCons := ETD;
                if (ETA <> 0D) and (ETA > ETACons) then ETACons := ETA;

                //Cycle Day
                Job2.Get("No.");
                Job2.SetCurrentKey(Job2.Vessel, Job2."Starting Date");
                Job2.SetRange(Job2.Vessel, Vessel);    //Find last voyage
                if Job2.Next(-1) <> 0 then
                    ETA2 := Job2."Ending Date"
                else begin
                    if Loc.Get(Vessel) then ETA2 := Loc."Begining ETA" else ETA2 := 20010103D;
                end;

                if "Cycle Day (Manual)" <> 0 then
                    CycleDay := "Cycle Day (Manual)"
                else
                    CycleDay := ETA - ETA2;

                CalcFields("Lost Days");
                if "Lost At Sea (Manual)" <> 0 then
                    LostDay := "Lost At Sea (Manual)"
                else
                    LostDay := "Lost Days";

                if "Fishing Day (Manual)" <> 0 then
                    FishgDay := "Fishing Day (Manual)"
                else
                    FishgDay := "Sea Days" - LostDay;

                if "Port Day (Manual)" <> 0 then
                    PortDay := "Port Day (Manual)"
                else
                    PortDay := CycleDay - (FishgDay + LostDay);
                SeaDay := FishgDay + LostDay;

                //Find Total Tonnage of Export
                // SETFILTER("Task Filter",'SHR');#1
                CalcFields("Product Quantity", "Points Actual");
                ExpTonnage := "Product Quantity" / 1000;
                PntStor[1] := "Points Actual";

                //  SETFILTER("Task Filter",''); #1
                CalcFields("Points Actual");
                PntStor[3] := "Points Actual";
                PntStor[2] := PntStor[3] - PntStor[1];

                if SeaDay <> 0 then begin
                    PntStor[4] := PntStor[1] / SeaDay;
                    PntStor[5] := PntStor[2] / SeaDay;
                    PntStor[6] := PntStor[3] / SeaDay;
                end;
                Validate("Net Incentive Actual");
                DataStor[3] := "Net Incentive Actual";


                JobSetUp.Get;
                a := 100;
                /*
                //Calculate the Fixed Salaries
                JBudLn.SETRANGE(JBudLn."Job No.","No.");
                //JBudLn.SETRANGE(JBudLn.Type,JBudLn.Type::Resource);
                IF JBudLn.FIND('-') THEN
                BEGIN
                   JBudLn.CALCFIELDS(JBudLn.Counter);
                   PeopleOnVoy:=JBudLn.Counter;
                END
                ELSE PeopleOnVoy:="No. of Deck Hands"+2;
                DataStor[4]:=JobSetUp."Fixed Salary Rate"*CycleDay*(PeopleOnVoy);
                *///swamy
                  //Travelling Expenses for Expatriate
                expcnt := 0;
                repeat
                    Employee.SetCurrentKey(Employee."Resource No.");
                    Employee.SetRange(Employee."Resource No.", JBudLn."No.");
                    Employee.SetFilter(Employee."Country Code", '<>NG');
                    if Employee.Find('-') then expcnt := expcnt + 1;
                    ResCount := ResCount + 1;
                until JBudLn.Next() = 0;
                expcntTot := expcnt;
                DataStor[5] := JobSetUp."Travelling Expenses Rate" * expcnt * CycleDay;

                //License Fee
                if Coutry.Get("Fishing Country Code") then
                    DataStor[6] := Coutry."License Fees Rate" * CycleDay
                else begin
                    DataStor[6] := JobSetUp."License Fee Rate" * CycleDay;
                    Coutry.Name := 'Nigeria';
                end;
                if Loc.Get(Vessel) then begin
                    DataStor[7] := Loc."Insurance Rate" * CycleDay;
                    DataStor[13] := Loc."Depreciation Rate" * CycleDay;
                    DataStor[14] := Loc."Interest Rate" * CycleDay;
                    Vess := Loc.Name;
                end;

                DataStor[8] := JobSetUp.Clearing_Fwrd_NPA * ExpTonnage;
                DataStor[12] := JobSetUp."Shore Overheads" * CycleDay;

                //Credit from G/L Entry
                CountGPPG := 0;
                if ProdPostGrp.Find('-') then
                    repeat
                        CountGPPG := CountGPPG + 1;
                        "GLGPP Caption"[CountGPPG] := ProdPostGrp.Code;
                        GLEntry.SetCurrentKey(GLEntry."G/L Account No.", GLEntry."Job No.", GLEntry."Gen. Prod. Posting Group");
                        GLEntry.SetRange(GLEntry."G/L Account No.", JobSetUp."Job Val Begin Account", JobSetUp."Job Val End Account");
                        GLEntry.SetRange(GLEntry."Job No.", "No.");
                        GLEntry.SetRange(GLEntry."Gen. Prod. Posting Group", ProdPostGrp.Code);
                        if GLEntry.Find('-') then
                            repeat
                                GLStr[CountGPPG] := GLStr[CountGPPG] + GLEntry.Amount;
                            until GLEntry.Next() = 0;
                    until ProdPostGrp.Next() = 0;

                CurrExc.SetRange(CurrExc."Currency Code", 'USD');
                CurrExc.SetRange(CurrExc."Starting Date", 0D, ETA);
                if CurrExc.Find('+') then begin
                    CurrRate := CurrExc."Relational Exch. Rate Amount";
                    //MESSAGE('EXCHANGE VALUE IS %1',CurrExc."Relational Exch. Rate Amount")
                end
                else
                    CurrRate := 1;
                PntStor[7] := CurrRate;

            end;

            trigger OnPostDataItem()
            begin
                if StrLen(VoyageFilter) > 1 then VoyageFilter := CopyStr(VoyageFilter, 1, StrLen(VoyageFilter) - 1);

                if ETDCons = "Period End" then ETDCons := "Period Start";
                if ETACons = "Period Start" then ETACons := "Period End";
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FieldNo(Vessel);
                SetRange("Ending Date", "Period Start", "Period End");
                SetFilter("Fishing Country Code", FC);
                SetFilter(Vessel, VesselSel);
                SetFilter("No.", JobsNo);
                SetFilter("Person Responsible", ResourceOn);

                CurrReport.CreateTotals(CycleDay, PortDay, LostDay, SeaDay, FishgDay);
                CurrReport.CreateTotals(PntStor[1], PntStor[2], PntStor[3], PntStor[4], PntStor[5], PntStor[6], PntStor[7]);
                CurrReport.CreateTotals(DataStor[3], DataStor[4], DataStor[5], DataStor[6], DataStor[7], DataStor[8], DataStor[9]);
                CurrReport.CreateTotals(DataStor[10], DataStor[11], DataStor[12], DataStor[13], DataStor[14], DataStor[15]);
                CurrReport.CreateTotals(TotDirExp, TotPrice);

                Countrs := Count;
                if Countrs = 0 then Countrs := 1;
                VoyageFilter := '';

                ETDCons := "Period End";
                ETACons := "Period Start";

                //AAA - June 2002
                locate.SetRange(locate."Location Type", 1);
                TotLoc := locate.Count;
                Countx := 2;
                repeat
                    locate.CalcFields(locate."Qty to Cold Room", locate."Qty Budgeted");
                    if (locate."Qty to Cold Room" <> 0) then begin
                        //MESSAGE('I am Location %1',locate.Code);
                        SeaRange[Countx] := locate.Code;
                        Countx := Countx + 1;
                    end;
                until locate.Next = 0;
            end;
        }
        dataitem(Jb; Job)
        {
            DataItemTableView = SORTING("Ending Date");
            column(Jb__No__; "No.")
            {
            }
            column(Jb__Search_Description_; "Search Description")
            {
            }
            column(Jb_Description; Description)
            {
            }
            column(Jb__Description_2_; "Description 2")
            {
            }
            column(Jb__Bill_to_Customer_No__; "Bill-to Customer No.")
            {
            }
            column(Jb__Creation_Date_; "Creation Date")
            {
            }
            column(Jb__No__Caption; FieldCaption("No."))
            {
            }
            column(Jb__Search_Description_Caption; FieldCaption("Search Description"))
            {
            }
            column(Jb_DescriptionCaption; FieldCaption(Description))
            {
            }
            column(Jb__Description_2_Caption; FieldCaption("Description 2"))
            {
            }
            column(Jb__Bill_to_Customer_No__Caption; FieldCaption("Bill-to Customer No."))
            {
            }
            column(Jb__Creation_Date_Caption; FieldCaption("Creation Date"))
            {
            }
            dataitem(JbLedMark; "Job Ledger Entry")
            {
                DataItemLink = "Job No." = FIELD("No.");
                DataItemTableView = SORTING("Job No.", "Posting Date", Type, "No.", "Location Code", "Gen. Prod. Posting Group") WHERE("Location Code" = CONST('CRM-ASL'), "Gen. Prod. Posting Group" = FILTER('FIS' | ''));
                column(JbLedMark__Job_No__; "Job No.")
                {
                }
                column(JbLedMark__Posting_Date_; "Posting Date")
                {
                }
                column(JbLedMark__Document_No__; "Document No.")
                {
                }
                column(JbLedMark_Type; Type)
                {
                }
                column(JbLedMark__Job_No__Caption; FieldCaption("Job No."))
                {
                }
                column(JbLedMark__Posting_Date_Caption; FieldCaption("Posting Date"))
                {
                }
                column(JbLedMark__Document_No__Caption; FieldCaption("Document No."))
                {
                }
                column(JbLedMark_TypeCaption; FieldCaption(Type))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    "Marked Rec" := true;
                    Modify;
                end;
            }
            dataitem(JbCatchMark; "Job catch Default")
            {
                DataItemLink = "No." = FIELD("No.");
                DataItemTableView = SORTING("No.", GroupSort);
                column(JbCatchMark__Table_Name_; "Table Name")
                {
                }
                column(JbCatchMark__No__; "No.")
                {
                }
                column(JbCatchMark_Code; Code)
                {
                }
                column(JbCatchMark_Description; Description)
                {
                }
                column(JbCatchMark__Pack_Size_; "Pack Size")
                {
                }
                column(JbCatchMark_Brand; Brand)
                {
                }
                column(JbCatchMark__Table_Name_Caption; FieldCaption("Table Name"))
                {
                }
                column(JbCatchMark__No__Caption; FieldCaption("No."))
                {
                }
                column(JbCatchMark_CodeCaption; FieldCaption(Code))
                {
                }
                column(JbCatchMark_DescriptionCaption; FieldCaption(Description))
                {
                }
                column(JbCatchMark__Pack_Size_Caption; FieldCaption("Pack Size"))
                {
                }
                column(JbCatchMark_BrandCaption; FieldCaption(Brand))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    "Marked Rec" := true;
                    Modify;
                end;
            }
            dataitem(ValEntMark; "Value Entry")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = SORTING("Document No.", "Gen. Prod. Posting Group") WHERE("Gen. Prod. Posting Group" = FILTER(<> 'FIS'));
                column(ValEntMark__Entry_No__; "Entry No.")
                {
                }
                column(ValEntMark__Item_No__; "Item No.")
                {
                }
                column(ValEntMark__Posting_Date_; "Posting Date")
                {
                }
                column(ValEntMark__Item_Ledger_Entry_Type_; "Item Ledger Entry Type")
                {
                }
                column(ValEntMark__Source_No__; "Source No.")
                {
                }
                column(ValEntMark__Document_No__; "Document No.")
                {
                }
                column(ValEntMark__Entry_No__Caption; FieldCaption("Entry No."))
                {
                }
                column(ValEntMark__Item_No__Caption; FieldCaption("Item No."))
                {
                }
                column(ValEntMark__Posting_Date_Caption; FieldCaption("Posting Date"))
                {
                }
                column(ValEntMark__Item_Ledger_Entry_Type_Caption; FieldCaption("Item Ledger Entry Type"))
                {
                }
                column(ValEntMark__Source_No__Caption; FieldCaption("Source No."))
                {
                }
                column(ValEntMark__Document_No__Caption; FieldCaption("Document No."))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    "Marked Rec" := true;
                    Modify;
                end;
            }

            trigger OnPreDataItem()
            begin
                Copy(Jobss);
                MarkedOnly(true);
            end;
        }
        dataitem("Sea Food categories"; "Sea Food categories")
        {
            DataItemTableView = SORTING("Sea food code");
            column(Sea_Food_categories__Sea_food_code_; "Sea food code")
            {
            }
            column(A2_4_; A2[4])
            {
            }
            column(A2_3_; A2[3])
            {
            }
            column(A2_2_; A2[2])
            {
            }
            column(A2_1_; A2[1])
            {
            }
            column(A1_4__1000; A1[4] * 1000)
            {
            }
            column(A1_3_; A1[3])
            {
            }
            column(A1_2_; A1[2])
            {
            }
            column(A1_1_; A1[1])
            {
            }
            column(COPYSTR___Sea_food_code__5_; CopyStr("Sea food code", 5))
            {
            }
            column(A1_1__Control1000000323; A1[1])
            {
            }
            column(A2_1__Control1000000316; A2[1])
            {
            }
            column(COPYSTR___Sea_food_code__5__Control1000000324; CopyStr("Sea food code", 5))
            {
            }
            column(SeaRangeC_20_; SeaRangeC[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_19_; SeaRangeC[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_18_; SeaRangeC[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_17_; SeaRangeC[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_16_; SeaRangeC[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_15_; SeaRangeC[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_14_; SeaRangeC[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_13_; SeaRangeC[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_12_; SeaRangeC[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_11_; SeaRangeC[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_10_; SeaRangeC[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_9_; SeaRangeC[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_8_; SeaRangeC[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_7_; SeaRangeC[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_6_; SeaRangeC[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_20_; SeaRangeCBud[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_19_; SeaRangeCBud[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_18_; SeaRangeCBud[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_17_; SeaRangeCBud[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_16_; SeaRangeCBud[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_15_; SeaRangeCBud[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_14_; SeaRangeCBud[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_13_; SeaRangeCBud[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_12_; SeaRangeCBud[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_11_; SeaRangeCBud[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_10_; SeaRangeCBud[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_9_; SeaRangeCBud[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_8_; SeaRangeCBud[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_7_; SeaRangeCBud[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_6_; SeaRangeCBud[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_5_; SeaRangeC[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_4_; SeaRangeCBud[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_3_; SeaRangeCBud[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_2_; SeaRangeCBud[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_1_; SeaRangeCBud[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_20_; SeaRangeCVar[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_19_; SeaRangeCVar[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_18_; SeaRangeCVar[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_17_; SeaRangeCVar[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_16_; SeaRangeCVar[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_15_; SeaRangeCVar[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_14_; SeaRangeCVar[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_13_; SeaRangeCVar[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_12_; SeaRangeCVar[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_11_; SeaRangeCVar[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_10_; SeaRangeCVar[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_9_; SeaRangeCVar[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_8_; SeaRangeCVar[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_7_; SeaRangeCVar[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_6_; SeaRangeCVar[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_5_; SeaRangeCVar[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_4_; SeaRangeCVar[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_3_; SeaRangeCVar[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_2_; SeaRangeCVar[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_1_; SeaRangeCVar[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(A1_1__A2_1_; A1[1] - A2[1])
            {
            }
            column(SeaRangeC_1_; SeaRangeC[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_2_; SeaRangeC[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_3_; SeaRangeC[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_4_; SeaRangeC[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_5_; SeaRangeCBud[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(A1_1__A2_1__Control1000000687; A1[1] - A2[1])
            {
            }
            column(A1_1__Control1000000688; A1[1])
            {
            }
            column(A2_1__Control1000000689; A2[1])
            {
            }
            column(SeaRangeCBud_1__Control1000000287; SeaRangeCBud[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_1__Control1000000288; SeaRangeC[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_1__Control1000000289; SeaRangeCVar[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_2__Control1000000290; SeaRangeCBud[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_2__Control1000000291; SeaRangeC[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_2__Control1000000292; SeaRangeCVar[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_3__Control1000000293; SeaRangeCBud[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_3__Control1000000330; SeaRangeC[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_3__Control1000000331; SeaRangeCVar[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_4__Control1000000332; SeaRangeCBud[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_4__Control1000000333; SeaRangeC[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_4__Control1000000334; SeaRangeCVar[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_5__Control1000000335; SeaRangeCBud[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_5__Control1000000336; SeaRangeC[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_5__Control1000000337; SeaRangeCVar[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_6__Control1000000338; SeaRangeCBud[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_6__Control1000000339; SeaRangeC[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_6__Control1000000340; SeaRangeCVar[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_7__Control1000000341; SeaRangeCBud[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_7__Control1000000368; SeaRangeC[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_7__Control1000000369; SeaRangeCVar[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_8__Control1000000370; SeaRangeCBud[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_8__Control1000000371; SeaRangeC[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_8__Control1000000372; SeaRangeCVar[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_9__Control1000000404; SeaRangeCBud[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_9__Control1000000405; SeaRangeC[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_9__Control1000000406; SeaRangeCVar[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_10__Control1000000407; SeaRangeCBud[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_10__Control1000000408; SeaRangeC[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_10__Control1000000409; SeaRangeCVar[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_11__Control1000000410; SeaRangeCBud[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_11__Control1000000411; SeaRangeC[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_11__Control1000000412; SeaRangeCVar[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_12__Control1000000413; SeaRangeCBud[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_12__Control1000000414; SeaRangeC[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_12__Control1000000415; SeaRangeCVar[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_13__Control1000000416; SeaRangeCBud[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_13__Control1000000417; SeaRangeC[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_13__Control1000000418; SeaRangeCVar[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_14__Control1000000419; SeaRangeCBud[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_14__Control1000000420; SeaRangeC[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_14__Control1000000421; SeaRangeCVar[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_15__Control1000000422; SeaRangeCBud[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_15__Control1000000423; SeaRangeC[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_15__Control1000000424; SeaRangeCVar[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_16__Control1000000425; SeaRangeCBud[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_16__Control1000000426; SeaRangeC[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_16__Control1000000427; SeaRangeCVar[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_17__Control1000000428; SeaRangeCBud[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_17__Control1000000429; SeaRangeC[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_17__Control1000000430; SeaRangeCVar[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_18__Control1000000431; SeaRangeCBud[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_18__Control1000000432; SeaRangeC[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_18__Control1000000433; SeaRangeCVar[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_19__Control1000000434; SeaRangeCBud[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_19__Control1000000435; SeaRangeC[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_19__Control1000000436; SeaRangeCVar[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_20__Control1000000437; SeaRangeCBud[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_20__Control1000000438; SeaRangeC[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_20__Control1000000439; SeaRangeCVar[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(NairaVal2X_NairaValBX; NairaVal2X - NairaValBX)
            {
            }
            column(NairaValBX; NairaValBX)
            {
            }
            column(PrdPrcBX; PrdPrcBX)
            {
            }
            column(QtyBX; QtyBX)
            {
            }
            column(NairaVal2X; NairaVal2X)
            {
            }
            column(PrdPrc2X; PrdPrc2X)
            {
            }
            column(QtyX; QtyX)
            {
            }
            column(TotalForX; TotalForX)
            {
            }
            column(TotalFor; TotalFor)
            {
            }
            column(Qty; Qty)
            {
            }
            column(PrdPrc2; PrdPrc2)
            {
            }
            column(NairaVal2; NairaVal2)
            {
            }
            column(QtyB; QtyB)
            {
            }
            column(PrdPrcB; PrdPrcB)
            {
            }
            column(NairaValB; NairaValB)
            {
            }
            column(NairaVal2_NairaValB; NairaVal2 - NairaValB)
            {
            }
            column(NairaVal2_NairaValB___NairaVal2X_NairaValBX_; (NairaVal2 - NairaValB) - (NairaVal2X - NairaValBX))
            {
            }
            column(NairaValB_NairaValBX; NairaValB - NairaValBX)
            {
            }
            column(PrdPrcB_PrdPrcBX; PrdPrcB - PrdPrcBX)
            {
            }
            column(QtyB_QtyBX; QtyB - QtyBX)
            {
            }
            column(NairaVal2_NairaVal2X; NairaVal2 - NairaVal2X)
            {
            }
            column(PrdPrc2_PrdPrc2X; PrdPrc2 - PrdPrc2X)
            {
            }
            column(Qty_QtyX; Qty - QtyX)
            {
            }
            column(TotalFory; TotalFory)
            {
            }
            column(Sea_Food_categories__Sea_food_code_Caption; FieldCaption("Sea food code"))
            {
            }
            dataitem("Job Ledger Entry Rep"; "Job Ledger Entry")
            {
                DataItemLink = GroupSort = FIELD("Sea food code");
                DataItemTableView = SORTING(GroupSort, "Location Code", "Gen. Prod. Posting Group", "Marked Rec") WHERE("Location Code" = CONST('CRM-ASL'), "Gen. Prod. Posting Group" = FILTER('FIS' | ''), "Marked Rec" = CONST(true));
                column(Job_Ledger_Entry_Rep_GroupSort; GroupSort)
                {
                }
                column(Job_Ledger_Entry_Rep__No__; "No.")
                {
                }
                column(NairaVal2_Control1000000066; NairaVal2)
                {
                }
                column(PrdPrc2_Control1000000067; PrdPrc2)
                {
                }
                column(Qty_Control1000000068; Qty)
                {
                }
                column(Job_Ledger_Entry_Rep_GroupSort_Control1000000069; GroupSort)
                {
                }
                column(NairaVal2_Control1000000071; NairaVal2)
                {
                }
                column(PrdPrc2_Control1000000072; PrdPrc2)
                {
                }
                column(Qty_Control1000000073; Qty)
                {
                }
                column(COPYSTR_GroupSort_5_; CopyStr(GroupSort, 5))
                {
                }
                column(NairaVal2_Control1000000075; NairaVal2)
                {
                }
                column(PrdPrc2_Control1000000076; PrdPrc2)
                {
                }
                column(Qty_Control1000000077; Qty)
                {
                }
                column(TotalFor_Control1000000078; TotalFor)
                {
                }
                column(Job_Ledger_Entry_Rep_Job_No_; "Job No.")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    Qty := Quantity * -1;
                    Itempr.SetRange(Itempr."Item No.", "No.");
                    //Itempr.SETRANGE(Itempr."Starting Date",0D,"Posting Date");//#1
                    //IF Itempr1.FIND('+') THEN Prc:=Itempr1."Unit Price" ELSE //#1
                    begin
                        Prc := 0;
                        if Flag then Message('Price Missing for Item %1 %2', "No.", "Job No.", Itempr."Item No.");
                    end;
                    PrdPrc := Qty * Prc;

                    //Quatity By Location(Vessel);
                    level := TotLoc + 1;
                    repeat
                        if SeaRange[level] = "Job Ledger Entry Rep"."Source Code" then
                            SeaRangeC[level] := SeaRangeC[level] + Qty;
                        level := level - 1;
                    until level = 0
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo(GroupSort);
                    CurrReport.CreateTotals(PrdPrc2, NairaVal2, Qty);
                end;
            }
            dataitem("Job catch Default"; "Job catch Default")
            {
                DataItemLink = GroupSort = FIELD("Sea food code");
                DataItemTableView = SORTING(GroupSort, "Marked Rec") WHERE("Marked Rec" = CONST(true));
                column(No_B_; "No.B")
                {
                }
                column(NairaValB_Control1000000115; NairaValB)
                {
                }
                column(PrdPrcB_Control1000000116; PrdPrcB)
                {
                }
                column(QtyB_Control1000000117; QtyB)
                {
                }
                column(Job_catch_Default_GroupSort; GroupSort)
                {
                }
                column(Job_catch_Default_Table_Name; "Table Name")
                {
                }
                column(Job_catch_Default_No_; "No.")
                {
                }
                column(Job_catch_Default_Code; Code)
                {
                }
                column(Job_catch_Default_Pack_Size; "Pack Size")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    Syntesis(Code, "Pack Size", Brand); //Compose No.
                    QtyB := "Budget Quantity";
                    Itempr.SetRange(Itempr."Item No.", "No.B");

                    /*IF JobETA.GET("No.") THEN
                     Itempr.SETRANGE(Itempr."Starting Date",0D,JobETA."Ending Date")
                    ELSE
                      Itempr.SETRANGE(Itempr."Starting Date",0D,"Period End");
                    
                    IF Itempr.FIND('+') THEN PrcB:=Itempr."Unit Price" ELSE PrcB:=0;
                    PrdPrcB:=QtyB*PrcB;*///#1

                    //Quatity By Location(Vessel);
                    level := TotLoc + 1;
                    repeat
                        if SeaRange[level] = "Job catch Default".Vessel then
                            SeaRangeCBud[level] := SeaRangeCBud[level] + QtyB;
                        level := level - 1;
                    until level = 0

                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo(GroupSort);
                    CurrReport.CreateTotals(PrdPrcB, NairaValB, QtyB);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                A1[1] := 0;
                A1[2] := 0;
                A1[3] := 0;
                A1[4] := 0;
                A2[1] := 0;
                A2[2] := 0;
                A2[3] := 0;
                A2[4] := 0;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(PrdPrc2, NairaVal2, Qty);
                CurrReport.CreateTotals(PrdPrcB, NairaValB, QtyB);
                CurrReport.CreateTotals(A2[1], A1[1], A2[2], A1[2]);
                //Quatity By Location(Vessel);
                level := TotLoc + 1;
                repeat
                    CurrReport.CreateTotals(SeaRangeC[level], SeaRangeCBud[level], SeaRangeCVar[level]);
                    SeaRangeC[level] := 0;
                    SeaRangeCBud[level] := 0;
                    level := level - 1;
                until level = 0;
            end;
        }
        dataitem("Sea Food categories1"; "Sea Food categories")
        {
            DataItemTableView = SORTING("Sea food code");
            column(Sea_Food_categories1__Sea_food_code_; "Sea food code")
            {
            }
            column(A2_4__Control1000000060; A2[4])
            {
            }
            column(A2_3__Control1000000061; A2[3])
            {
            }
            column(A2_2__Control1000000062; A2[2])
            {
            }
            column(A2_1__Control1000000063; A2[1])
            {
            }
            column(A1_4__1000_Control1000000064; A1[4] * 1000)
            {
            }
            column(A1_3__Control1000000079; A1[3])
            {
            }
            column(A1_2__Control1000000086; A1[2])
            {
            }
            column(A1_1__Control1000000087; A1[1])
            {
            }
            column(COPYSTR___Sea_food_code__5__Control1000000088; CopyStr("Sea food code", 5))
            {
            }
            column(A2_2__Control1000000021; A2[2])
            {
            }
            column(A1_2__Control1000000309; A1[2])
            {
            }
            column(COPYSTR___Sea_food_code__5__Control1000000312; CopyStr("Sea food code", 5))
            {
            }
            column(A1_2__A2_2_; A1[2] - A2[2])
            {
            }
            column(SeaRangeCBud_1__Control1000000559; SeaRangeCBud[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_1__Control1000000560; SeaRangeC[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_1__Control1000000561; SeaRangeCVar[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_2__Control1000000562; SeaRangeCBud[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_2__Control1000000563; SeaRangeC[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_2__Control1000000564; SeaRangeCVar[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_3__Control1000000627; SeaRangeCBud[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_3__Control1000000628; SeaRangeC[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_3__Control1000000629; SeaRangeCVar[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_4__Control1000000630; SeaRangeCBud[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_4__Control1000000631; SeaRangeC[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_4__Control1000000632; SeaRangeCVar[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_5__Control1000000633; SeaRangeCBud[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_5__Control1000000634; SeaRangeC[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_5__Control1000000635; SeaRangeCVar[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_6__Control1000000636; SeaRangeCBud[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_6__Control1000000637; SeaRangeC[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_6__Control1000000638; SeaRangeCVar[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_7__Control1000000639; SeaRangeCBud[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_7__Control1000000640; SeaRangeC[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_7__Control1000000641; SeaRangeCVar[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_8__Control1000000642; SeaRangeCBud[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_8__Control1000000643; SeaRangeC[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_8__Control1000000644; SeaRangeCVar[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_9__Control1000000645; SeaRangeCBud[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_9__Control1000000646; SeaRangeC[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_9__Control1000000647; SeaRangeCVar[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_10__Control1000000648; SeaRangeCBud[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_10__Control1000000649; SeaRangeC[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_10__Control1000000650; SeaRangeCVar[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_11__Control1000000651; SeaRangeCBud[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_11__Control1000000652; SeaRangeC[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_11__Control1000000653; SeaRangeCVar[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_12__Control1000000654; SeaRangeCBud[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_12__Control1000000655; SeaRangeC[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_12__Control1000000656; SeaRangeCVar[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_13__Control1000000657; SeaRangeCBud[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_13__Control1000000658; SeaRangeC[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_13__Control1000000659; SeaRangeCVar[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_14__Control1000000660; SeaRangeCBud[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_14__Control1000000661; SeaRangeC[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_14__Control1000000662; SeaRangeCVar[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_15__Control1000000663; SeaRangeCBud[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_15__Control1000000664; SeaRangeC[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_15__Control1000000665; SeaRangeCVar[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_16__Control1000000666; SeaRangeCBud[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_16__Control1000000667; SeaRangeC[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_16__Control1000000668; SeaRangeCVar[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_17__Control1000000669; SeaRangeCBud[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_17__Control1000000670; SeaRangeC[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_17__Control1000000671; SeaRangeCVar[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_18__Control1000000672; SeaRangeCBud[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_18__Control1000000673; SeaRangeC[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_18__Control1000000674; SeaRangeCVar[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_19__Control1000000675; SeaRangeCBud[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_19__Control1000000676; SeaRangeC[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_19__Control1000000677; SeaRangeCVar[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_20__Control1000000678; SeaRangeCBud[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_20__Control1000000679; SeaRangeC[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_20__Control1000000680; SeaRangeCVar[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(PrdPrcBX_Control1000000041; PrdPrcBX)
            {
            }
            column(PrdPrcB_Control1000000042; PrdPrcB)
            {
            }
            column(PrdPrcB_PrdPrcBX_Control1000000043; PrdPrcB - PrdPrcBX)
            {
            }
            column(PrdPrc2X_Control1000000050; PrdPrc2X)
            {
            }
            column(PrdPrc2_Control1000000051; PrdPrc2)
            {
            }
            column(PrdPrc2_PrdPrc2X_Control1000000052; PrdPrc2 - PrdPrc2X)
            {
            }
            column(TotalForX_Control1000000056; TotalForX)
            {
            }
            column(TotalFor_Control1000000057; TotalFor)
            {
            }
            column(TotalFory_Control1000000058; TotalFory)
            {
            }
            column(PrdPrcBX_PrdPrc2X; PrdPrcBX - PrdPrc2X)
            {
            }
            column(PrdPrcB_PrdPrcBX___PrdPrc2_PrdPrc2X_; (PrdPrcB - PrdPrcBX) - (PrdPrc2 - PrdPrc2X))
            {
            }
            column(PrdPrcB_PrdPrc2; PrdPrcB - PrdPrc2)
            {
            }
            column(SeaRangeCBud_1__Control1000000059; SeaRangeCBud[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_1__Control1000000440; SeaRangeC[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_1__Control1000000441; SeaRangeCVar[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_2__Control1000000442; SeaRangeCBud[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_2__Control1000000443; SeaRangeC[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_2__Control1000000444; SeaRangeCVar[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_3__Control1000000502; SeaRangeCBud[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_3__Control1000000503; SeaRangeC[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_3__Control1000000507; SeaRangeCVar[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_4__Control1000000508; SeaRangeCBud[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_4__Control1000000509; SeaRangeC[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_4__Control1000000510; SeaRangeCVar[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_5__Control1000000511; SeaRangeCBud[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_5__Control1000000512; SeaRangeC[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_5__Control1000000513; SeaRangeCVar[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_6__Control1000000514; SeaRangeCBud[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_6__Control1000000515; SeaRangeC[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_6__Control1000000516; SeaRangeCVar[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_7__Control1000000517; SeaRangeCBud[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_7__Control1000000518; SeaRangeC[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_7__Control1000000519; SeaRangeCVar[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_8__Control1000000520; SeaRangeCBud[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_8__Control1000000521; SeaRangeC[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_8__Control1000000522; SeaRangeCVar[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_9__Control1000000523; SeaRangeCBud[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_9__Control1000000524; SeaRangeC[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_9__Control1000000525; SeaRangeCVar[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_10__Control1000000526; SeaRangeCBud[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_10__Control1000000527; SeaRangeC[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_10__Control1000000528; SeaRangeCVar[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_11__Control1000000529; SeaRangeCBud[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_11__Control1000000530; SeaRangeC[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_11__Control1000000531; SeaRangeCVar[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_12__Control1000000532; SeaRangeCBud[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_12__Control1000000533; SeaRangeC[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_12__Control1000000534; SeaRangeCVar[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_13__Control1000000535; SeaRangeCBud[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_13__Control1000000536; SeaRangeC[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_13__Control1000000537; SeaRangeCVar[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_14__Control1000000538; SeaRangeCBud[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_14__Control1000000539; SeaRangeC[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_14__Control1000000540; SeaRangeCVar[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_15__Control1000000541; SeaRangeCBud[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_15__Control1000000542; SeaRangeC[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_15__Control1000000543; SeaRangeCVar[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_16__Control1000000544; SeaRangeCBud[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_16__Control1000000545; SeaRangeC[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_16__Control1000000546; SeaRangeCVar[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_17__Control1000000547; SeaRangeCBud[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_17__Control1000000548; SeaRangeC[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_17__Control1000000549; SeaRangeCVar[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_18__Control1000000550; SeaRangeCBud[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_18__Control1000000551; SeaRangeC[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_18__Control1000000552; SeaRangeCVar[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_19__Control1000000553; SeaRangeCBud[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_19__Control1000000554; SeaRangeC[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_19__Control1000000555; SeaRangeCVar[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_20__Control1000000556; SeaRangeCBud[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_20__Control1000000557; SeaRangeC[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_20__Control1000000558; SeaRangeCVar[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Sea_Food_categories1__Sea_food_code_Caption; FieldCaption("Sea food code"))
            {
            }
            dataitem("Job Ledger Entry1"; "Job Ledger Entry")
            {
                DataItemLink = GroupSort = FIELD("Sea food code");
                DataItemTableView = SORTING(GroupSort, "Location Code", "Gen. Prod. Posting Group", "Marked Rec") WHERE("Location Code" = CONST('CRM-ASL'), "Gen. Prod. Posting Group" = FILTER('FIS' | ''), "Marked Rec" = CONST(true));
                column(Job_Ledger_Entry1_GroupSort; GroupSort)
                {
                }
                column(Job_Ledger_Entry1__No__; "No.")
                {
                }
                column(NairaVal2_Control1000000152; NairaVal2)
                {
                }
                column(PrdPrc2_Control1000000195; PrdPrc2)
                {
                }
                column(Qty_Control1000000197; Qty)
                {
                }
                column(Job_Ledger_Entry1_GroupSort_Control1000000198; GroupSort)
                {
                }
                column(NairaVal2_Control1000000199; NairaVal2)
                {
                }
                column(PrdPrc2_Control1000000253; PrdPrc2)
                {
                }
                column(Qty_Control1000000254; Qty)
                {
                }
                column(COPYSTR_GroupSort_5__Control1000000255; CopyStr(GroupSort, 5))
                {
                }
                column(NairaVal2_Control1000000257; NairaVal2)
                {
                }
                column(PrdPrc2_Control1000000258; PrdPrc2)
                {
                }
                column(Qty_Control1000000260; Qty)
                {
                }
                column(TotalFor_Control1000000261; TotalFor)
                {
                }
                column(Job_Ledger_Entry1_Job_No_; "Job No.")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    Qty := Quantity * -1;
                    Itempr.SetRange(Itempr."Item No.", "No.");
                    //Itempr.SETRANGE(Itempr."Starting Date",0D,"Posting Date");//#1
                    //IF Itempr.FIND('+') THEN Prc:=Itempr."Unit Price" ELSE //#1
                    begin
                        Prc := 0;
                        // IF Flag THEN MESSAGE('Price Missing for Item %1',Itempr."Item No.");
                        if Flag then Message('Price Missing for Item %1 %2', "No.", "Job No.", Itempr."Item No.");
                    end;
                    PrdPrc := Qty * Prc;

                    //Value By Location(Vessel);
                    level := TotLoc + 1;
                    repeat
                        if SeaRange[level] = "Job Ledger Entry1"."Source Code" then
                            SeaRangeC[level] := SeaRangeC[level] + PrdPrc;
                        level := level - 1;
                    until level = 0
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo(GroupSort);
                    CurrReport.CreateTotals(PrdPrc2, NairaVal2, Qty);
                end;
            }
            dataitem("Job Catch Default1"; "Job catch Default")
            {
                DataItemLink = GroupSort = FIELD("Sea food code");
                DataItemTableView = SORTING(GroupSort, "Marked Rec") WHERE("Marked Rec" = CONST(true));
                column(No_B__Control1000000089; "No.B")
                {
                }
                column(NairaValB_Control1000000090; NairaValB)
                {
                }
                column(PrdPrcB_Control1000000091; PrdPrcB)
                {
                }
                column(QtyB_Control1000000092; QtyB)
                {
                }
                column(Job_Catch_Default1_GroupSort; GroupSort)
                {
                }
                column(Job_Catch_Default1_Table_Name; "Table Name")
                {
                }
                column(Job_Catch_Default1_No_; "No.")
                {
                }
                column(Job_Catch_Default1_Code; Code)
                {
                }
                column(Job_Catch_Default1_Pack_Size; "Pack Size")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    Syntesis(Code, "Pack Size", Brand); //Compose No.
                    QtyB := "Budget Quantity";
                    Itempr.SetRange(Itempr."Item No.", "No.B");

                    /*IF JobETA.GET("No.") THEN
                      Itempr.SETRANGE(Itempr."Starting Date",0D,JobETA."Ending Date")
                    ELSE
                      Itempr.SETRANGE(Itempr."Starting Date",0D,"Period End");
                    
                    IF Itempr.FIND('+') THEN PrcB:=Itempr."Unit Price" ELSE PrcB:=0;
                    PrdPrcB:=QtyB*PrcB;*///#1

                    //Value By Location(Vessel);
                    level := TotLoc + 1;
                    repeat
                        if SeaRange[level] = "Job Catch Default1".Vessel then
                            SeaRangeCBud[level] := SeaRangeCBud[level] + PrdPrcB;
                        level := level - 1;
                    until level = 0

                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo(GroupSort);
                    CurrReport.CreateTotals(PrdPrcB, NairaValB, QtyB);
                end;
            }

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(PrdPrc2, NairaVal2, Qty);
                CurrReport.CreateTotals(PrdPrcB, NairaValB, QtyB);

                A1[1] := 0;
                A1[2] := 0;
                A1[3] := 0;
                A1[4] := 0;
                A2[1] := 0;
                A2[2] := 0;
                A2[3] := 0;
                A2[4] := 0;

                PrdPrcB := 0;
                PrdPrcBX := 0;
                PrdPrc2 := 0;
                PrdPrc2X := 0;

                //Quatity By Location(Vessel);
                level := TotLoc + 1;
                repeat
                    CurrReport.CreateTotals(SeaRangeC[level], SeaRangeCBud[level], SeaRangeCVar[level]);
                    SeaRangeC[level] := 0;
                    SeaRangeCBud[level] := 0;
                    level := level - 1;
                until level = 0;
            end;
        }
        dataitem("Sea Food categories2"; "Sea Food categories")
        {
            DataItemTableView = SORTING("Sea food code");
            column(Sea_Food_categories2__Sea_food_code_; "Sea food code")
            {
            }
            column(Sea_Food_categories2__Landed_Value_; "Landed Value")
            {
            }
            column(Sea_Food_categories2__Entry_code_; "Entry code")
            {
            }
            column(Sea_Food_categories2__Sea_food_Description_; "Sea food Description")
            {
            }
            column(Sea_Food_categories2__Sea_food_code__Control1000000262; "Sea food code")
            {
            }
            column(A2_4__Control1000000294; A2[4])
            {
            }
            column(A2_3__Control1000000295; A2[3])
            {
            }
            column(A2_2__Control1000000296; A2[2])
            {
            }
            column(A2_1__Control1000000297; A2[1])
            {
            }
            column(A1_4__1000_Control1000000298; A1[4] * 1000)
            {
            }
            column(A1_3__Control1000000299; A1[3])
            {
            }
            column(A1_2__Control1000000300; A1[2])
            {
            }
            column(A1_1__Control1000000301; A1[1])
            {
            }
            column(Sea_Food_categories2__Sea_food_code__Control1000000247; "Sea food code")
            {
            }
            column(A2_4__Control1000000313; A2[4])
            {
            }
            column(A1_4_; A1[4])
            {
            }
            column(A1_4__A2_4_; -A1[4] - A2[4])
            {
            }
            column(COPYSTR___Sea_food_code__5__Control1000000037; CopyStr("Sea food code", 5))
            {
            }
            column(SeaRangeCBud_1__Control1000000681; SeaRangeCBud[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_1__Control1000000682; SeaRangeC[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_1__Control1000000683; SeaRangeCVar[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_2__Control1000000684; SeaRangeCBud[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_2__Control1000000685; SeaRangeC[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_2__Control1000000691; SeaRangeCVar[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_3__Control1000000692; SeaRangeCBud[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_3__Control1000000694; SeaRangeC[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_3__Control1000000695; SeaRangeCVar[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_4__Control1000000697; SeaRangeCBud[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_4__Control1000000698; SeaRangeC[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_4__Control1000000700; SeaRangeCVar[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_5__Control1000000701; SeaRangeCBud[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_5__Control1000000702; SeaRangeC[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_5__Control1000000704; SeaRangeCVar[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_6__Control1000000705; SeaRangeCBud[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_6__Control1000000706; SeaRangeC[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_6__Control1000000707; SeaRangeCVar[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_7__Control1000000708; SeaRangeCBud[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_7__Control1000000709; SeaRangeC[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_7__Control1000000710; SeaRangeCVar[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_8__Control1000000711; SeaRangeCBud[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_8__Control1000000712; SeaRangeC[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_8__Control1000000713; SeaRangeCVar[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_9__Control1000000714; SeaRangeCBud[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_9__Control1000000715; SeaRangeC[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_9__Control1000000716; SeaRangeCVar[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_10__Control1000000717; SeaRangeCBud[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_10__Control1000000718; SeaRangeC[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_10__Control1000000719; SeaRangeCVar[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_11__Control1000000720; SeaRangeCBud[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_11__Control1000000721; SeaRangeC[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_11__Control1000000722; SeaRangeCVar[11])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_12__Control1000000723; SeaRangeCBud[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_12__Control1000000724; SeaRangeC[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_12__Control1000000725; SeaRangeCVar[12])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_13__Control1000000726; SeaRangeCBud[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_13__Control1000000727; SeaRangeC[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_13__Control1000000728; SeaRangeCVar[13])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_14__Control1000000729; SeaRangeCBud[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_14__Control1000000730; SeaRangeC[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_14__Control1000000731; SeaRangeCVar[14])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_15__Control1000000732; SeaRangeCBud[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_15__Control1000000733; SeaRangeC[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_15__Control1000000734; SeaRangeCVar[15])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_16__Control1000000735; SeaRangeCBud[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_16__Control1000000736; SeaRangeC[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_16__Control1000000737; SeaRangeCVar[16])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_17__Control1000000738; SeaRangeCBud[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_17__Control1000000739; SeaRangeC[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_17__Control1000000740; SeaRangeCVar[17])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_18__Control1000000741; SeaRangeCBud[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_18__Control1000000742; SeaRangeC[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_18__Control1000000743; SeaRangeCVar[18])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_19__Control1000000744; SeaRangeCBud[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_19__Control1000000745; SeaRangeC[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_19__Control1000000746; SeaRangeCVar[19])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCBud_20__Control1000000747; SeaRangeCBud[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeC_20__Control1000000748; SeaRangeC[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaRangeCVar_20__Control1000000749; SeaRangeCVar[20])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Sea_Food_categories2__Sea_food_code_Caption; FieldCaption("Sea food code"))
            {
            }
            dataitem("Job Ledger Entry2"; "Job Ledger Entry")
            {
                DataItemLink = GroupSort = FIELD("Sea food code");
                DataItemTableView = SORTING(GroupSort, "Location Code", "Gen. Prod. Posting Group", "Marked Rec") WHERE("Location Code" = CONST('CRM-ASL'), "Gen. Prod. Posting Group" = FILTER('FIS' | ''), "Marked Rec" = CONST(true));
                column(Job_Ledger_Entry2__No__; "No.")
                {
                }
                column(NairaVal2_Control1000000265; NairaVal2)
                {
                }
                column(PrdPrc2_Control1000000267; PrdPrc2)
                {
                }
                column(Qty_Control1000000269; Qty)
                {
                }
                column(Job_Ledger_Entry2_GroupSort; GroupSort)
                {
                }
                column(NairaVal2_Control1000000271; NairaVal2)
                {
                }
                column(PrdPrc2_Control1000000272; PrdPrc2)
                {
                }
                column(Qty_Control1000000273; Qty)
                {
                }
                column(COPYSTR_GroupSort_5__Control1000000274; CopyStr(GroupSort, 5))
                {
                }
                column(Job_Ledger_Entry2_Job_No_; "Job No.")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    Qty := Quantity * -1;
                    Itempr.SetRange(Itempr."Item No.", "No.");
                    //Itempr.SETRANGE(Itempr."Starting Date",0D,"Posting Date"); //#1
                    // IF Itempr.FIND('+') THEN Prc:=Itempr."Unit Price" ELSE //#1
                    begin
                        Prc := 0;
                        // IF Flag THEN MESSAGE('Price Missing for Item %1',Itempr."Item No.");
                        if Flag then Message('Price Missing for Item %1 %2', "No.", "Job No.", Itempr."Item No.");
                    end;
                    PrdPrc := Qty * Prc;

                    //Ratio By Location(Vessel);
                    level := TotLoc + 1;
                    repeat
                        if SeaRange[level] = "Job Ledger Entry2"."Source Code" then begin
                            StoreC[level] := StoreC[level] + Qty;
                            StoreCII[level] := StoreCII[level] + PrdPrc;
                        end;
                        level := level - 1;
                    until level = 0
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo(GroupSort);
                    CurrReport.CreateTotals(PrdPrc2, NairaVal2, Qty);

                    PrdPrcB := 0;
                    PrdPrcBX := 0;
                    PrdPrc2 := 0;
                    PrdPrc2X := 0;
                end;
            }
            dataitem("Job Catch Default2"; "Job catch Default")
            {
                DataItemLink = GroupSort = FIELD("Sea food code");
                DataItemTableView = SORTING(GroupSort, "Marked Rec") WHERE("Marked Rec" = CONST(true), "Budget Quantity" = FILTER(<> 0));
                column(No_B__Control1000000275; "No.B")
                {
                }
                column(NairaValB_Control1000000276; NairaValB)
                {
                }
                column(PrdPrcB_Control1000000277; PrdPrcB)
                {
                }
                column(QtyB_Control1000000278; QtyB)
                {
                }
                column(Job_Catch_Default2_GroupSort; GroupSort)
                {
                }
                column(No_B__Control1000000280; "No.B")
                {
                }
                column(NairaValB_Control1000000281; NairaValB)
                {
                }
                column(PrdPrcB_Control1000000282; PrdPrcB)
                {
                }
                column(QtyB_Control1000000283; QtyB)
                {
                }
                column(Job_Catch_Default2_GroupSort_Control1000000284; GroupSort)
                {
                }
                column(Job_Catch_Default2_Table_Name; "Table Name")
                {
                }
                column(Job_Catch_Default2_No_; "No.")
                {
                }
                column(Job_Catch_Default2_Code; Code)
                {
                }
                column(Job_Catch_Default2_Pack_Size; "Pack Size")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    Syntesis(Code, "Pack Size", Brand); //Compose No.
                    QtyB := "Budget Quantity";
                    Itempr.SetRange(Itempr."Item No.", "No.B");

                    /*IF JobETA.GET("No.") THEN
                      Itempr.SETRANGE(Itempr."Starting Date",0D,JobETA."Ending Date")
                    ELSE
                      Itempr.SETRANGE(Itempr."Starting Date",0D,"Period End");
                    
                    IF Itempr.FIND('+') THEN PrcB:=Itempr."Unit Price" ELSE PrcB:=0;
                    PrdPrcB:=QtyB*PrcB;*///#1

                    //Value By Location(Vessel);
                    level := TotLoc + 1;
                    repeat
                        if SeaRange[level] = "Job Catch Default1".Vessel then begin
                            StoreCBud[level] := StoreCBud[level] + QtyB;
                            StoreCBudII[level] := StoreCBudII[level] + PrdPrcB;
                        end;
                        level := level - 1;
                    until level = 0

                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FieldNo(GroupSort);
                    CurrReport.CreateTotals(PrdPrcB, NairaValB, QtyB);
                end;
            }

            trigger OnPreDataItem()
            begin
                CurrReport.CreateTotals(PrdPrc2, NairaVal2, Qty);
                CurrReport.CreateTotals(PrdPrcB, NairaValB, QtyB);

                A1[1] := 0;
                A1[2] := 0;
                A1[3] := 0;
                A1[4] := 0;
                A2[1] := 0;
                A2[2] := 0;
                A2[3] := 0;
                A2[4] := 0;

                //Quatity By Location(Vessel);
                level := TotLoc + 1;
                repeat
                    CurrReport.CreateTotals(SeaRangeC[level], SeaRangeCBud[level], SeaRangeCVar[level]);
                    SeaRangeC[level] := 0;
                    SeaRangeCBud[level] := 0;
                    level := level - 1;
                until level = 0;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    field("Flag Price Error"; Flag)
                    {
                    }
                    field("Period Start"; "Period Start")
                    {
                    }
                    field("Period End"; "Period End")
                    {
                    }
                    field(Vessel; VesselSel)
                    {
                        Lookup = true;
                        LookupPageID = "Location List";
                    }
                    field("Fishing Country"; FishingCount)
                    {
                        Lookup = true;
                        LookupPageID = "Countries/Regions";
                    }
                    field("Job No."; JobsNo)
                    {
                        Lookup = true;
                        LookupPageID = "Job List";
                    }
                    field(Resource; ResourceOn)
                    {
                        Lookup = true;
                        LookupPageID = "Resource List";
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport()
    begin

        "Job led".SetCurrentKey("Job led".GroupSort, "Job led"."Location Code",
                                "Job led"."Gen. Prod. Posting Group", "Job led"."Marked Rec");
        "Job led".SetRange("Job led"."Marked Rec", true);
        "Job led".SetCurrentKey("Job led"."Entry No.");
        if "Job led".Find('-') then
            repeat
                "Job led"."Marked Rec" := false;
                "Job led".Modify;
            until "Job led".Next = 0;
        "Job led".SetRange("Job led"."Marked Rec");


        "job cath".SetCurrentKey("job cath".GroupSort, "job cath"."Marked Rec");
        "job cath".SetRange("job cath"."Marked Rec", true);
        "job cath".SetCurrentKey("job cath"."Table Name", "job cath"."No.");
        if "job cath".Find('-') then
            repeat
                "job cath"."Marked Rec" := false;
                "job cath".Modify;
            until "job cath".Next = 0;
        "job cath".SetRange("job cath"."Marked Rec");

        "Val Ent".SetCurrentKey("Val Ent"."Gen. Prod. Posting Group", "Val Ent"."Document No.", "Val Ent"."Marked Rec");
        "Val Ent".SetRange("Val Ent"."Marked Rec", true);
        "Val Ent".SetCurrentKey("Val Ent"."Entry No.");
        if "Val Ent".Find('-') then
            repeat
                "Val Ent"."Marked Rec" := false;
                "Val Ent".Modify;
            until "Val Ent".Next = 0;
        "Val Ent".SetRange("Val Ent"."Marked Rec");
    end;

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        TotalFor: Label 'Total';
        "---": Integer;
        Job: Record Job;
        Job2: Record Job;
        JobRange: Record Job;
        JobETA: Record Job;
        Itempr1: Record "Item Ledger Entry";
        Itempr: Record "Item Ledger Entry";
        CurrExc: Record "Currency Exchange Rate";
        ProdPostGrp: Record "Gen. Product Posting Group";
        InvtPostGrp: Record "Inventory Posting Group";
        JobLedgerGrpSort: Record "Job Ledger Entry";
        JobSetUp: Record "Jobs Setup";
        JBudLn: Record "Job Ledger Entry";
        Employee: Record Employee;
        Loc: Record Location;
        Coutry: Record "Country/Region";
        GLEntry: Record "G/L Entry";
        Res: Record Resource;
        "Job led": Record "Job Ledger Entry";
        "job cath": Record "Job catch Default";
        "Val Ent": Record "Value Entry";
        Prc: Decimal;
        PrcB: Decimal;
        PrdPrc: Decimal;
        PrdPrcB: Decimal;
        PrdPrc2: Decimal;
        PrdPrcBX: Decimal;
        PrdPrc2X: Decimal;
        PrdPrc2B: Decimal;
        CurrRate: Decimal;
        NairaVal: Decimal;
        NairaValB: Decimal;
        NairaValBX: Decimal;
        NairaVal2: Decimal;
        NairaVal2X: Decimal;
        NairaVal2B: Decimal;
        Qty: Decimal;
        QtyB: Decimal;
        QtyX: Decimal;
        QtyBX: Decimal;
        GPPGDesc: Text[30];
        DataStor: array[15] of Decimal;
        TotalForX: Label 'Total Exports';
        TotalFory: Label 'Total Local';
        Text03: Label 'Catch Incentive';
        Text04: Label 'Salaries & Wages';
        Text05: Label 'Travelling Expenses';
        Text06: Label 'License Fees';
        Text07: Label 'Insurance';
        Text08: Label 'Clearing & FWRD. & NPA';
        Text09: Label 'Total Direct Expenses';
        PntStor: array[8] of Decimal;
        ETD: Date;
        ETA: Date;
        ETDCons: Date;
        ETACons: Date;
        ETA2: Date;
        CycleDay: Decimal;
        PortDay: Decimal;
        LostDay: Decimal;
        SeaDay: Decimal;
        FishgDay: Decimal;
        a: Decimal;
        expcnt: Integer;
        expcntTot: Integer;
        PeopleOnVoy: Integer;
        ResCount: Integer;
        Text10: Label 'Gross Margin';
        Text11: Label '% Of Revenue';
        Text12: Label 'Shore Overheads';
        Text13: Label 'Depreciation';
        Text14: Label 'Interest';
        Text15: Label 'Net Profit';
        Text17: Label 'Total Indirect Expenses';
        TotDirExp: Decimal;
        TotIndirExp: Decimal;
        GrossMarg: Decimal;
        GrossPerct: Decimal;
        NetProfPerct: Decimal;
        TotPrice: Decimal;
        NetProfit: Decimal;
        ExpTonnage: Decimal;
        Vess: Text[30];
        Text18: Label 'CONSOLIDATED VOYAGE P & L STATEMENT';
        Text21: Label 'Shrimp Points';
        Text22: Label 'Fish Points';
        Text23: Label 'Total Points';
        Text24: Label 'Avg. Shrimp Points';
        Text25: Label 'Avg. Fish Points';
        Text26: Label 'Avg. Total Points';
        Text27: Label 'Exchange Rate';
        A1: array[5] of Decimal;
        A2: array[5] of Decimal;
        B1: array[5] of Decimal;
        B2: array[5] of Decimal;
        UOM: Record "Unit of Measure";
        UOMCd: Code[10];
        ItemVar: Code[10];
        "No.B": Code[10];
        NOrder: Decimal;
        ValRate: Decimal;
        ValQty: Decimal;
        GLStr: array[25] of Decimal;
        "GLGPP Caption": array[25] of Code[10];
        CountGPPG: Integer;
        CountG: Integer;
        Flag: Boolean;
        "----": Integer;
        "Period Start": Date;
        "Period End": Date;
        FishingCount: Code[30];
        FC: Code[10];
        VesselSel: Code[25];
        JobsNo: Code[250];
        ResourceOn: Code[30];
        VoyageFilter: Code[1024];
        Countrs: Integer;
        "----------------": Integer;
        locate: Record Location;
        Countx: Integer;
        level: Integer;
        LocGroup: Integer;
        TotLoc: Integer;
        SeaRangeC: array[100] of Decimal;
        SeaRangeCBud: array[100] of Decimal;
        SeaRangeCVar: array[100] of Decimal;
        T001: Text[80];
        SeaRange: array[100] of Text[30];
        Cat: Code[15];
        StoreC: array[100] of Decimal;
        StoreCBud: array[100] of Decimal;
        StoreCII: array[100] of Decimal;
        StoreCBudII: array[100] of Decimal;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Control1000000167CaptionLbl: Label 'Label1000000167';
        Control1000000168CaptionLbl: Label 'Label1000000168';
        Control1000000169CaptionLbl: Label 'Label1000000169';
        Control1000000170CaptionLbl: Label 'Label1000000170';
        Control1000000171CaptionLbl: Label 'Label1000000171';
        Control1000000172CaptionLbl: Label 'Label1000000172';
        Control1000000173CaptionLbl: Label 'Label1000000173';
        GETFILTER__No___CaptionLbl: Label 'Job Filter:';
        CycleDay_Control1000000202CaptionLbl: Label 'Cycle Day';
        FishgDay_Control1000000206CaptionLbl: Label 'Fishing Day';
        LostDay_Control1000000210CaptionLbl: Label 'Lost At Sea';
        PortDay_Control1000000216CaptionLbl: Label 'Port Day';
        ActualCaptionLbl: Label 'Actual';
        BudgetCaptionLbl: Label 'Budget';
        ETDConsCaptionLbl: Label 'ETD';
        ETAConsCaptionLbl: Label 'ETA';
        VarianceCaptionLbl: Label 'Variance';
        VarianceCaption_Control1000000286Lbl: Label 'Variance';
        ActualCaption_Control1000000445Lbl: Label 'Actual';
        BudgetCaption_Control1000000446Lbl: Label 'Budget';
        VarianceCaption_Control1000000447Lbl: Label 'Variance';
        ActualCaption_Control1000000448Lbl: Label 'Actual';
        BudgetCaption_Control1000000449Lbl: Label 'Budget';
        VarianceCaption_Control1000000450Lbl: Label 'Variance';
        ActualCaption_Control1000000451Lbl: Label 'Actual';
        BudgetCaption_Control1000000452Lbl: Label 'Budget';
        VarianceCaption_Control1000000453Lbl: Label 'Variance';
        ActualCaption_Control1000000454Lbl: Label 'Actual';
        BudgetCaption_Control1000000455Lbl: Label 'Budget';
        VarianceCaption_Control1000000456Lbl: Label 'Variance';
        ActualCaption_Control1000000457Lbl: Label 'Actual';
        BudgetCaption_Control1000000458Lbl: Label 'Budget';
        VarianceCaption_Control1000000459Lbl: Label 'Variance';
        ActualCaption_Control1000000460Lbl: Label 'Actual';
        BudgetCaption_Control1000000461Lbl: Label 'Budget';
        VarianceCaption_Control1000000462Lbl: Label 'Variance';
        ActualCaption_Control1000000463Lbl: Label 'Actual';
        BudgetCaption_Control1000000464Lbl: Label 'Budget';
        VarianceCaption_Control1000000465Lbl: Label 'Variance';
        ActualCaption_Control1000000466Lbl: Label 'Actual';
        BudgetCaption_Control1000000467Lbl: Label 'Budget';
        VarianceCaption_Control1000000468Lbl: Label 'Variance';
        ActualCaption_Control1000000469Lbl: Label 'Actual';
        BudgetCaption_Control1000000470Lbl: Label 'Budget';
        VarianceCaption_Control1000000471Lbl: Label 'Variance';
        ActualCaption_Control1000000472Lbl: Label 'Actual';
        BudgetCaption_Control1000000473Lbl: Label 'Budget';
        VarianceCaption_Control1000000474Lbl: Label 'Variance';
        ActualCaption_Control1000000475Lbl: Label 'Actual';
        BudgetCaption_Control1000000476Lbl: Label 'Budget';
        VarianceCaption_Control1000000477Lbl: Label 'Variance';
        ActualCaption_Control1000000478Lbl: Label 'Actual';
        BudgetCaption_Control1000000479Lbl: Label 'Budget';
        VarianceCaption_Control1000000480Lbl: Label 'Variance';
        ActualCaption_Control1000000481Lbl: Label 'Actual';
        BudgetCaption_Control1000000482Lbl: Label 'Budget';
        VarianceCaption_Control1000000483Lbl: Label 'Variance';
        ActualCaption_Control1000000484Lbl: Label 'Actual';
        BudgetCaption_Control1000000485Lbl: Label 'Budget';
        VarianceCaption_Control1000000486Lbl: Label 'Variance';
        ActualCaption_Control1000000487Lbl: Label 'Actual';
        BudgetCaption_Control1000000488Lbl: Label 'Budget';
        VarianceCaption_Control1000000489Lbl: Label 'Variance';
        ActualCaption_Control1000000490Lbl: Label 'Actual';
        BudgetCaption_Control1000000491Lbl: Label 'Budget';
        VarianceCaption_Control1000000492Lbl: Label 'Variance';
        ActualCaption_Control1000000493Lbl: Label 'Actual';
        BudgetCaption_Control1000000494Lbl: Label 'Budget';
        VarianceCaption_Control1000000495Lbl: Label 'Variance';
        ActualCaption_Control1000000496Lbl: Label 'Actual';
        BudgetCaption_Control1000000497Lbl: Label 'Budget';
        VarianceCaption_Control1000000498Lbl: Label 'Variance';
        ActualCaption_Control1000000499Lbl: Label 'Actual';
        BudgetCaption_Control1000000500Lbl: Label 'Budget';
        VarianceCaption_Control1000000504Lbl: Label 'Variance';
        ActualCaption_Control1000000505Lbl: Label 'Actual';
        BudgetCaption_Control1000000506Lbl: Label 'Budget';
        QuantityCaptionLbl: Label 'Quantity';
        EmptyStringCaptionLbl: Label '$';
        QuantityCaption_Control1000000308Lbl: Label 'Quantity';
        Var___N_CaptionLbl: Label 'Var. =N=';
        Bud___N_CaptionLbl: Label 'Bud. =N=';
        Bud___CaptionLbl: Label 'Bud. $';
        Bud__Qty_CaptionLbl: Label 'Bud. Qty.';
        RateCaptionLbl: Label 'Rate';
        N_CaptionLbl: Label '=N=';
        VarianceCaption_Control1000000252Lbl: Label 'Variance';

    procedure Syntesis(Cd: Code[10]; Pk: Code[10]; Br: Code[10]) Itemno: Code[10]
    begin
        //Syntesis Item Code Name
        if UOM.Get(Pk) then UOMCd := UOM."Catch Code";  //Get Unit of measure Code
        ItemVar := Format(Cd) + UOMCd + CopyStr(Br, 1, 1);    //Requip Code Name
        "No.B" := ItemVar;
    end;

    procedure BIN()
    begin
        //InitRate
        level := TotLoc + 1;
        repeat
            SeaRangeC[level] := 0;
            SeaRangeCBud[level] := 0;
            SeaRangeCVar[level] := 0;
            level := level - 1;
        until level = 0;
    end;
}

