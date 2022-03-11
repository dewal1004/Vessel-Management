report 50188 "Historical Daily Points Rep!"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report\Rdlc\HistoricalDailyPointsRep.rdlc';

    dataset
    {
        dataitem("Integer"; "Integer")
        {
            DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));

            trigger OnAfterGetRecord()
            begin
                //JobsPointVal.SETCURRENTKEY(JobsPointVal.Vessel,JobsPointVal.Status);
                //JobsPointVal.SETRANGE(JobsPointVal.Status,2);
                if RepDate <> 0D then
                    JobsPointVal.SetFilter(JobsPointVal."Posting Date Filter", '%1', RepDate)
                else
                    JobsPointVal.SetFilter(JobsPointVal."Posting Date Filter", '%1..%2', DMY2Date(1, 1, 1980), Today);

                //MESSAGE('Report Date is %1',RepDate);
                if JobsPointVal.Find('-') then
                    repeat
                        //JobsPointVal.CALCFIELDS(JobsPointVal.Points);
                        //IF JobsPointVal.Points <>0 THEN ; //MESSAGE('Val is %1',JobsPointVal.Points);
                        JobsPointVal."Points Sort Bay" := JobsPointVal.PointZ(JobsPointVal."No.", '',
                           JobsPointVal.GetFilter("Posting Date Filter"), '', '', '', JobsPointVal.Vessel);//JobsPointVal.Points;
                        JobsPointVal.Modify();
                    until JobsPointVal.Next = 0;
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
            column(SeTemp; SeTemp)
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
            column(Sea_Temp__CCaption; Sea_Temp__CCaptionLbl)
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
                if RepDate <> 0D then
                    Workdat := RepDate
                else
                    Workdat := Today;

                j := 1;
                repeat
                    pts[j] := 0;
                    j := j + 1;
                until j = 10;

                job1.Get(Job."No.");
                // job1.SETRANGE(job1."Posting Date Filter");

                JobLdgr.SetCurrentKey(JobLdgr."Job No.", JobLdgr."Posting Date");
                JobLdgr.SetFilter(JobLdgr."Job No.", job1."No.");
                JobLdgr.SetRange(JobLdgr."Posting Date", 0D, Workdat);
                JobLdgr.SetRange(JobLdgr.Type, 0, 1);
                if JobLdgr.Find('+') then begin
                    // SeTemp:= JobLdgr."Step Code";
                    // SeArea:=JobLdgr."Phase Code";
                end
                else begin
                    SeTemp := '';
                    SeArea := '';
                end;


                // Cumulative
                //MESSAGE('Date is %1',Workdat);
                job1.SetRange(job1."Posting Date Filter", 0D, Workdat);
                //job1.CALCFIELDS(job1.Points);
                pts[6] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', '', '', job1.Vessel);  //job1.Points;

                // 1#job1.SETFILTER(job1."Task Filter",'SHR');
                //job1.CALCFIELDS(job1.Points);
                pts[5] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', 'SHR', '', job1.Vessel);//job1.Points;

                // job1.SETFILTER(job1."Task Filter",'FIS');
                //job1.CALCFIELDS(job1.Points);
                pts[4] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', 'FIS', '', job1.Vessel); //job1.Points;

                //Average
                //AAA* IF  job1."Starting Date"<>0D THEN SeaDays:=TODAY-job1."Starting Date" ELSE SeaDays:=0;
                if job1."Starting Date" <> 0D then SeaDays := Workdat - job1."Starting Date" else SeaDays := 0;
                if SeaDays <> 0 then begin
                    pts[9] := pts[6] / SeaDays;
                    pts[8] := pts[5] / SeaDays;
                    pts[7] := pts[4] / SeaDays
                end;

                //Daily
                job1.SetFilter(job1."Posting Date Filter", '=%1', Workdat);
                //job1.SETRANGE(job1."Task Filter");
                //job1.CALCFIELDS(job1.Points);
                pts[3] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', '', '', job1.Vessel);//job1.Points;

                //job1.SETFILTER(job1."Task Filter",'SHR');
                //job1.CALCFIELDS(job1.Points);
                pts[2] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', 'SHR', '', job1.Vessel);//job1.Points;

                //job1.SETFILTER(job1."Task Filter",'FIS');
                //job1.CALCFIELDS(job1.Points);
                pts[1] := job1.PointZ(job1."No.", '', job1.GetFilter("Posting Date Filter"), '', 'FIS', '', job1.Vessel);//job1.Points;

                //No Catch Record Exist
                // job1.SETRANGE(job1."Task Filter");
                //  job1.SETRANGE(job1."Type Filter",0);
                job1.CalcFields(job1.NoCatchExist);
                NoCatch := job1.NoCatchExist;

                //SeaDaysTot:=SeaDaysTot+SeaDays;
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
        pts: array[9] of Decimal;
        TotPts: array[9] of Decimal;
        TotPtsA: array[9] of Decimal;
        TotPtsAvg: array[9] of Decimal;
        SeaDaysTot: Decimal;
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
        OperationCaptionLbl: Label 'Operation';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Sr__No_CaptionLbl: Label 'Sr. No.';
        VesselCaptionLbl: Label 'Vessel';
        CountryCaptionLbl: Label 'Country';
        SkipperCaptionLbl: Label 'Skipper';
        Sea_DaysCaptionLbl: Label 'Sea Days';
        AreaCaptionLbl: Label 'Area';
        Sea_Temp__CCaptionLbl: Label 'Sea Temp. C';
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
}

