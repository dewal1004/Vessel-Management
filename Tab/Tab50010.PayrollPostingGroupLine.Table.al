table 50010 "Payroll-Posting Group Line."
{
    // Created           : FTN, 14/3/93
    // File name         : KI03 P.BookGrps Line
    // Comments          : The Header card that is to be used to enter the detail
    //                     lines for booking groups
    // File details      : Primary Key is;
    //                      Booking Group, E/D Code
    //                   : Relations;
    //                      To E/D File
    //                      To Finance Account


    fields
    {
        field(1; "Posting Group"; Code[20])
        {
            Editable = true;
            NotBlank = true;
        }
        field(2; "E/D Code"; Code[20])
        {
            NotBlank = true;
            TableRelation = "Payroll-E/D Codes.";
        }
        field(3; "Debit Account No."; Code[20])
        {
            TableRelation = IF ("Debit Acc. Type" = CONST (Finance)) "G/L Account"
            ELSE
            IF ("Debit Acc. Type" = CONST (Customer)) Customer
            ELSE
            IF ("Debit Acc. Type" = CONST (Supplier)) Vendor;
        }
        field(4; "Credit Account No."; Code[20])
        {
            TableRelation = IF ("Credit Acc. Type" = CONST (Finance)) "G/L Account"
            ELSE
            IF ("Credit Acc. Type" = CONST (Customer)) Customer
            ELSE
            IF ("Credit Acc. Type" = CONST (Supplier)) Vendor;
        }
        field(5; "Debit Acc. Type"; Option)
        {
            OptionMembers = Finance,Customer,Supplier;
        }
        field(6; "Credit Acc. Type"; Option)
        {
            OptionMembers = Finance,Customer,Supplier;
        }
        field(7; "Global Dimension 1 Code"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(8; "Global Dimension 2 Code"; Code[10])
        {
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(9; "Transfer Department"; Boolean)
        {
            InitValue = true;
        }
        field(10; "Transfer Business Units"; Boolean)
        {
            InitValue = true;
        }
    }

    keys
    {
        key(Key1; "Posting Group", "E/D Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

