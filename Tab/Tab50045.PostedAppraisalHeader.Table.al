table 50045 "Posted Appraisal Header"
{
    // //

    Caption = 'Posted Appraisal Header';
    DataCaptionFields = "No.", "Sell-to Customer Name";

    fields
    {
        field(2; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            NotBlank = true;
            TableRelation = IF ("Appraisal Selection" = CONST (" ")) Customer
            ELSE
            IF ("Appraisal Selection" = CONST (Interview)) Employee."No."
                        ELSE
            IF ("Appraisal Selection" = CONST ("Skill & Performance")) Employee."No.";
        }
        field(3; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(4; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            NotBlank = true;
            TableRelation = Customer;
        }
        field(5; "Bill-to Name"; Text[30])
        {
            Caption = 'Bill-to Name';
        }
        field(6; "Bill-to Name 2"; Text[30])
        {
            Caption = 'Bill-to Name 2';
        }
        field(7; "Bill-to Address"; Text[30])
        {
            Caption = 'Bill-to Address';
        }
        field(8; "Bill-to Address 2"; Text[30])
        {
            Caption = 'Bill-to Address 2';
        }
        field(9; "Bill-to City"; Text[30])
        {
            Caption = 'Bill-to City';
        }
        field(10; "Bill-to Contact"; Text[30])
        {
            Caption = 'Bill-to Contact';
        }
        field(11; "Your Reference"; Text[30])
        {
            Caption = 'Your Reference';
        }
        field(12; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
            TableRelation = "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Sell-to Customer No."));
        }
        field(13; "Ship-to Name"; Text[30])
        {
            Caption = 'Ship-to Name';
        }
        field(14; "Ship-to Name 2"; Text[30])
        {
            Caption = 'Ship-to Name 2';
        }
        field(15; "Ship-to Address"; Text[30])
        {
            Caption = 'Ship-to Address';
        }
        field(16; "Ship-to Address 2"; Text[30])
        {
            Caption = 'Ship-to Address 2';
        }
        field(17; "Ship-to City"; Text[30])
        {
            Caption = 'Ship-to City';
        }
        field(18; "Ship-to Contact"; Text[30])
        {
            Caption = 'Ship-to Contact';
        }
        field(20; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(21; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(22; "Posting Description"; Text[50])
        {
            Caption = 'Posting Description';
        }
        field(23; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            TableRelation = "Payment Terms";
        }
        field(24; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(25; "Payment Discount %"; Decimal)
        {
            Caption = 'Payment Discount %';
            DecimalPlaces = 0 : 5;
        }
        field(26; "Pmt. Discount Date"; Date)
        {
            Caption = 'Pmt. Discount Date';
        }
        field(27; "Shipment Method Code"; Code[10])
        {
            Caption = 'Shipment Method Code';
            TableRelation = "Shipment Method";
        }
        field(28; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(29; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(30; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(31; "Customer Posting Group"; Code[10])
        {
            Caption = 'Customer Posting Group';
            Editable = false;
            TableRelation = "Customer Posting Group";
        }
        field(32; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(33; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            MinValue = 0;
        }
        field(34; "Price Group Code"; Code[10])
        {
            Caption = 'Price Group Code';
            TableRelation = "Customer Price Group";
        }
        field(35; "Prices Including VAT"; Boolean)
        {
            Caption = 'Prices Including VAT';
        }
        field(36; "Allow Quantity Disc."; Boolean)
        {
            Caption = 'Allow Quantity Disc.';
        }
        field(37; "Invoice Disc. Code"; Code[20])
        {
            Caption = 'Invoice Disc. Code';
        }
        field(40; "Cust./Item Disc. Gr."; Code[10])
        {
            Caption = 'Cust./Item Disc. Gr.';
            TableRelation = "Customer Discount Group";
        }
        field(41; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(43; "Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(46; Comment; Boolean)
        {
            CalcFormula = Exist ("Sales Comment Line" WHERE ("Document Type" = CONST (Shipment),
                                                            "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(47; "No. Printed"; Integer)
        {
            Caption = 'No. Printed';
            Editable = false;
        }
        field(51; "On Hold"; Code[3])
        {
            Caption = 'On Hold';
        }
        field(52; "Applies-to Doc. Type"; Option)
        {
            Caption = 'Applies-to Doc. Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder;
        }
        field(53; "Applies-to Doc. No."; Code[20])
        {
            Caption = 'Applies-to Doc. No.';
        }
        field(55; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            TableRelation = IF ("Bal. Account Type" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Bal. Account Type" = CONST ("Bank Account")) "Bank Account";
        }
        field(56; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(60; Amount; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Sales Cr.Memo Line".Amount WHERE ("Document No." = FIELD ("No.")));
            Caption = 'Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61; "Amount Including VAT"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Sales Cr.Memo Line"."Amount Including VAT" WHERE ("Document No." = FIELD ("No.")));
            Caption = 'Amount Including VAT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(73; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(74; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(75; "EU 3-Party Trade"; Boolean)
        {
            Caption = 'EU 3-Party Trade';
        }
        field(76; "Transaction Type"; Code[10])
        {
            Caption = 'Transaction Type';
            TableRelation = "Transaction Type";
        }
        field(77; "Transport Method"; Code[10])
        {
            Caption = 'Transport Method';
            TableRelation = "Transport Method";
        }
        field(78; "VAT Country Code"; Code[10])
        {
            Caption = 'VAT Country Code';
            TableRelation = "Country/Region";
        }
        field(79; "Sell-to Customer Name"; Text[30])
        {
            Caption = 'Sell-to Customer Name';
        }
        field(80; "Sell-to Customer Name 2"; Text[30])
        {
            Caption = 'Sell-to Customer Name 2';
        }
        field(81; "Sell-to Address"; Text[30])
        {
            Caption = 'Sell-to Address';
        }
        field(82; "Sell-to Address 2"; Text[30])
        {
            Caption = 'Sell-to Address 2';
        }
        field(83; "Sell-to City"; Text[30])
        {
            Caption = 'Sell-to City';
        }
        field(84; "Sell-to Contact"; Text[30])
        {
            Caption = 'Sell-to Contact';
        }
        field(85; "Bill-to Post Code"; Code[20])
        {
            Caption = 'Bill-to Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(86; "Bill-to County"; Text[30])
        {
            Caption = 'Bill-to County';
        }
        field(87; "Bill-to Country Code"; Code[10])
        {
            Caption = 'Bill-to Country Code';
            TableRelation = "Country/Region";
        }
        field(88; "Sell-to Post Code"; Code[20])
        {
            Caption = 'Sell-to Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(89; "Sell-to County"; Text[30])
        {
            Caption = 'Sell-to County';
        }
        field(90; "Sell-to Country Code"; Code[10])
        {
            Caption = 'Sell-to Country Code';
            TableRelation = "Country/Region";
        }
        field(91; "Ship-to Post Code"; Code[20])
        {
            Caption = 'Ship-to Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(92; "Ship-to County"; Text[30])
        {
            Caption = 'Ship-to County';
        }
        field(93; "Ship-to Country Code"; Code[10])
        {
            Caption = 'Ship-to Country Code';
            TableRelation = "Country/Region";
        }
        field(94; "Bal. Account Type"; Option)
        {
            Caption = 'Bal. Account Type';
            OptionCaption = 'G/L Account,Bank Account';
            OptionMembers = "G/L Account","Bank Account";
        }
        field(97; "Exit Point"; Code[10])
        {
            Caption = 'Exit Point';
            TableRelation = "Entry/Exit Point";
        }
        field(98; Correction; Boolean)
        {
            Caption = 'Correction';
        }
        field(99; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(100; "External Document No."; Code[20])
        {
            Caption = 'External Document No.';
        }
        field(101; "Area"; Code[10])
        {
            Caption = 'Area';
            TableRelation = Area;
        }
        field(102; "Transaction Specification"; Code[10])
        {
            Caption = 'Transaction Specification';
            TableRelation = "Transaction Specification";
        }
        field(104; "Payment Method Code"; Code[10])
        {
            Caption = 'Payment Method Code';
            TableRelation = "Payment Method";
        }
        field(107; "Pre-Assigned No. Series"; Code[10])
        {
            Caption = 'Pre-Assigned No. Series';
            TableRelation = "No. Series";
        }
        field(108; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(111; "Pre-Assigned No."; Code[20])
        {
            Caption = 'Pre-Assigned No.';
        }
        field(112; "User ID"; Code[20])
        {
            Caption = 'User ID';
            //TableRelation = Table2000000002;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(113; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(114; "Tax Area Code"; Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(115; "Tax Liable"; Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(116; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(119; "VAT Base Discount %"; Decimal)
        {
            Caption = 'VAT Base Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5700; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5900; "Service Mgt. Document"; Boolean)
        {
            Caption = 'Service Mgt. Document';
        }
        field(6600; "Sales Return No."; Code[20])
        {
            Caption = 'Sales Return No.';
            Editable = false;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(50301; "Contr. Code/Postn.  Applied"; Option)
        {
            OptionMembers = "01-Skipper","02-Marine Eng","03-Coxswain","04-Eng Superv","05-Shr Mast/Sail","06-Mec/Carp/Wel/Secu","07-Others";
        }
        field(50302; "Appraisal Selection"; Option)
        {
            Description = ' ,Interview,Skill & Performance';
            OptionMembers = " ",Interview,"Skill & Performance";
        }
        field(50303; "Skill Score"; Decimal)
        {
            Editable = false;
            FieldClass = Normal;
        }
        field(50304; "Skill Total"; Decimal)
        {
            Editable = false;
            FieldClass = Normal;
        }
        field(50305; "Skill Percentage"; Decimal)
        {
            Editable = false;
        }
        field(50306; "Performance Score"; Decimal)
        {
            Editable = false;
            FieldClass = Normal;
        }
        field(50307; "Performance Total"; Decimal)
        {
            Editable = false;
            FieldClass = Normal;
        }
        field(50308; "Performance Percentage"; Decimal)
        {
            Editable = false;
        }
        field(50309; "Total Percentage"; Decimal)
        {
            Editable = false;
        }
        field(50310; Cgrade; Code[2])
        {
            Editable = false;
        }
        field(50311; Cstep; Code[2])
        {
            Editable = false;
        }
        field(50312; Cedamount; Decimal)
        {
            Editable = false;
            FieldClass = Normal;
        }
        field(50313; CGrp; Code[10])
        {
            Editable = false;
        }
        field(50314; Rgrade; Code[2])
        {
            Editable = false;
        }
        field(50315; Rstep; Code[2])
        {
            Editable = false;
        }
        field(50316; Redamount; Decimal)
        {
            Editable = false;
            FieldClass = Normal;
        }
        field(50317; RGrp; Code[10])
        {
            Editable = false;
            TableRelation = "Payroll-Employee Group Header.";
        }
        field(50330; Agrade; Code[2])
        {
            Editable = false;
        }
        field(50332; Astep; Code[2])
        {
            Editable = false;
        }
        field(50334; Aedamount; Decimal)
        {
            Editable = false;
            FieldClass = Normal;
        }
        field(50336; AGrp; Code[10])
        {
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Pre-Assigned No.")
        {
        }
        key(Key3; "Service Mgt. Document")
        {
        }
    }

    fieldgroups
    {
    }
}

