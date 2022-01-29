codeunit 50101 "SubscriberEvent"
{

    trigger OnRun()
    begin
    end;

    var
        Text000: Label 'The Amount Can not be more than Zero';

    [EventSubscriber(ObjectType::Codeunit, 50100, 'CheckAmount', '', false, false)]
    local procedure ValidateAmount(Amount: Decimal)
    begin
        IF Amount > 0 THEN
            ERROR(Text000);
    end;

    [EventSubscriber(ObjectType::Table, 36, 'OnAfterCopySellToCustomerAddressFieldsFromCustomer', '', false, false)]
    local procedure OnAfterCopySellToCustomer(VAR SalesHeader: Record "Sales Header"; SellToCustomer: Record Customer; CurrentFieldNo: Integer)
    begin
        // SalesHeader."Our Account No." := SellToCustomer."Our Account No.";
        // SalesHeader."Telex No." := SellToCustomer."Telex No.";
    end;

}

