codeunit 50002 SalesLineSubscriber
{
    EventSubscriberInstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'Unit Cost', true, true)]
    local procedure OnAfterValidateEvent(var Rec: Record "Sales Line")
    begin
         if Rec."Gen. Prod. Posting Group" = 'FIS' then
          begin
            Rec."Unit Cost" := 0;
            Rec."Unit Cost (LCY)" := 0;
          end; 
    end;
}