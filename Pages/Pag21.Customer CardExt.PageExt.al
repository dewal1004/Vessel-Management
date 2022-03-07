pageextension 50209 pageextension50209 extends "Customer Card"
{
    layout
    {

        //Unsupported feature: Code Modification on ""No."(Control 2).OnAssistEdit".

        //trigger "(Control 2)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if AssistEdit(xRec) then
          CurrPage.Update;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {
        IF AssistEdit(xRec) THEN
          CurrPage.UPDATE;
        IF "No." <> '' THEN
        "Shipping Advice" := "Shipping Advice"::Complete;//srk
        } //AAA
        */
        //end;
       ///Sh modify("VAT Registration No.")
        ///Sh {
         ///Sh   Visible = false;
        }


        //Unsupported feature: Code Insertion on ""Shipping Advice"(Control 123)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*
        {
        IF "No." <> '' THEN
        "Shipping Advice" := "Shipping Advice"::Complete;//srk
        } //AAA
        */
        //end;
        addafter("Bill-to Customer No.")
        {
            field("VAT Registration No."; "VAT Registration No.")
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the customer''s VAT registration number for customers in EU countries/regions.';
            }
        }
    }
    actions
    {
        addafter("Report Customer - Balance to Date")
        {
            action(test)
            {
                Promoted = true;
                PromotedCategory = Category6;
                PromotedIsBig = true;
                RunObject = Page "Customer Card";
            }
        }
    }
}

