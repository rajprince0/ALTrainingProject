codeunit 50105 "Arithmetic Operators"
{
    trigger OnRun()
    begin
        // Int1 := 25 DIV 3;
        // Int2 := 25 MOD 3;
        // IntResult := Int1 * 3 + Int2;
        // MESSAGE('The value of %1 is %2', 'IntResult', IntResult);

        Int1 := 5 + 3 * 6 - 2 DIV -2;
        Int2 := (5 + 3) * (6 - 2) DIV -2;
        MESSAGE('The value of %1 is %2 and  %3 is %4', 'Int1', Int1, 'Int2', Int2);

        // Int1 := 25 DIV 3;
        // Amt1 := 25 / 3;
        // Amt2 := 0.00000000000000001;
        // AmtResult := (Amt1 - Int1) * 3 + Amt2;
        // MESSAGE('The value of %1 is %2', 'AmtResult', AmtResult);

        // IF AmtResult = 1 THEN
        //     ERROR('Amount Cannot be 1');


        // //ArrayLen
        // Result := ARRAYLEN(SaleAmount);
        // MESSAGE('The value of result is %1', Result);

        str[20] := 'Walk in the park';
        str[13] := 'd';
        str[18] := 'Hi';
        MESSAGE(str[18]);
        Message(Str[30]);
    end;

    var

        Int1: Integer;
        Int2: Integer;
        Amt1: Decimal;
        Amt2: Decimal;
        IntResult: Integer;
        AmtResult: Decimal;
        Counter: Integer;
        SaleAmount: Array[20] of Text;
        Result: Integer;
        str: Array[20] of Text;
}