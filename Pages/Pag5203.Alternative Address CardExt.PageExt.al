pageextension 50305 pageextension50305 extends "Alternative Address Card"
{

    //Unsupported feature: Property Modification (Id) on "FormatAddress(Variable 1003)".

    //var
    //>>>> ORIGINAL VALUE:
    //FormatAddress : 1003;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //FormatAddress : 1004;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "IsCountyVisible(Variable 1002)".

    //var
    //>>>> ORIGINAL VALUE:
    //IsCountyVisible : 1002;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //IsCountyVisible : 1005;
    //Variable type has not been exported.

    var
        Mail: Codeunit Mail;
        Applicant: Record Applicants;


        //Unsupported feature: Code Insertion on "OnAfterGetCurrRecord".

        //trigger OnAfterGetCurrRecord()
        //begin
        /*
        SetRange(Code);
        */
        //end;


        //Unsupported feature: Code Modification on "Caption(PROCEDURE 1)".

        //procedure Caption();
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if Employee.Get("Employee No.") then
          exit("Employee No." + ' ' + Employee.FullName + ' ' + Code);

        exit(Text000);
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        {IF Employee.GET("Employee No.") THEN
          EXIT("Employee No." + ' ' + Employee.FullName + ' ' + Code);

        EXIT(Text000);}

        if Source=Source::" " then begin
        if Employee.Get("Employee No.") then
          exit("Employee No." + ' ' + Employee.FullName + ' ' + Code)
        else
          exit('untitled');
        end
        else
        begin
        if Applicant.Get("Employee No.") then
          exit("Employee No." + ' ' + Applicant.FullName + ' ' + Code)
        else
          exit('untitled');

        end;
        */
        //end;
}

