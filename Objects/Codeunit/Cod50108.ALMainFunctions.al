codeunit 50108 "AL Main Functions"
{
    trigger OnRun()
    begin
        //GET Function
        // Bool := Customer.GET('0145454');
        // IF Customer.GET('01445544') THEN
        //     MESSAGE(Customer.Name)
        // ELSE
        //     ERROR('Customer does not Exist');


        //SETRANGE
        //Customer.SetFilter(Name, 'New Concepts Furniture');
        // Customer.SETRANGE(Name, 'New Concepts Furniture');
        // IF Customer.FINDFIRST THEN
        //     MESSAGE(Text008, Customer.Address);

        // if GLEntry.FindFirst() then
        //     Message('The Entry No is %1', GLEntry."Entry No.");

        // if GLEntry.FindLast() then
        //     Message('The Entry No is %1', GLEntry."Entry No.");


        // Customer.SetFilter("Responsibility Center", '<>%1', 'London');
        // IF Customer.FindSet() THEN
        //     repeat
        //         MESSAGE(Customer."No.");
        //     until Customer.Next() = 0;

        // //SETFILTER & GETRANGEMIN
        // Customer.SETFILTER("No.", '10000..60000');
        // //Customer.SETFILTER("No.", '%1..%2', '10000', '60000');
        // //Customer.SETFILTER("No.", '<>%1', '10000');
        // //Customer.SETFILTER("No.",'10000|20000'); //It will occur a runtime error
        // Val := Customer.GETRANGEMIN("No.");
        // MESSAGE(Text000, Val);


        // //GETRANGEMAX
        // Customer.SETFILTER("No.", '10000..60000');
        // Val := Customer.GETRANGEMAX("No.");
        // MESSAGE(Text001, Val);

        // //FINDLAST
        // IF GLEntry.FINDLAST THEN
        //     MESSAGE('The LastEntry No. is %1 and last Account No is %2', GLEntry."Entry No.", GLEntry."G/L Account No.");
        // // 
        // //FINDFIRST
        // IF GLEntry.FINDFIRST THEN
        //     MESSAGE('The FirstEntry No. is %1', GLEntry."Entry No.");

        //Insert
        Customer.INIT;
        Customer."No." := '1120';
        Customer.Name := 'Giridharan';
        Customer.Address := 'Coimbatore';
        Customer."Phone No." := '87483990';
        IF Customer.INSERT THEN
            MESSAGE(Text004, Customer."No.")
        ELSE
            MESSAGE(Text005, Customer."No.");


        //Modify
        // if Customer.GET('1120') then;
        // Customer.Name := 'Karthikeyani';
        // Customer.Address := 'Salem';
        // Customer."Phone No." := '793790808';
        // Customer.MODIFY;


        // //Rename 
        // if Customer.GET('1120') then;
        // Customer.RENAME('10000-G');
        // MESSAGE(Text002, Customer."No.");

        // CustomerRec."No." := '10000-G';
        // CustomerRec.DELETE;

        // Item.GET('1100-G');
        // Item.RENAME('1000');
        // MESSAGE(Text003, Item."No.");



        // //Delete
        // //Without using the return value:  
        // CustomerRec."No." := '1120';
        // CustomerRec.DELETE;

        // //Using the return value:  
        // CustomerRec."No." := '1150';
        // IF CustomerRec.DELETE THEN
        //     MESSAGE(Text006)
        // ELSE
        //     ERROR(Text007);

        // //Modify All
        // //The result of this statement:  
        // Customer.MODIFYALL("Phone No.", '89799');
        // //is equivalent to:  
        // IF Customer.FINDFIRST THEN
        //     REPEAT
        //         Customer."Phone No." := '67368';
        //         Customer.MODIFY;
        //     UNTIL Customer.NEXT = 0;


        // //Deleteall  
        // WHILE Customer.FIND('-') DO
        //     Customer.DELETE;
        // Performs the same operation as:  
        // Customer.DELETEALL;


        // //CalcField Function
        // Customer.GET('01445544');
        // Customer.SETRANGE("Date Filter", 20190101D, 20200101D);
        // Customer.CALCFIELDS(Balance, "Net Change");
        // MESSAGE('Balance & Netchange are : %1 & %2 ', Customer.Balance, Customer."Net Change");


        //FieldError Function
        // CustomerRec."No." := '01445544';
        // CustomerRec.FIELDERROR("No.", 'Its not valid');


        // //FieldCaption Function
        // varFieldCaption := CustomerRec.FIELDCAPTION("Address 2");
        // MESSAGE(varFieldCaption);

        //TestField Function
        // if CustomerRec.Get('01121212') then
        //     CustomerRec.TestField("IC Partner Code", 'IP020');

        // if CustomerRec.Get('01121212') then begin
        //     if CustomerRec."Default Amount" <= 500 then
        //         Error('Customer No. = %1 should not be more than 500.', CustomerRec."No.");
        // end;

        // CustomerRec."No." := '';
        // CustomerRec.TESTFIELD("No.");

        if GLAccount.Get('1110') then begin
            GLAccount.CalcFields(Balance);
            Message('%1', GLAccount.Balance);
        end;

        // //CALCSUMS FUnction
        // GLEntry.GET('2');
        // GLEntry.CALCSUMS("Credit Amount");
        // GLEntry.CALCSUMS("Debit Amount");
        // GLEntry.CALCSUMS(Amount);
        // //GLAmount := FORMAT(GLEntry.CALCSUMS(Amount));
        // MESSAGE('The Credit,Debit & Ammount of G/L entry are : %1 %2 & %3', GLEntry."Credit Amount", GLEntry."Debit Amount", GLEntry.Amount);

    end;

    var
        Customer: Record Customer;
        Val: Code[20];
        GLEntry: Record "G/L Entry";

        GLAccount: Record "G/L Account";
        CustomerRec: Record Customer;
        Item: Record Item;
        varFieldCaption: Text[30];
        SalesHeader: Record "Sales Header";
        GLAmount: Decimal;
        Bool: Boolean;

        Text000: Label 'The minimum value is: %1.';
        Text001: Label 'The Maximum value is: %1.';
        Text002: Label 'The Customer No. is %1';
        Text003: Label 'The Item No. is %1';
        Text004: Label 'Customer no: %1 inserted.';
        Text005: Label 'Customer no: %1 already exist.';
        Text006: Label 'The customer has been deleted.';
        Text007: Label 'The customer could not be found.';
        Text008: Label 'The Address value is: %1.';
}