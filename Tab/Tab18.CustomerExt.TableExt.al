tableextension 50208 tableextension50208 extends Customer
{
    fields
    {
        //modify("Shipping Advice")
        //{
           //Option(Complete,Partial);

            //Unsupported feature: Property Modification (OptionString) on ""Shipping Advice"(Field 5750)".

       // }
        field(50300; "Operation Type"; Boolean)
        {
            Description = 'Customer Type is Operation : Customers to be listed on Operation (Job) Card';
            InitValue = false;
        }
        field(50301; "Entry Type Filter"; Option)
        {
            Caption = 'Entry Type';
            Description = 'Balace at date rep.';
            FieldClass = FlowFilter;
            OptionCaption = ' ,Initial Entry,Application,Unrealized Loss,Unrealized Gain,Realized Loss,Realized Gain,Payment Discount,Payment Discount (VAT Excl.),Payment Discount (VAT Adjustment),Appln. Rounding,Correction of Remaining Amount';
            OptionMembers = " ","Initial Entry",Application,"Unrealized Loss","Unrealized Gain","Realized Loss","Realized Gain","Payment Discount","Payment Discount (VAT Excl.)","Payment Discount (VAT Adjustment)","Appln. Rounding","Correction of Remaining Amount";
        }
    }
    keys
    {
        key(Key1; "Operation Type")
        {
        }
    }


    //Unsupported feature: Code Modification on "OnInsert".

    //trigger OnInsert()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if "No." = '' then begin
      SalesSetup.Get;
      SalesSetup.TestField("Customer Nos.");
    #4..8

    if (not (InsertFromContact or (InsertFromTemplate and (Contact <> '')) or IsTemporary)) or ForceUpdateContact then
      UpdateContFromCust.OnInsert(Rec);

    if "Salesperson Code" = '' then
      SetDefaultSalesperson;

    DimMgt.UpdateDefaultDim(
      DATABASE::Customer,"No.",
      "Global Dimension 1 Code","Global Dimension 2 Code");

    UpdateReferencedIds;
    SetLastModifiedDateTime;
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..11
    "Global Dimension 2 Code":='ATLANTIC';     //AAA - Oct 2002
    #12..19
    if "No." <> '' then
    "Shipping Advice" := "Shipping Advice"::Partial; //#1

    UpdateReferencedIds;
    SetLastModifiedDateTime;
    */
    //end;


    //Unsupported feature: Code Modification on "OnModify".

    //trigger OnModify()
    //>>>> ORIGINAL CODE:
    //begin
    /*
    UpdateReferencedIds;
    SetLastModifiedDateTime;
    if IsContactUpdateNeeded then begin
      Modify;
      UpdateContFromCust.OnModify(Rec);
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
      if Find then;
    end;
    */
    //end;

    //Unsupported feature: Property Modification (Fields) on "DropDown(FieldGroup 1)".

}

