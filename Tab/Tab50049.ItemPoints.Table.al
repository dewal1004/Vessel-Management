table 50049 "Item Points"
{
    Caption = 'Item Points';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(2; "Price Group Code"; Code[10])
        {
            Caption = 'Price Group Code';
            TableRelation = "Customer Price Group";
        }
        field(3; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(4; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(5; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
            MinValue = 0;
        }
        field(7; "Price Includes VAT"; Boolean)
        {
            Caption = 'Price Includes VAT';
        }
        field(8; "Allow Quantity Disc."; Boolean)
        {
            Caption = 'Allow Quantity Disc.';
            InitValue = true;
        }
        field(9; "Allow Cust./Item Disc."; Boolean)
        {
            Caption = 'Allow Cust./Item Disc.';
            InitValue = true;
        }
        field(10; "Allow Invoice Disc."; Boolean)
        {
            Caption = 'Allow Invoice Disc.';
            InitValue = true;
        }
        field(11; "VAT Bus. Posting Gr. (Price)"; Code[10])
        {
            Caption = 'VAT Bus. Posting Gr. (Price)';
            TableRelation = "VAT Business Posting Group";
        }
        field(5400; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(5700; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(5701; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
    }

    keys
    {
        key(Key1; "Item No.", "Variant Code", "Responsibility Center", "Price Group Code", "Unit of Measure Code", "Currency Code", "Starting Date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

