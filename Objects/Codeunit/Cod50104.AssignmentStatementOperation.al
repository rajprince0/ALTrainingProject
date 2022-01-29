codeunit 50104 "Assignment Statement Operation"
{
    trigger OnRun()
    begin

        // LoopNo := 25;
        // MESSAGE('The value of %1 is %2', 'LoopNo', LoopNo);

        // LoopNo := -30;
        // MESSAGE('The value of %1 is %2', 'LoopNo', LoopNo);

        // Amount := 27.5;
        // MESSAGE('The value of %1 is %2', 'Amount', Amount);

        // "WhenWasIt" := 20210726D;
        // MESSAGE('The value of %1 is %2', 'When Was It', "WhenWasIt");

        // "CodeNumber" := 'abc 123 x';
        // MESSAGE('The value of %1 is %2', 'Code Number', "CodeNumber");

        // Description := 'Now is the time.';
        // MESSAGE('The value of %1 is %2', 'Description', Description);

        // Ch := 67;
        // MESSAGE('The value of %1 is %2', 'Ch', Ch);

        // Ch := 'A';
        // MESSAGE('The value of %1 is %2', 'Ch', Ch);

        // Color := 4;
        // MESSAGE('The value of %1 is %2', 'Color', Color);

        // Color := Color::Red;
        // MESSAGE('The value of %1 is %2', 'Color: ', Color);

        // Stream := Stream::"Dynamics AX";
        // MESSAGE('The Value of %1 is %2', 'Stream', Stream);

        // CodeA := 'HELLO THERE';
        // TextA := 'How Are You? ';
        // CodeB := CodeA + '! ' + TextA;
        //MESSAGE('The value of %1 is %2', 'CodeB', CodeB);

        //MaxChar := MAXSTRLEN(Description);
        // MESSAGE('The value of %1 is %2', 'MaxChar', MaxChar);

        // Description := COPYSTR('The message is: ' + CodeB, 1, MAXSTRLEN(Description));
        // MESSAGE('The value of %1 is %2', 'Description', Description);

    end;


    var
        LoopNo: Integer;
        Amount: Decimal;
        CodeNumber: Code[20];
        Description: Text[250];
        WhenWasIt: Date;
        Color: Enum Color;
        CodeA: Text[30];
        CodeB: Text[50];
        TextA: Text[50];
        TextB: Text[250];
        MaxChar: Integer;
        Ch: Char;
        Stream: enum Stream;
}