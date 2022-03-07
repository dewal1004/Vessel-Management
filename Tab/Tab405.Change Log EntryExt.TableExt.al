tableextension 50275 tableextension50275 extends "Change Log Entry"
{

    //Unsupported feature: Code Modification on "GetLocalValue(PROCEDURE 5)".

    //procedure GetLocalValue();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    // The culture neutral storage format was added simultaneously with the Record ID field
    HasCultureNeutralValues := Format("Record ID") <> '';
    AllObj.SetRange("Object Type",AllObj."Object Type"::Table);
    AllObj.SetRange("Object ID","Table No.");

    if not AllObj.IsEmpty and (Value <> '') and HasCultureNeutralValues then begin
      RecordRef.Open("Table No.");
      if RecordRef.FieldExist("Field No.") then begin
        FieldRef := RecordRef.Field("Field No.");
        if ChangeLogManagement.EvaluateTextToFieldRef(Value,FieldRef) then
          exit(Format(FieldRef.Value,0,1));
      end;
    end;

    exit(Value);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..7
      FieldRef := RecordRef.Field("Field No.");
      if ChangeLogManagement.EvaluateTextToFieldRef(Value,FieldRef) then
        exit(Format(FieldRef.Value,0,1));
    #13..15
    */
    //end;
}

