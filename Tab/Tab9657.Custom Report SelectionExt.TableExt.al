tableextension 50331 tableextension50331 extends "Custom Report Selection"
{
    fields
    {

        //Unsupported feature: Code Modification on ""Report ID"(Field 5).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        CalcFields("Report Caption");
        if ("Report ID" = 0) or ("Report ID" <> xRec."Report ID") then begin
          Validate("Custom Report Layout Code",'');
          Validate("Email Body Layout Code",'');
        end;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        Modify;
        #1..5
        */
        //end;
    }
}

