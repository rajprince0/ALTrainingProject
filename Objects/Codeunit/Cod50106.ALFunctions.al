codeunit 50106 "AL Functions"
{
    trigger OnRun()
    begin
        //POWER & MESSAGE FUNCTION
        // FormatString := '<Precision,3><Standard Format,1>';
        // //Example 1  
        // P := 2800;
        // R := 0.0125;
        // N := 32;
        // A := P * (POWER(1 + R, N));
        // MESSAGE(Text000 + Text001 + Text002, P, R, N, FORMAT(A, 0, FormatString));

        //  
        // //  Example 2  
        // P := 500;
        // R := 0.04;
        // N := 20;
        // A := P * ((POWER(1 + R, N) - 1) / R);
        // MESSAGE(Text000 + Text001 + Text002, P, R, N, FORMAT(A, 0, FormatString));
        // // 
        // //DATE2MY Function
        "When Was It" := Today;
        CASE DATE2DMY("When Was It", 2) OF
            1:
                Description := 'January';
            2:
                Description := 'February';
            3:
                Description := 'March';
            4:
                Description := 'April';
            5:
                Description := 'May';
            6:
                Description := 'June';
            7:
                Description := 'July';
            8:
                Description := 'August';
            9:
                Description := 'September';
            10:
                Description := 'October';
            11:
                Description := 'November';
            12:
                Description := 'December';
        END;
        MESSAGE('%1 is in %2', "When Was It", Description);

        // "When Was It" := Today;
        // CASE DATE2DMY("When Was It", 1) OF
        //     15:
        //         Description := 'Saturday';
        //     16:
        //         Description := 'Sunday';
        //     17:
        //         Description := 'Monday';
        //     18:
        //         Description := 'Tuesday';

        // END;
        // MESSAGE('%1 is in %2', "When Was It", Description);
        // //Dialog & STRMENU
        //Options := Text0000;
        // // Sets the default to option 3  
        // Selected := DIALOG.STRMENU(Options, 3, Text0002);
        // MESSAGE(Text0001, Selected);


        //Days := 'Monday,Tuesday,Wednesday,Thursday,Friday';
        // // Sets the default to option 1  
        // Selected := DIALOG.STRMENU(Days, 1, 'Which day is today?');
        // MESSAGE(Text0001, Selected);



        // //Copystring function
        // Str := Text00;
        // Position := 7;
        // Length := 8;
        // MESSAGE(Text01, Str);
        //NewStr := COPYSTR(Str, Position, Length);
        // MESSAGE(Text02, NewStr);

        // //String Position
        // Position := STRPOS('Giridharan', 'd');
        // MESSAGE(' The position of String is %1', Position);

        // //Lowercase
        // Str := 'The Entries are Sorted by Name.';
        // MESSAGE(TextString, Str);
        // Lower := LOWERCASE(Str);
        // MESSAGE(TextLower, Lower);

        // //Uppercase 
        // Str := 'Outstanding Order Status';
        // MESSAGE(TextString, Str);
        // Upper := UPPERCASE(Str);
        // MESSAGE(TextUpper, Upper);


        // //Evaluate
        // Value := '010196';
        // Ok1 := EVALUATE(VarInteger, Value);
        // Ok2 := EVALUATE(VarDate, Value);
        // Ok3 := EVALUATE(VarYesNo, Value);
        // Value := '2days 4hours 3.7 seconds 17.3 milliseconds';
        // Ok4 := EVALUATE(VarDuration, Value);
        // MESSAGE(TextE000 + TextE001 + TextE002 + TextE003, VarInteger, Ok1, VarDate, Ok2, VarYesNo, Ok3, VarDuration, Ok4);


        // //FORMAT
        // DecimalToRound := 12.5;
        // MESSAGE(TextFormat, FORMAT(DecimalToRound));

        // MESSAGE(TextFormat, FORMAT(-123456.78, 12, 3));
        // MESSAGE(TextFormat, FORMAT(-123456.78, 12, '<Standard Format,3>'));
        // MESSAGE(TextFormat, FORMAT(-123456.78, 12, '<Integer Thousand><Decimals><Sign,1>'));

        // //Random
        // X := 200; // x is assigned a positive value.  
        // Y := -100; // y is assigned a negative value.  
        // Z := 0; // z is assigned zero.  
        // Number1 := RANDOM(X);
        // Number2 := RANDOM(Y);
        // Number3 := RANDOM(Z);
        // MESSAGE(TextRandom, Number1, Number2, Number3);


        // // //Randomize
        // RANDOMIZE();
        // X := RANDOM(5);
        // MESSAGE(TextRandomize, X);


        // //ABS
        // X := -10.235; // x is assigned a negative value  
        // Y := ABS(X); // y is assigned the value of x without sign  
        // MESSAGE(TextABS, X, Y);


        // //Round
        // DecimalToRound := 1234.56789;
        // Direction := '=';
        // Precision := 0.01;
        // Result := ROUND(DecimalToRound, Precision, Direction);
        // MESSAGE(TextRound, FORMAT(DecimalToRound, 0, 1), Precision, Direction, Result);


        // StartDate := TODAY;
        // CalcEndDate := CALCDATE('<' + FORMAT('2M') + '>', StartDate);
        // MESSAGE('My CalcDate is %1', CalcEndDate);

    end;

    var

        P, R, N, A : Decimal;
        FormatString: Text;
        "When Was It": Date;
        Description: Text[30];
        Options: Text[30];
        Selected: Integer;
        Days: Text[50];
        Str: Text[60];
        Position: Integer;
        Length: Integer;
        NewStr: Text[30];
        Lower: Text[60];
        Upper: Text[60];
        X: Decimal;
        Y: Decimal;
        Z: Integer;
        Number1: Integer;
        Number2: Integer;
        Number3: Integer;
        DecimalToRound: Decimal;
        Direction: Text;
        Precision: Decimal;
        Result: Decimal;
        VarInteger: Integer;
        VarDate: Date;
        VarYesNo: Boolean;
        VarDuration: Duration;
        Value: Text;
        Ok1: Boolean;
        Ok2: Boolean;
        Ok3: Boolean;
        Ok4: Boolean;
        PeriodofNotice: DateFormula;
        StartDate: Date;
        CalcEndDate: Date;
        Text000: Label 'Principal $%1 at a 5 percent interest rate is compounded quarterly.\';
        Text001: Label '(Rate = %2)\';
        Text002: Label 'The amount after %3 years = $%4.';
        Text003: Label 'Principal $%1 is deposited at the end of each year at a 4 percent interest rate, compounded annually';
        Text004: Label '(Rate = %2)\';
        Text005: Label 'The amount after %3 years = $%4.';
        Text0000: Label 'Save,Delete,Exit,Find';
        Text0001: Label 'You selected option %1.';
        Text0002: Label 'Choose one of the following option';
        Text00: Label 'Using The COPYSTR function';
        Text01: Label 'The original string is: " %1 "';
        Text02: Label 'The copied string is: " %1 "';
        TextString: Label 'The string before is:" %1 "';
        TextLower: Label 'The string after LOWERCASE is: " %1 "';
        TextUpper: Label 'The string after UPPERCASE is: " %1 "';
        TextRound: Label 'ROUND(%1, %2, %3) returns %4.';
        TextRandom: Label 'Number1 = %1, Number2 = %2, Number3 = %3';
        TextFormat: Label 'The formatted value : %1';
        TextABS: Label 'x = %1, y = %2';
        TextE000: Label 'VarInteger = #1######. The return code is: %2.\';
        TextE001: Label 'VarDate = #3######. The return code is: %4.\';
        TextE002: Label 'VarYesNo = #5######. The return code is: %6.\';
        TextE003: Label 'VarDuration = %7. The return code is: %8.';
        TextRandomize: Label 'X=%1';
}