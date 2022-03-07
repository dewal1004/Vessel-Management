tableextension 50234 tableextension50234 extends "Purch. Rcpt. Header"
{
    fields
    {
        modify("Pay-to Name")
        {
            Description = 'Text30';
        }
        modify("Pay-to Name 2")
        {
            Description = 'Text30';
        }
        modify("Pay-to Address")
        {
            Description = 'Text30';
        }
        modify("Pay-to Address 2")
        {
            Description = 'Text30';
        }
        modify("Pay-to City")
        {
            Description = 'Text30';
        }
        modify("Pay-to Contact")
        {
            Description = 'Text30';
        }
        modify("Your Reference")
        {

            //Unsupported feature: Property Modification (Data type) on ""Your Reference"(Field 11)".

            Description = 'Text30';
        }

        //Unsupported feature: Property Modification (Data type) on ""Ship-to City"(Field 17)".

        field(50000; "Landed Cost Factor"; Option)
        {
            Description = 'BPR1.00,LC';
            InitValue = Value;
            OptionMembers = Value,Quantity,Weight;
        }
        field(50001; Overhead; Decimal)
        {
            CalcFormula = Sum ("G/L Entry".Amount WHERE ("External Document No." = FIELD ("No."),
                                                        "G/L Account No." = FILTER ('2185')));
            Description = 'BPR1.00,LC';
            FieldClass = FlowField;
        }
        field(50002; "Total Amount Item (LCY)"; Decimal)
        {
            Description = 'BPR1.00,LC';
            Editable = false;
        }
        field(50010; "Vendor Freight"; Boolean)
        {
            Description = 'BPR1.00,LC';
        }
        field(50011; "Total Amount account"; Decimal)
        {
            Description = 'BPR1.00,LC';
        }
        field(50012; "Total Amount Item to Receive"; Decimal)
        {
            CalcFormula = Sum ("Purchase Line"."QtytoReceiveAmount(LCY)" WHERE ("Document No." = FIELD ("No."),
                                                                               Type = FILTER (<> " " & <> "G/L Account"),
                                                                               "Outstanding Quantity" = FILTER (<> 0)));
            Description = 'BPR1.00,LC';
            FieldClass = FlowField;
        }
        field(50015; "Waybill No."; Code[20])
        {
            Editable = false;
        }
        field(50300; "Form M No."; Code[20])
        {
        }
        field(50301; "LC No."; Code[20])
        {
        }
        field(50303; "Vessel Name"; Text[50])
        {
        }
        field(50304; "Container No."; Code[20])
        {
        }
        field(50310; "Totat Freight"; Decimal)
        {
        }
        field(50311; "Total Ancillary Charges"; Decimal)
        {
        }
        field(50312; "Clearing(LCY)"; Decimal)
        {
        }
        field(50313; "Interest Expense(LCY)"; Decimal)
        {
        }
        field(50320; "Total Freight (LCY)"; Decimal)
        {
            Editable = false;
        }
        field(50321; "Total Ancillary Charges(LCY)"; Decimal)
        {
            Editable = false;
        }
        field(50322; Validity; Code[10])
        {
            Caption = 'Validity';
            TableRelation = "Payment Terms".Code;
        }
        field(50330; "Freight(LCY)LT"; Decimal)
        {
            Editable = false;
        }
        field(50331; "Ancillary(LCY)LT"; Decimal)
        {
            Editable = false;
        }
        field(50332; "Duty(LCY)LT"; Decimal)
        {
            Editable = false;
        }
        field(50333; "Insurance(LCY)LT"; Decimal)
        {
            Editable = false;
        }
        field(50334; "Surcharge Duty(LCY)LT"; Decimal)
        {
            Editable = false;
        }
        field(50335; "Ecowas Duty(LCY)LT"; Decimal)
        {
            Editable = false;
        }
        field(50336; "CISS(LCYLT"; Decimal)
        {
            Editable = false;
        }
        field(50337; "Vat (LCY)LT"; Decimal)
        {
            Editable = false;
        }
        field(50338; "Clearing(LCY)LT"; Decimal)
        {
            Editable = false;
        }
        field(50339; "Interest(LCY)LT"; Decimal)
        {
            Editable = false;
        }
        field(50360; "Original Purc. Order No."; Code[20])
        {
        }
        field(50380; "Form M Submitted No."; Code[15])
        {
        }
        field(50381; "Transaction Bank"; Code[10])
        {
            TableRelation = "Bank Account";
        }
        field(50382; "Form M Submitted Date"; Date)
        {
        }
        field(50383; "Form M Approval No."; Code[15])
        {
        }
        field(50384; "Form M Approval Date"; Date)
        {
        }
        field(50385; "Form M Expiry Date"; Date)
        {
        }
        field(50386; "Inspection Agent"; Code[10])
        {
            TableRelation = Vendor;
        }
        field(50387; "Insurance Co."; Code[10])
        {
            TableRelation = Vendor;
        }
        field(50388; "Nature of Cover"; Option)
        {
            OptionMembers = " ",Marine,Comprehensive;
        }
        field(50389; "Insurance Policy No."; Code[15])
        {
        }
        field(50390; "Valid up to"; Date)
        {
        }
        field(50391; "Inspection No."; Code[15])
        {
        }
        field(50392; "Vendor Notified Date"; Date)
        {
        }
        field(50393; "Inspection Date"; Date)
        {
        }
        field(50394; "Expected Departure"; Date)
        {
        }
        field(50395; "Actual Sailing of Vessel"; Date)
        {
        }
        field(50396; "Expected Date of Arrival"; Date)
        {
        }
        field(50397; "Actual Date of Arrival"; Date)
        {
        }
        field(50398; QtyDeliveredOrig; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Entry Type" = CONST (Purchase),
                                                                  "Document No." = FIELD ("No.")));
            FieldClass = FlowField;
        }
        field(50399; QtyDeliveredBKord; Decimal)
        {
        }
        field(50400; "Purchase Order Req. No"; Code[20])
        {
        }
        field(50500; "Created By"; Code[20])
        {
            Editable = false;
        }
        field(50503; "Approved By"; Code[50])
        {
            TableRelation = User;
        }
    }
}

