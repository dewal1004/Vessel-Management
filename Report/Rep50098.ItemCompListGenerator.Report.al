report 50098 "Item Comp List Generator"
{
    // Caught Item category= C
    DefaultLayout = RDLC;
    RDLCLayout = './ItemCompListGenerator.rdlc';


    dataset
    {
        dataitem("Unit of Measure"; "Unit of Measure")
        {
            DataItemTableView = WHERE ("Catch Code" = FILTER (<> ''));
            RequestFilterFields = "Code";
            column(Unit_of_Measure_Code; Code)
            {
            }
            dataitem(Item; Item)
            {
                DataItemTableView = SORTING ("No.");
                RequestFilterFields = "No.";
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
                column(Item__No__; "No.")
                {
                }
                column(Item_Description; Description)
                {
                }
                column(ItemCaption; ItemCaptionLbl)
                {
                }
                column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
                {
                }
                column(Item__No__Caption; FieldCaption("No."))
                {
                }
                column(Item_DescriptionCaption; FieldCaption(Description))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    /*
                    //Item.Class:='C';
                    ItemsList.INIT;
                    ItemsList:=Item;
                    ItemsList."No.":=Item."No."+"Unit of Measure"."Catch Code"+'P';
                    IF ItemsList.Description='_' THEN ItemsList.Description:=ItemsList.Description ELSE
                    ItemsList.Description:=Item.Description+' '+"Unit of Measure".Code+' '+'P';
                    ItemsList."Description 2":="Unit of Measure".Code+'-'+'Prim 7 Star';
                    ItemsList.ProdCd:=Item."No.";
                    IF EVALUATE(ItemsList."S/No.",Item."Inventory Posting Group") THEN;
                    IF NewClass='' THEN ItemsList.Class:='S' ELSE ItemsList.Class:=NewClass;  //Sea  Catches
                    ItemsList.Brand:='P';
                    ItemsList.Pack:="Unit of Measure"."Catch Code";
                    IF NOT ItemsList.INSERT THEN ItemsList.MODIFY;
                    ValidateItemUOM(ItemsList."No.");
                    ItemsList."No.":=Item."No."+"Unit of Measure"."Catch Code"+'K';
                    IF ItemsList.Description='_' THEN ItemsList.Description:=ItemsList.Description ELSE
                    ItemsList.Description:=Item.Description+' '+"Unit of Measure".Code+' '+'K';
                    ItemsList."Description 2":="Unit of Measure".Code+'-'+'Krustasud';
                    ItemsList.Brand:='K';
                    ItemsList.Pack:="Unit of Measure"."Catch Code";
                    IF NOT ItemsList.INSERT THEN ItemsList.MODIFY;
                    ValidateItemUOM(ItemsList."No.");
                    */  //#1

                end;
            }
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
        ItemsList: Record Item;
        ItemUOM: Record "Item Unit of Measure";
        NewClass: Code[10];
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';

    [Scope('Internal')]
    procedure ValidateItemUOM(Itemsno: Code[10])
    begin
        ItemUOM.Init;
        ItemUOM."Item No." := Itemsno;
        ItemUOM.Code := 'KG';
        ItemUOM."Qty. per Unit of Measure" := 1;
        if not ItemUOM.Insert then ItemUOM.Modify;
    end;
}

