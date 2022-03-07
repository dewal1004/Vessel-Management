tableextension 50312 tableextension50312 extends "Transfer Line"
{
    fields
    {

        //Unsupported feature: Code Modification on ""Item No."(Field 3).OnValidate".

        //trigger "(Field 3)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        TestField("Quantity Shipped",0);
        if CurrFieldNo <> 0 then
          TestStatusOpen;
        #4..39

        CreateDim(DATABASE::Item,"Item No.");
        DimMgt.UpdateGlobalDimFromDimSetID("Dimension Set ID","Shortcut Dimension 1 Code","Shortcut Dimension 2 Code");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..42

        //Customized
        if "Item No."<>'' then
        begin
          ItemRec.Get("Item No.");
          ItemLedgLn.SetCurrentKey(ItemLedgLn."Entry Type",ItemLedgLn."Item No.",ItemLedgLn."Posting Date",ItemLedgLn."Location Code");
          ItemLedgLn.SetFilter(ItemLedgLn."Entry Type",'4');
          ItemLedgLn.SetFilter(ItemLedgLn."Item No.","Item No.");
          ItemLedgLn.SetFilter(ItemLedgLn."Location Code","Transfer-to Code");
          if ItemLedgLn.FindLast then
          begin
            "Last Issued Date":=ItemLedgLn."Posting Date";
            "Last Issued Qty.":=Abs(ItemLedgLn.Quantity);
          end
          else
          begin
            "Last Issued Date":=0D;
            "Last Issued Qty.":=0;
          end;
        end
        else
          begin
            "Last Issued Date":=0D;
            "Last Issued Qty.":=0;
          end;
        // Customized
        */
        //end;


        //Unsupported feature: Code Modification on ""Qty. to Receive"(Field 7).OnValidate".

        //trigger  to Receive"(Field 7)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        GetLocation("Transfer-to Code");
        if CurrFieldNo <> 0 then begin
          if Location."Require Receive" and
             ("Qty. to Receive" <> 0)
          then
            CheckWarehouse("Transfer-to Code",true);
          WhseValidateSourceLine.TransLineVerifyChange(Rec,xRec);
        end;

        GetTransferHeaderNoVerification;

        if not TransHeader."Direct Transfer" and ("Direct Transfer" = xRec."Direct Transfer") then
        #13..16
                "Qty. in Transit")
            else
              Error(Text009);
        "Qty. to Receive (Base)" := CalcBaseQty("Qty. to Receive");
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..8
        #10..19
        {<<<<<<<}
        "Qty. to Receive (Base)" := CalcBaseQty("Qty. to Receive");
        */
        //end;
        field(50300; "Qty. Reqd."; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50301; ROB; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50302; "Last Issued Qty."; Decimal)
        {
            DecimalPlaces = 0 : 5;
        }
        field(50303; "Last Issued Date"; Date)
        {
            Editable = false;
        }
    }


    //Unsupported feature: Property Modification (Id) on "UOMMgt(Variable 1027)".

    //var
    //>>>> ORIGINAL VALUE:
    //UOMMgt : 1027;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //UOMMgt : 10027;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "ConfirmManagement(Variable 1029)".

    //var
    //>>>> ORIGINAL VALUE:
    //ConfirmManagement : 1029;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //ConfirmManagement : 10029;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "AnotherItemWithSameDescrQst(Variable 1026)".

    //var
    //>>>> ORIGINAL VALUE:
    //AnotherItemWithSameDescrQst : 1026;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //AnotherItemWithSameDescrQst : 10026;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "StatusCheckSuspended(Variable 1028)".

    //var
    //>>>> ORIGINAL VALUE:
    //StatusCheckSuspended : 1028;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //StatusCheckSuspended : 10028;
    //Variable type has not been exported.

    var
        ItemRec: Record Item;
        ItemLedgLn: Record "Item Ledger Entry";
        ItemTrackingLinesInbound: Page "Posted Item Tracking Lines";
        ItemTrackingLinesOutbound: Page "Serial No. Information List";
        ItemTrackingMgt: Codeunit "Item Tracking Management";
        "-------": Text[30];
}

