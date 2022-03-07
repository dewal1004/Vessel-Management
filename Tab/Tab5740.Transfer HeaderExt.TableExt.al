tableextension 50311 tableextension50311 extends "Transfer Header"
{
    fields
    {

        //Unsupported feature: Property Insertion (NotBlank) on ""Shortcut Dimension 2 Code"(Field 26)".


        //Unsupported feature: Property Insertion (Editable) on ""In-Transit Code"(Field 27)".


        //Unsupported feature: Code Modification on ""Transfer-from Code"(Field 2).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        IsHandled := false;
        #4..58
          end else
            "Transfer-from Code" := xRec."Transfer-from Code";
        end;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..61

        //AAA-14-Dec-01/STA
        "In-Transit Code":='OWN LOG.';
        if LocationRec.Get("Transfer-from Code") then
            "Shortcut Dimension 2 Code":=LocationRec."Shortcut Dimension 2 Code";
        //CALCFIELDS("Transfer From Voy. No.");
        */
        //end;


        //Unsupported feature: Code Modification on ""Transfer-to Code"(Field 11).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestStatusOpen;

        IsHandled := false;
        #4..56
          end else
            "Transfer-to Code" := xRec."Transfer-to Code";
        end;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..59

        //AAA-14-Dec-01/STA
        "In-Transit Code":='OWN LOG.';
        if LocationRec.Get("Transfer-to Code") then
            "New Shortcut Dimension 2 Code":=LocationRec."Shortcut Dimension 2 Code";
        //CALCFIELDS("Transfer To Voy. No.");
        */
        //end;


        //Unsupported feature: Code Modification on ""Shortcut Dimension 2 Code"(Field 26).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        ValidateShortcutDimCode(2,"Shortcut Dimension 2 Code");

        //AAA-Nov2001
        UpdateTransLines(Rec,FieldNo("Shortcut Dimension 2 Code"));
        */
        //end;
        field(50000; "Voyage No."; Code[10])
        {
            NotBlank = true;
            TableRelation = Job.Status WHERE (Vessel = FIELD ("Transfer-to Code"));
        }
        field(50001; "Req. Type"; Option)
        {
            OptionMembers = " ",DECK,ELEC,ENGR,LIFE,FSGR,LUBS,PACK,AGO;
        }
        field(50002; "New Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(50300; "Transfer From Voy. No."; Code[10])
        {
            TableRelation = Job WHERE (Vessel = FIELD ("Transfer-from Code"),
                                       "Voyage Ended" = CONST (false));
        }
        field(50301; "Transfer To Voy. No."; Code[10])
        {
            NotBlank = true;
            TableRelation = Job WHERE (Vessel = FIELD ("Transfer-to Code"),
                                       "Voyage Ended" = CONST (false));
        }
        field(50310; "Previous Voyage Expensed"; Boolean)
        {
        }
        field(50311; "Requested By"; Code[30])
        {
        }
        field(50312; "Received By"; Code[30])
        {
        }
        field(50314; "Issued By"; Code[30])
        {
        }
        field(50315; "Approved By"; Code[30])
        {
        }
        field(50316; "Transfer Type"; Option)
        {
            OptionMembers = Regular,Repairs,"Dry Dock","Over Hauling";
        }
    }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    GetInventorySetup;
    if "No." = '' then begin
      TestNoSeries;
      NoSeriesMgt.InitSeries(GetNoSeriesCode,xRec."No. Series","Posting Date","No.","No. Series");
    end;
    InitRecord;
    Validate("Shipment Date",WorkDate);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..7

    "Shortcut Dimension 2 Code":='ATLANTIC';

    if "No." <> '' then
    Validate("In-Transit Code",'OWN LOG.');//AAA
      //AAA
    */
    //end;


    //Unsupported feature: Code Modification on "UpdateTransLines(PROCEDURE 15)".

    //procedure UpdateTransLines();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    TransferLine.SetRange("Document No.","No.");
    TransferLine.SetFilter("Item No.",'<>%1','');
    if TransferLine.FindSet then begin
      TransferLine.LockTable;
      repeat
        case FieldID of
          FieldNo("In-Transit Code"):
            TransferLine.Validate("In-Transit Code",TransferHeader."In-Transit Code");
          FieldNo("Transfer-from Code"):
            begin
              TransferLine.Validate("Transfer-from Code",TransferHeader."Transfer-from Code");
              TransferLine.Validate("Shipping Agent Code",TransferHeader."Shipping Agent Code");
              TransferLine.Validate("Shipping Agent Service Code",TransferHeader."Shipping Agent Service Code");
              TransferLine.Validate("Shipment Date",TransferHeader."Shipment Date");
              TransferLine.Validate("Receipt Date",TransferHeader."Receipt Date");
              TransferLine.Validate("Shipping Time",TransferHeader."Shipping Time");
            end;
          FieldNo("Transfer-to Code"):
            begin
              TransferLine.Validate("Transfer-to Code",TransferHeader."Transfer-to Code");
              TransferLine.Validate("Shipping Agent Code",TransferHeader."Shipping Agent Code");
              TransferLine.Validate("Shipping Agent Service Code",TransferHeader."Shipping Agent Service Code");
              TransferLine.Validate("Shipment Date",TransferHeader."Shipment Date");
              TransferLine.Validate("Receipt Date",TransferHeader."Receipt Date");
              TransferLine.Validate("Shipping Time",TransferHeader."Shipping Time");
            end;
          FieldNo("Shipping Agent Code"):
            begin
              TransferLine.Validate("Shipping Agent Code",TransferHeader."Shipping Agent Code");
              TransferLine.BlockDynamicTracking(true);
              TransferLine.Validate("Shipping Agent Service Code",TransferHeader."Shipping Agent Service Code");
              TransferLine.Validate("Shipment Date",TransferHeader."Shipment Date");
              TransferLine.Validate("Receipt Date",TransferHeader."Receipt Date");
              TransferLine.Validate("Shipping Time",TransferHeader."Shipping Time");
              TransferLine.BlockDynamicTracking(false);
              TransferLine.DateConflictCheck;
            end;
          FieldNo("Shipping Agent Service Code"):
            begin
              TransferLine.BlockDynamicTracking(true);
              TransferLine.Validate("Shipping Agent Service Code",TransferHeader."Shipping Agent Service Code");
              TransferLine.Validate("Shipment Date",TransferHeader."Shipment Date");
              TransferLine.Validate("Receipt Date",TransferHeader."Receipt Date");
              TransferLine.Validate("Shipping Time",TransferHeader."Shipping Time");
              TransferLine.BlockDynamicTracking(false);
              TransferLine.DateConflictCheck;
            end;
          FieldNo("Shipment Date"):
            begin
              TransferLine.BlockDynamicTracking(true);
              TransferLine.Validate("Shipment Date",TransferHeader."Shipment Date");
              TransferLine.Validate("Receipt Date",TransferHeader."Receipt Date");
              TransferLine.Validate("Shipping Time",TransferHeader."Shipping Time");
              TransferLine.BlockDynamicTracking(false);
              TransferLine.DateConflictCheck;
            end;
          FieldNo("Receipt Date"),FieldNo("Shipping Time"):
            begin
              TransferLine.BlockDynamicTracking(true);
              TransferLine.Validate("Shipping Time",TransferHeader."Shipping Time");
              TransferLine.Validate("Receipt Date",TransferHeader."Receipt Date");
              TransferLine.BlockDynamicTracking(false);
              TransferLine.DateConflictCheck;
            end;
          FieldNo("Outbound Whse. Handling Time"):
            TransferLine.Validate("Outbound Whse. Handling Time",TransferHeader."Outbound Whse. Handling Time");
          FieldNo("Inbound Whse. Handling Time"):
            TransferLine.Validate("Inbound Whse. Handling Time",TransferHeader."Inbound Whse. Handling Time");
          FieldNo(Status):
            TransferLine.Validate(Status,TransferHeader.Status);
          FieldNo("Direct Transfer"):
            begin
              TransferLine.Validate("In-Transit Code",TransferHeader."In-Transit Code");
              TransferLine.Validate("Item No.",TransferLine."Item No.");
            end;
          else
            OnUpdateTransLines(TransferLine,TransferHeader,FieldID);
        end;
        TransferLine.Modify(true);
      until TransferLine.Next = 0;
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..16
             LocationRec.Get("Transfer-from Code");
             TransLine.Validate("Shortcut Dimension 2 Code",LocationRec."Shortcut Dimension 2 Code");  //AAA

           end;
    #18..33
             TransferLine.Validate("Shipping Time",TransferHeader."Shipping Time");
    #35..66
           FieldNo("Inbound Whse. Handling Time"):
            TransferLine.Validate("Inbound Whse. Handling Time",TransferHeader."Inbound Whse. Handling Time");
         FieldNo(Status):
          TransferLine.Validate("Variant Code",'ATLANTIC');
            //TransferLine.VALIDATE(Status,TransferHeader.Status);
    #71..77
     end;
    #79..81
    */
    //end;

    //Unsupported feature: Variable Insertion (Variable: ItemTrackingMgt) (VariableCollection) on "DeleteOneTransferOrder(PROCEDURE 4)".


    //Unsupported feature: Variable Insertion (Variable: WhseValidateSourceLine) (VariableCollection) on "DeleteOneTransferOrder(PROCEDURE 4)".


    local procedure InsertSpecialBomItem(ReqType: Integer; Seadays: Integer)
    begin

        TransLine.Init;
        TransLine."Document No." := "No.";
        TransLine."Line No." := 10000;

        if "Req. Type" > 0 then begin
            case ReqType of
                1:
                    if Seadays > 1 then
                        Supply := 'DECK' + '1' else
                        Supply := 'DECK';
                2:
                    Supply := 'ELEC';
                3:
                    if Seadays > 1 then
                        Supply := 'ENGR' + '1' else
                        Supply := 'ENGR';
                4:
                    Supply := 'LIFE';
                5:
                    Supply := 'FSGR';
                6:
                    if Seadays > 1 then
                        Supply := 'LUBS' + '1' else
                        Supply := 'LUBS';
                7:
                    Supply := 'PACK';
            end;
            TransLine.Validate(TransLine."Item No.", Supply);
            TransLine.Validate(TransLine."Qty. Reqd.", 1);
            TransLine."Shortcut Dimension 2 Code" := "Shortcut Dimension 2 Code";
        end;
        if not TransLine.Insert() then TransLine.Modify();
    end;

    local procedure GetLocation(InLocationCode: Code[10])
    begin
    end;

    var
        "--------------------": Text[30];
        LocationRec: Record Location;
        Jobs: Record Job;
        OnSeaDays: Integer;
        Supply: Code[20];
        "OWN LOG.": Option;
        TransLine: Record "Transfer Line";
}

