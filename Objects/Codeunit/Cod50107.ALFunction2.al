codeunit 50107 "AL Function 2"
{
    trigger OnRun()
    begin
        //Seletstr Function
        CommaStr := Text0000;
        CommaStr2 := Text0002;
        SubStr1 := SELECTSTR(2, CommaStr); // Pick out the 2nd substring.  
        SubStr2 := SELECTSTR(4, CommaStr); // Pick out the 4th substring.  
        SubStr3 := SELECTSTR(1, CommaStr2);
        SubStr4 := SELECTSTR(3, CommaStr2);
        MESSAGE(Text0001 + '>%1<\' + '>%2<\' + '>%3<\' + '>%4<\', SubStr1, SubStr2, SubStr3, SubStr4);


        //INCSTR Function
        Account := Text000;
        NegAccount := Text001;
        EmptyAccount := Text002;
        MyAccount := Text003;
        MESSAGE(Text004, Account, NegAccount, EmptyAccount, MyAccount);

        ResultAccount := INCSTR(Account);
        ResultNegAccount := INCSTR(NegAccount);
        ResultEmptyAccount := INCSTR(EmptyAccount);
        ResultMyAccount := INCSTR(MyAccount);
        MESSAGE(Text005, ResultAccount, ResultNegAccount, ResultEmptyAccount, ResultMyAccount);

    end;

    var

        CommaStr: Text[60];
        CommaStr2: Text[60];
        SubStr1: Text[60];
        SubStr2: Text[60];
        SubStr3: Text[60];
        SubStr4: Text[60];
        Account: Text[60];
        NegAccount: Text[60];
        EmptyAccount: Text[60];
        MyAccount: Text[60];
        ResultAccount: Text[60];
        ResultNegAccount: Text[60];
        ResultEmptyAccount: Text[60];
        ResultMyAccount: Text[60];
        Text000: Label 'Account no. 99 does not balance.';
        Text001: Label ' Account no. 2342 shows a total of $-452.';
        Text002: Label ' My bank account is empty 8';
        Text003: Label 'My Bank Account is not empty its with $9';
        Text004: Label 'The text strings before INCSTR is called:\%1\%2\%3\%4';
        Text005: Label 'The text strings after INCSTR is called:\%1\%2\%3\%4';
        Text0000: Label 'This,is a comma, separated, string';
        Text0001: Label 'The calls to SELECTSTR return:\';
        Text0002: Label ' 11,22,33,,55,,,';
}