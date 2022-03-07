tableextension 50259 tableextension50259 extends "Bank Account"
{
    fields
    {

        //Unsupported feature: Code Insertion on ""Bank Acc. Posting Group"(Field 21)".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //begin
        /*
        if BankPGrp.Get("Bank Acc. Posting Group") then
          Category := BankPGrp.Category;
        */
        //end;
        field(50001; Category; Option)
        {
            OptionMembers = "Cash/Cheques","Local Bank","Foreign Bank","Term Deposit";
        }
    }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "No." = '' then begin
      GLSetup.Get;
      GLSetup.TestField("Bank Account Nos.");
      NoSeriesMgt.InitSeries(GLSetup."Bank Account Nos.",xRec."No. Series",0D,"No.","No. Series");
    end;

    if not InsertFromContact then
      UpdateContFromBank.OnInsert(Rec);

    DimMgt.UpdateDefaultDim(
      DATABASE::"Bank Account","No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..8
    "Global Dimension 2 Code":='ATLANTIC';     //AAA - Oct 2002
    #10..12
    */
    //end;


    //Unsupported feature: Code Modification on "OnModify".

    //trigger OnModify()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    "Last Date Modified" := Today;

    if IsContactUpdateNeeded then begin
      Modify;
      UpdateContFromBank.OnModify(Rec);
      if not Find then begin
        Reset;
        if Find then;
      end;
    end;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..5
    end;
    */
    //end;


    //Unsupported feature: Property Modification (Id) on "DataExchNotSetErr(Variable 1016)".

    //var
    //>>>> ORIGINAL VALUE:
    //DataExchNotSetErr : 1016;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DataExchNotSetErr : 10016;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "BankStmtScheduledDownloadDescTxt(Variable 1018)".

    //var
    //>>>> ORIGINAL VALUE:
    //BankStmtScheduledDownloadDescTxt : 1018;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //BankStmtScheduledDownloadDescTxt : 10018;
    //Variable type has not been exported.


    //Unsupported feature: Property Modification (Id) on "CancelTxt(Variable 1017)".

    //var
    //>>>> ORIGINAL VALUE:
    //CancelTxt : 1017;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //CancelTxt : 10017;
    //Variable type has not been exported.

    var
        BankPGrp: Record "Bank Account Posting Group";
        Text001: Label 'There may be a statement using the %1.\\';
        Text002: Label 'Do you want to change %1?';
}

