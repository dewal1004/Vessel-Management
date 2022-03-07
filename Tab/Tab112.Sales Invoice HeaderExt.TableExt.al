tableextension 50230 tableextension50230 extends "Sales Invoice Header"
{
    fields
    {
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
        }
        field(50304; "Skill Total"; Decimal)
        {
        }
        field(50305; "Skill Percentage"; Decimal)
        {
        }
        field(50306; "Performance Score"; Decimal)
        {
        }
        field(50307; "Performance Total"; Decimal)
        {
        }
        field(50308; "Performance Percentage"; Decimal)
        {
        }
        field(50309; "Total Percentage"; Decimal)
        {
        }
        field(50380; "Container Code"; Code[10])
        {
        }
        field(50381; "Seal No"; Code[15])
        {
        }
        field(50384; "Shipment Month"; Option)
        {
            OptionMembers = Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec;
        }
    }


    //Unsupported feature: Property Modification (Id) on "DocTxt(Variable 1000)".

    //var
    //>>>> ORIGINAL VALUE:
    //DocTxt : 1000;
    //Variable type has not been exported.
    //>>>> MODIFIED VALUE:
    //DocTxt : 10000;
    //Variable type has not been exported.

    var
        CannotSendMultipleInvoicesElectronicallyErr: Label 'You can only send one electronic invoice at a time.';
}

