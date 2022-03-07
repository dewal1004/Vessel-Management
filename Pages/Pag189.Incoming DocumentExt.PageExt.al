pageextension 50256 pageextension50256 extends "Incoming Document"
{
    actions
    {
        modify(CreateManually)
        {

            //Unsupported feature: Property Modification (Level) on "CreateManually(Action 285)".


            //Unsupported feature: Property Modification (Image) on "CreateManually(Action 285)".

            PromotedCategory = Category5;
        }
        modify(ReceiveFromOCR)
        {
            Enabled = "OCR Status" = "OCR Status"::Sent;
        }
        moveafter(Setup; CreateManually)
    }

    //Unsupported feature: Code Modification on "OnAfterGetRecord".

    //trigger OnAfterGetRecord()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    URL := GetURL;
    ShowErrors;
    EnableReceiveFromOCR := WaitingToReceiveFromOCR;
    CurrPage.Editable(not Processed);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    URL := GetURL;
    ShowErrors;
    //EnableReceiveFromOCR := WaitingToReceiveFromOCR;
    CurrPage.Editable(not Processed);
    */
    //end;


    //Unsupported feature: Code Modification on "OnInit".

    //trigger OnInit()
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    IsDataExchTypeEditable := true;
    EnableReceiveFromOCR := WaitingToReceiveFromOCR;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    IsDataExchTypeEditable := true;
    */
    //end;
}

