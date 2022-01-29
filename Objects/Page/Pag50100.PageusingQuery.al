page 50107 "Page using Query"
{
    ApplicationArea = all;
    PageType = List;
    Caption = 'Page Using Query';
    SourceTable = Integer;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Number; Rec.Number)
                {
                }
                field("Sales ID"; SalesQue.Sales_ID)
                {
                }
                field("Sales Person"; SalesQue.Sales_Person)
                {
                }
                field("Sales Amount"; SalesQue.Sales_Amount)
                {
                }
                field("Sales Total"; SalesQue.Sales_Total)
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        IF NOT SalesQue.READ THEN
            EXIT;
    end;

    trigger OnClosePage()
    begin
        SalesQue.CLOSE;
    end;

    trigger OnOpenPage()
    begin
        SalesQue.OPEN;

        WHILE SalesQue.READ DO
            NoOfRows := NoOfRows + 1;

        SalesQue.CLOSE;

        SETRANGE(Number, 1, NoOfRows);

        CLEAR(SalesQue);

        SalesQue.OPEN;
    end;

    var
        SalesQue: Query Sales_Que;
        NoOfRows: Integer;
}

