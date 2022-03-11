report 50241 "NewDailyPointsReport Fast-AP"
{
    // {UNL-ASL3.60.01.004 (Santus) May 11, 2005
    // -> modified report to write output data to the Entry/Exit Table. the data will be stored as historical data.
    DefaultLayout = RDLC;
    RDLCLayout = './Report\Rdlc\NewDailyPointsReportFastAP.rdlc';

    Caption = 'New Daily Points Report';

    dataset
    {
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

            trigger OnAfterGetRecord()
            begin
                /*
                IF NOT Historical THEN
                BEGIN
                  JobsPointVal.SETCURRENTKEY(JobsPointVal.Vessel,JobsPointVal.Status);
                  JobsPointVal.SETRANGE(JobsPointVal.Status,2);
                END;
                
                IF RepDate<>0D THEN
                  JobsPointVal.SETFILTER(JobsPointVal."Posting Date Filter",'%1',RepDate)
                ELSE
                  JobsPointVal.SETFILTER(JobsPointVal."Posting Date Filter",'%1..%2',010180D,TODAY);
                
                //MESSAGE('Report Date is %1',RepDate);
                IF JobsPointVal.FIND('-') THEN
                REPEAT
                  //JobsPointVal.CALCFIELDS(JobsPointVal.Points);
                  //IF JobsPointVal.Points <>0 THEN ; //MESSAGE('Val is %1',JobsPointVal.Points);
                  JobsPointVal."Points Sort Bay":= JobsPointVal.PointZ(JobsPointVal."No.",'',
                     JobsPointVal.GETFILTER("Date Filter"),'','','',JobsPointVal.Vessel);//JobsPointVal.Points;
                  JobsPointVal.MODIFY();
                UNTIL JobsPointVal.NEXT=0;
                */  //#1

            end;
        }
        dataitem(Job; Job)
        {
            DataItemTableView = SORTING("Points Sort Bay", Status) ORDER(Descending) WHERE("No." = FILTER('I' .. 'K'));
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(Consolidated_Daily_Points_Report_As_On_____FORMAT_Workdat_0_4_; 'Consolidated Daily Points Report As On : ' + Format(Workdat, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PageNo)
            {
            }
            column(USERID; UserId)
            {
            }
            column(Day_of_Tide____DOT; 'Day of Tide: ' + DOT)
            {
            }
            column(Countz; Countz)
            {
            }
            column(Desc; Desc)
            {
            }
            column(Job__Fishing_Country_Code_; "Fishing Country Code")
            {
            }
            column(Skipper; Skipper)
            {
            }
            column(SeArea; SeArea)
            {
            }
            column(FishTemp; FishTemp)
            {
            }
            column(pts_1_; pts[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_3_; pts[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_2_; pts[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_7_; pts[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_8_; pts[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_9_; pts[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_4_; pts[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_5_; pts[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_6_; pts[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaDays; SeaDays)
            {
            }
            column(TotPts_1_; TotPts[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPts_2_; TotPts[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPts_3_; TotPts[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPts_4_; TotPts[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPts_5_; TotPts[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPts_6_; TotPts[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPts_7_; TotPts[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPts_8_; TotPts[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPts_9_; TotPts[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPtsA_1_; TotPtsA[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPtsA_2_; TotPtsA[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPtsA_3_; TotPtsA[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPtsA_4_; TotPtsA[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPtsA_5_; TotPtsA[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPtsA_6_; TotPtsA[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPtsA_7_; TotPtsA[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPtsA_8_; TotPtsA[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(TotPtsA_9_; TotPtsA[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaDaysTot; SeaDaysTot)
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaTempA; SeaTempA)
            {
                DecimalPlaces = 0 : 0;
            }
            column(SeaDayA; SeaDayA)
            {
                //DecimalPlaces =
            }
            column(OperationCaption; OperationCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Sr__No_Caption; Sr__No_CaptionLbl)
            {
            }
            column(VesselCaption; VesselCaptionLbl)
            {
            }
            column(CountryCaption; CountryCaptionLbl)
            {
            }
            column(SkipperCaption; SkipperCaptionLbl)
            {
            }
            column(Sea_DaysCaption; Sea_DaysCaptionLbl)
            {
            }
            column(AreaCaption; AreaCaptionLbl)
            {
            }
            column(Fish_Hold_TempCaption; Fish_Hold_TempCaptionLbl)
            {
            }
            column(Shrimp_PtsCaption; Shrimp_PtsCaptionLbl)
            {
            }
            column(Fish_PtsCaption; Fish_PtsCaptionLbl)
            {
            }
            column(PtsCaption; PtsCaptionLbl)
            {
            }
            column(Fish_PtsCaption_Control1000000010; Fish_PtsCaption_Control1000000010Lbl)
            {
            }
            column(Shrimp_PtsCaption_Control1000000011; Shrimp_PtsCaption_Control1000000011Lbl)
            {
            }
            column(Day_PtsCaption; Day_PtsCaptionLbl)
            {
            }
            column(Fish_PtsCaption_Control1000000016; Fish_PtsCaption_Control1000000016Lbl)
            {
            }
            column(Shrimp_PtsCaption_Control1000000017; Shrimp_PtsCaption_Control1000000017Lbl)
            {
            }
            column(PtsCaption_Control1000000031; PtsCaption_Control1000000031Lbl)
            {
            }
            column(DaysCaption; DaysCaptionLbl)
            {
            }
            column(CumulativeCaption; CumulativeCaptionLbl)
            {
            }
            column(AverageCaption; AverageCaptionLbl)
            {
            }
            column(AVERAGECaption_Control1000000043; AVERAGECaption_Control1000000043Lbl)
            {
            }
            column(TOTALCaption; TOTALCaptionLbl)
            {
            }
            column(Job_No_; "No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                if RES.Get(Job."Person Responsible") then Skipper := RES.Name;
                /*
                IF RepDate<>0D THEN Workdat:=RepDate
                ELSE Workdat:=TODAY;
                
                j:=1;
                REPEAT
                 pts[j]:=0;
                 j:=j+1;
                UNTIL j = 10;
                
                job1.GET(Job."No.");
                job1.SETRANGE(job1."Task Filter");
                job1.SETRANGE(job1."Date Filter");
                
                JobLdgr.SETCURRENTKEY(JobLdgr."Job No.",JobLdgr."Posting Date");
                JobLdgr.SETFILTER(JobLdgr."Job No.",job1."No.");
                JobLdgr.SETRANGE(JobLdgr."Posting Date",0D,Workdat);
                JobLdgr.SETRANGE(JobLdgr.Type,0,1);
                IF JobLdgr.FIND('+') THEN
                BEGIN
                  SeTemp:= JobLdgr."Step Code";
                  SeArea:=JobLdgr."Phase Code";
                END
                ELSE
                BEGIN
                  SeTemp:='';
                  SeArea:='';
                END;
                
                // get fish holding temperature
                DailyOper.SETRANGE(DailyOper.Date,0D,Workdat);
                DailyOper.SETRANGE(DailyOper."Job No.",job1."No.");
                IF DailyOper.FIND('+') THEN
                  FishTemp := DailyOper."Fish Hold Temp"
                ELSE
                  FishTemp := 0;
                
                // Cumulative
                //MESSAGE('Date is %1',Workdat);
                job1.SETRANGE(job1."Date Filter",0D,Workdat);
                //job1.CALCFIELDS(job1.Points);
                pts[6]:= job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','','',job1.Vessel);  //job1.Points;
                
                job1.SETFILTER(job1."Task Filter",'SHR');
                //job1.CALCFIELDS(job1.Points);
                pts[5]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','SHR','',job1.Vessel);//job1.Points;
                
                job1.SETFILTER(job1."Task Filter",'FIS');
                //job1.CALCFIELDS(job1.Points);
                pts[4]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','FIS','',job1.Vessel); //job1.Points;
                
                //Average
                //AAA* IF  job1."Starting Date"<>0D THEN SeaDays:=TODAY-job1."Starting Date" ELSE SeaDays:=0;
                IF job1."Starting Date"<>0D THEN SeaDays:=Workdat-job1."Starting Date" ELSE SeaDays:=0;
                IF SeaDays<>0 THEN
                BEGIN
                  pts[9]:=pts[6]/SeaDays;
                  pts[8]:=pts[5]/SeaDays;
                  pts[7]:=pts[4]/SeaDays
                END;
                AvgPtSortBay:=pts[9];
                MODIFY;
                
                //Daily
                job1.SETFILTER(job1."Date Filter",'=%1',Workdat);
                job1.SETRANGE(job1."Task Filter");
                //job1.CALCFIELDS(job1.Points);
                pts[3]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','','',job1.Vessel);//job1.Points;
                
                job1.SETFILTER(job1."Task Filter",'SHR');
                //job1.CALCFIELDS(job1.Points);
                pts[2]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','SHR','',job1.Vessel);//job1.Points;
                
                job1.SETFILTER(job1."Task Filter",'FIS');
                //job1.CALCFIELDS(job1.Points);
                pts[1]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','FIS','',job1.Vessel);//job1.Points;
                
                //No Catch Record Exist
                job1.SETRANGE(job1."Task Filter");
                job1.SETRANGE(job1."Type Filter",0);
                job1.CALCFIELDS(job1.NoCatchExist);
                NoCatch:=job1.NoCatchExist;
                
                //SeaDaysTot:=SeaDaysTot+SeaDays;
                     */  //#1

            end;

            trigger OnPostDataItem()
            begin
                /*
                SETFILTER(AvgPtSortBay,'<>0');
                SETFILTER("Points Sort Bay",'<>0');
                SETRANGE("Fishing Country Code",'');
                //MESSAGE('Total no of Rec %1',COUNT);
                Medn:=ROUND(COUNT/2,1,'<');
                //Sort Data Based on Average Points
                SETCURRENTKEY(AvgPtSortBay);
                IF FIND('+') THEN;
                NEXT(-Medn);
                MednVoy[2]:="No.";
                
                {IF ((ROUND(COUNT/2,1,'>'))-(ROUND(COUNT/2,1,'<')))=0 THEN
                NEXT(-1);
                MednVoy[1]:="No.";
                //MESSAGE('Voyages are %1 and %2',MednVoy[1],MednVoy[2])
                }
                 */  //#1

            end;

            trigger OnPreDataItem()
            begin
                /*
                IF NOT Historical THEN SETRANGE(Status,2);
                SETFILTER(AvgPtSortBay,'<>0');
                IF FIND('-') THEN
                REPEAT
                  AvgPtSortBay:=0;
                  MODIFY();
                UNTIL NEXT=0;
                SETFILTER(AvgPtSortBay,'');
                IF FIND('-') THEN;
                  */  //#1

            end;
        }
        dataitem(Job2; Job)
        {
            DataItemTableView = SORTING("Fishing Country Code", AvgPtSortBay) ORDER(Descending) WHERE("No." = FILTER('I' .. 'K'));
            column(Job2__Fishing_Country_Code_; "Fishing Country Code")
            {
            }
            column(Job2__Fishing_Country_Code__Control1000000060; "Fishing Country Code")
            {
            }
            column(Job2_Vessel; Vessel)
            {
            }
            column(Job2__No__; "No.")
            {
            }
            column(CountJ; CountJ)
            {
            }
            column(pts_1__Control1000000064; pts[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_2__Control1000000065; pts[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_3__Control1000000066; pts[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_4__Control1000000067; pts[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_5__Control1000000068; pts[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_6__Control1000000069; pts[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_7__Control1000000070; pts[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_8__Control1000000071; pts[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_9__Control1000000072; pts[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(UPPERCASE_FishCountry_; UpperCase(FishCountry))
            {
            }
            column(CountJ_Control1000000050; CountJ)
            {
            }
            column(pts_1__Control1000000051; pts[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_2__Control1000000052; pts[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_3__Control1000000053; pts[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_4__Control1000000054; pts[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_5__Control1000000055; pts[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_6__Control1000000056; pts[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_7__Control1000000057; pts[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_8__Control1000000058; pts[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_9__Control1000000059; pts[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_10_; pts[10])
            {
                DecimalPlaces = 0 : 0;
            }
            column(AverageCaption_Control1000000075; AverageCaption_Control1000000075Lbl)
            {
            }
            column(Job2__Fishing_Country_Code_Caption; FieldCaption("Fishing Country Code"))
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*
                IF RepDate<>0D THEN Workdat:=RepDate
                ELSE Workdat:=TODAY;
                
                j:=1;
                REPEAT
                 pts[j]:=0;
                 j:=j+1;
                UNTIL j = 11;
                
                job3.GET(Job2."No.");
                job3.SETRANGE(job3."Task Filter");
                job3.SETRANGE(job3."Date Filter");
                
                JobLdgr.SETCURRENTKEY(JobLdgr."Job No.",JobLdgr."Posting Date");
                JobLdgr.SETFILTER(JobLdgr."Job No.",job3."No.");
                JobLdgr.SETRANGE(JobLdgr."Posting Date",0D,Workdat);
                JobLdgr.SETRANGE(JobLdgr.Type,0,1);
                IF JobLdgr.FIND('+') THEN
                BEGIN
                  SeTemp:= JobLdgr."Step Code";
                  SeArea:=JobLdgr."Phase Code";
                END
                ELSE
                BEGIN
                  SeTemp:='';
                  SeArea:='';
                END;
                
                
                // Cumulative
                //MESSAGE('Date is %1',Workdat);
                job3.SETRANGE(job3."Date Filter",0D,Workdat);
                //job3.CALCFIELDS(job3.Points);
                pts[6]:=job3.PointZ(job3."No.",'',job3.GETFILTER("Date Filter"),'','','',job3.Vessel);//job3.Points;
                
                
                job3.SETFILTER(job3."Task Filter",'SHR');
                //job3.CALCFIELDS(job3.Points);
                pts[5]:=job3.PointZ(job3."No.",'',job3.GETFILTER("Date Filter"),'','SHR','',job3.Vessel);//job3.Points;
                
                job3.SETFILTER(job3."Task Filter",'FIS');
                //job3.CALCFIELDS(job3.Points);
                pts[4]:=job3.PointZ(job3."No.",'',job3.GETFILTER("Date Filter"),'','FIS','',job3.Vessel);//job3.Points;
                
                
                //Average
                //AAA* IF  job3."Starting Date"<>0D THEN SeaDays:=TODAY-job3."Starting Date" ELSE SeaDays:=0;
                IF job3."Starting Date"<>0D THEN SeaDays:=Workdat-job3."Starting Date" ELSE SeaDays:=0;
                IF SeaDays<>0 THEN
                BEGIN
                  pts[9]:=pts[6]/SeaDays;
                  pts[8]:=pts[5]/SeaDays;
                  pts[7]:=pts[4]/SeaDays
                END;
                
                //Daily
                job3.SETFILTER(job3."Date Filter",'=%1',Workdat);
                job3.SETRANGE(job3."Task Filter");
                //job3.CALCFIELDS(job3.Points);
                pts[3]:=job3.PointZ(job3."No.",'',job3.GETFILTER("Date Filter"),'','','',job3.Vessel);//job3.Points;
                
                job3.SETFILTER(job3."Task Filter",'SHR');
                //job3.CALCFIELDS(job3.Points);
                pts[2]:=job3.PointZ(job3."No.",'',job3.GETFILTER("Date Filter"),'','SHR','',job3.Vessel);//job3.Points;
                
                job3.SETFILTER(job3."Task Filter",'FIS');
                //job3.CALCFIELDS(job3.Points);
                pts[1]:=job3.PointZ(job3."No.",'',job3.GETFILTER("Date Filter"),'','FIS','',job3.Vessel);//job3.Points;
                
                IF pts[3]=0 THEN CurrReport.SKIP;
                
                //No Catch Record Exist
                job3.SETRANGE(job3."Task Filter");
                job3.SETRANGE(job3."Type Filter",0);
                job3.CALCFIELDS(job3.NoCatchExist);
                NoCatch:=job3.NoCatchExist;
                
                pts[10]:=SeaDays;
                
                */  //#1

            end;

            trigger OnPreDataItem()
            begin
                /*
                IF NOT Historical THEN SETRANGE(Status,2);
                LastFieldNo := FIELDNO("Fishing Country Code");
                //Job2.SETFILTER(Job2."Date Filter",'%1',040104D);
                j:=1;  REPEAT  CurrReport.CREATETOTALS(pts[j]); j:=j+1;  UNTIL j = 11;
                 */  //#1

            end;
        }
        dataitem(VoyMedian; Job)
        {
            DataItemTableView = SORTING("Points Sort Bay", Status) ORDER(Descending) WHERE("No." = FILTER('I' .. 'K'));
            column(Desc_Control1000000077; Desc)
            {
            }
            column(VoyMedian__Fishing_Country_Code_; "Fishing Country Code")
            {
            }
            column(Skipper_Control1000000079; Skipper)
            {
            }
            column(SeaDays_Control1000000080; SeaDays)
            {
            }
            column(SeArea_Control1000000081; SeArea)
            {
            }
            column(pts_1__Control1000000082; pts[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_2__Control1000000083; pts[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_3__Control1000000084; pts[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_4__Control1000000085; pts[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_5__Control1000000086; pts[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_6__Control1000000087; pts[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_7__Control1000000088; pts[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_8__Control1000000089; pts[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_9__Control1000000090; pts[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_1__Control1000000091; pts[1])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_2__Control1000000092; pts[2])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_3__Control1000000093; pts[3])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_4__Control1000000094; pts[4])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_5__Control1000000095; pts[5])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_6__Control1000000096; pts[6])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_7__Control1000000097; pts[7])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_8__Control1000000098; pts[8])
            {
                DecimalPlaces = 0 : 0;
            }
            column(pts_9__Control1000000099; pts[9])
            {
                DecimalPlaces = 0 : 0;
            }
            column(Median_NigeriaCaption; Median_NigeriaCaptionLbl)
            {
            }
            column(VoyMedian_No_; "No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                /*
                job1.GET("No.");
                job1.SETRANGE(job1."Task Filter");
                job1.SETRANGE(job1."Date Filter");
                
                JobLdgr.SETCURRENTKEY(JobLdgr."Job No.",JobLdgr."Posting Date");
                JobLdgr.SETFILTER(JobLdgr."Job No.",job1."No.");
                JobLdgr.SETRANGE(JobLdgr."Posting Date",0D,Workdat);
                JobLdgr.SETRANGE(JobLdgr.Type,0,1);
                IF JobLdgr.FIND('+') THEN
                BEGIN
                  SeTemp:= JobLdgr."Step Code";
                  SeArea:=JobLdgr."Phase Code";
                END
                ELSE
                BEGIN
                  SeTemp:='';
                  SeArea:='';
                END;
                
                
                // Cumulative
                //MESSAGE('Date is %1',Workdat);
                job1.SETRANGE(job1."Date Filter",0D,Workdat);
                //job1.CALCFIELDS(job1.Points);
                pts[6]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','','',job1.Vessel);//job1.Points;
                
                job1.SETFILTER(job1."Task Filter",'SHR');
                //job1.CALCFIELDS(job1.Points);
                pts[5]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','SHR','',job1.Vessel);//job1.Points;
                
                job1.SETFILTER(job1."Task Filter",'FIS');
                //job1.CALCFIELDS(job1.Points);
                pts[4]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','FIS','',job1.Vessel);//job1.Points;
                
                //Average
                //AAA* IF  job1."Starting Date"<>0D THEN SeaDays:=TODAY-job1."Starting Date" ELSE SeaDays:=0;
                IF job1."Starting Date"<>0D THEN SeaDays:=Workdat-job1."Starting Date" ELSE SeaDays:=0;
                IF SeaDays<>0 THEN
                BEGIN
                  pts[9]:=pts[6]/SeaDays;
                  pts[8]:=pts[5]/SeaDays;
                  pts[7]:=pts[4]/SeaDays
                END;
                
                //Daily
                job1.SETFILTER(job1."Date Filter",'=%1',Workdat);
                job1.SETRANGE(job1."Task Filter");
                //job1.CALCFIELDS(job1.Points);
                pts[3]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','','',job1.Vessel);//job1.Points;
                
                job1.SETFILTER(job1."Task Filter",'SHR');
                //job1.CALCFIELDS(job1.Points);
                pts[2]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','SHR','',job1.Vessel);//job1.Points;
                
                job1.SETFILTER(job1."Task Filter",'FIS');
                //job1.CALCFIELDS(job1.Points);
                pts[1]:=job1.PointZ(job1."No.",'',job1.GETFILTER("Date Filter"),'','FIS','',job1.Vessel);//job1.Points;
                */  //#1

            end;

            trigger OnPreDataItem()
            begin
                /*
                IF NOT Historical THEN SETRANGE(Status,2);
                VoyMedian.SETFILTER(VoyMedian."No.",'%1|%2',MednVoy[1],MednVoy[2]);
                j:=1; REPEAT CurrReport.CREATETOTALS(pts[j]);  j:=j+1; UNTIL j = 10;
                */  //#1

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
        job1: Record Job;
        JobLdgr: Record "Job Ledger Entry";
        DOTrec: Record "Day of Tide";
        JobsPointVal: Record Job;
        Resource: Record Resource;
        Loc: Record Location;
        NoCatch: Boolean;
        Eval: Boolean;
        SeaDays: Integer;
        I: Integer;
        j: Integer;
        k: Integer;
        Countz: Integer;
        pts: array[10] of Decimal;
        TotPts: array[9] of Decimal;
        TotPtsA: array[9] of Decimal;
        TotPtsAvg: array[9] of Decimal;
        SeaDaysTot: Decimal;
        SeaDayA: Integer;
        CountCum: array[9] of Decimal;
        SeaTemp: Decimal;
        SeaTempA: Decimal;
        SeTempVal: Decimal;
        Skipper: Text[30];
        Desc: Text[30];
        SeTemp: Code[10];
        SeArea: Code[10];
        DOT: Code[15];
        Workdat: Date;
        RepDate: Date;
        "------------": Integer;
        Country: Record "Country/Region";
        job3: Record Job;
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        FishCountry: Text[100];
        Medn: Decimal;
        MednVoy: array[2] of Code[10];
        CountJ: Integer;
        CountJx: Integer;
        PntsAvg: Decimal;
        Historical: Boolean;
        HistoricalData: Record "Entry/Exit Point";
        DailyOper: Record "Operation Daily Radio";
        FishTemp: Decimal;
        OperationCaptionLbl: Label 'Operation';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Sr__No_CaptionLbl: Label 'Sr. No.';
        VesselCaptionLbl: Label 'Vessel';
        CountryCaptionLbl: Label 'Country';
        SkipperCaptionLbl: Label 'Skipper';
        Sea_DaysCaptionLbl: Label 'Sea Days';
        AreaCaptionLbl: Label 'Area';
        Fish_Hold_TempCaptionLbl: Label 'Fish Hold Temp';
        Shrimp_PtsCaptionLbl: Label 'Shrimp Pts';
        Fish_PtsCaptionLbl: Label 'Fish Pts';
        PtsCaptionLbl: Label 'Pts';
        Fish_PtsCaption_Control1000000010Lbl: Label 'Fish Pts';
        Shrimp_PtsCaption_Control1000000011Lbl: Label 'Shrimp Pts';
        Day_PtsCaptionLbl: Label 'Day Pts';
        Fish_PtsCaption_Control1000000016Lbl: Label 'Fish Pts';
        Shrimp_PtsCaption_Control1000000017Lbl: Label 'Shrimp Pts';
        PtsCaption_Control1000000031Lbl: Label 'Pts';
        DaysCaptionLbl: Label 'Days';
        CumulativeCaptionLbl: Label 'Cumulative';
        AverageCaptionLbl: Label 'Average';
        AVERAGECaption_Control1000000043Lbl: Label 'AVERAGE';
        TOTALCaptionLbl: Label 'TOTAL';
        AverageCaption_Control1000000075Lbl: Label 'Average';
        Median_NigeriaCaptionLbl: Label 'Median Nigeria';
        RES: Record Resource;
}

