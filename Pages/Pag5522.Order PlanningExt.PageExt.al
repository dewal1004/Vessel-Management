pageextension 50316 pageextension50316 extends "Order Planning"
{

    //Unsupported feature: Code Modification on "ShowDemandOrder(PROCEDURE 15)".

    //procedure ShowDemandOrder();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    case "Demand Type" of
      DATABASE::"Sales Line":
        begin
          SalesHeader.Get("Demand Subtype","Demand Order No.");
          case SalesHeader."Document Type" of
            SalesHeader."Document Type"::Order:
              PAGE.Run(PAGE::"Sales Order",SalesHeader);
            SalesHeader."Document Type"::"Return Order":
              PAGE.Run(PAGE::"Sales Return Order",SalesHeader);
          end;
    #11..45
          end;
        end;
    end;

    OnAfterShowDemandOrder(Rec);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..6
            PAGE.Run(PAGE::"Sales Order",SalesHeader);
    #8..48
    OnAfterShowDemandOrder(Rec);
    */
    //end;
}

