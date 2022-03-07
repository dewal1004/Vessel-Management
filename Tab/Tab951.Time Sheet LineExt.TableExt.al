tableextension 50280 tableextension50280 extends "Time Sheet Line"
{
    fields
    {

        //Unsupported feature: Code Modification on ""Job No."(Field 6).OnValidate".

        //trigger "(Field 6)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
        /*
        if "Job No." <> '' then begin
          TestField(Type,Type::Job);
          Job.Get("Job No.");
          if Job.Blocked = Job.Blocked::All then
            Job.TestBlocked;
        end;
        Validate("Job Task No.",'');
        UpdateApproverID;
        UpdateJobId;
        */
        //end;
        //>>>> MODIFIED CODE:
        //begin
        /*
        #1..3
          if Job.Blocked =Job.Blocked::All then
        #5..9
        */
        //end;
    }
}

