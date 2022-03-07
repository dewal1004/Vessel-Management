pageextension 50318 pageextension50318 extends "Item Availability by Timeline"
{

    //Unsupported feature: Code Modification on "CreateTimelineEvents(PROCEDURE 17)".

    //procedure CreateTimelineEvents();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    Reset;
    DeleteAll;
    TempTimelineEvent.DeleteAll;
    Item.SetRange("Drop Shipment Filter",false);
    CalcItemAvailTimeline.Initialize(Item,ForecastName,IncludeBlanketOrders,0D,true);
    CalcItemAvailTimeline.CreateTimelineEvents(TempTimelineEvent);
    ExportDataToTimeline(TempTimelineEvent);
    LastUpdateTime := CurrentDateTime;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..3

    #5..8
    */
    //end;
}

