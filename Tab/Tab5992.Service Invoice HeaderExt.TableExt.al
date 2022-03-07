tableextension 50322 tableextension50322 extends "Service Invoice Header"
{
    local procedure CheckDocumentSendingProfileIsSupported(var TempDocumentSendingProfile: Record "Document Sending Profile" temporary)
    begin
        if (Count > 1) and
           (TempDocumentSendingProfile."Electronic Document" <> TempDocumentSendingProfile."Electronic Document"::No)
        then
            Error(CannotSendMultipleInvoicesElectronicallyErr);
    end;

    var
        CannotSendMultipleInvoicesElectronicallyErr: Label 'You can only send one electronic invoice at a time.';
}

