report 50033 Update
{
    DefaultLayout = RDLC;
    RDLCLayout = './Report\Rdlc\Update.rdlc';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {

            trigger OnAfterGetRecord()
            begin
                if "Purchase Header"."Posting No. Series" = '' then begin
                    "Purchase Header"."Posting No. Series" := 'P-INV+';
                    "Purchase Header"."Receiving No. Series" := 'P-RCPT';
                    "Purchase Header"."Prepayment No. Series" := 'P-SHPT';
                    "Purchase Header".Modify;
                end;
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }
}

