codeunit 50100 "IntegrationEvent"
{

    trigger OnRun()
    begin
    end;

    [IntegrationEvent(false, false)]
    [Scope('Internal')]
    procedure CheckAmount(Amount: Decimal)
    begin
        
    end;
}

