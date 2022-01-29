page 50105 "Conditional Statements"
{
    UsageCategory = Tasks;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                group(Input)
                {
                    Caption = 'Input';
                    field(Quantity; Quantity)
                    {
                        Caption = 'Quantity';
                        ApplicationArea = All;
                    }
                    field(UnitPrice; UnitPrice)
                    {
                        Caption = 'Unit Price';
                        ApplicationArea = All;
                    }
                }
                group(Output)
                {
                    Caption = 'Output';

                    field(Result; Result)
                    {
                        Caption = 'Result';
                        ApplicationArea = All;
                    }
                    field(TotalSales; TotalSales)
                    {
                        Caption = 'Total Sales';
                        ApplicationArea = All;
                    }
                    field(TOtalCredits; TOtalCredits)
                    {
                        Caption = 'Total Credits';
                        ApplicationArea = All;
                    }
                    field(GrandTotal; GrandTotal)
                    {
                        Caption = 'Grand Total';
                        ApplicationArea = All;
                    }
                    field(TotalQtySales; TotalQtySales)
                    {
                        Caption = 'Total Qty Sales';
                        ApplicationArea = All;
                    }
                    field(TotalQtyCredits; TotalQtyCredits)
                    {
                        Caption = 'Total Qty Credits';
                        ApplicationArea = All;
                    }
                    field(GrandQtyTotal; GrandQtyTotal)
                    {
                        Caption = 'Grand Qty Total';
                        ApplicationArea = All;
                    }
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Execute IF")
            {
                Image = ExecuteBatch;
                Promoted = true;
                ApplicationArea = All;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    IF Quantity = 0 THEN
                        EXIT;

                    Result := Quantity * UnitPrice;

                    //IF-Else Statement
                    IF (Result < 0) THEN
                        TOtalCredits := TOtalCredits + Result
                    ELSE
                        TotalSales := TotalSales + Result;

                    GrandTotal := GrandTotal + Result;
                end;
            }
            action(Clear)
            {
                Image = ClearFilter;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    //CLEAR(Quantity);
                    Quantity := 0;
                    UnitPrice := 0;
                    Result := 0;
                    TotalSales := 0;
                    TOtalCredits := 0;
                    GrandTotal := 0;
                    TotalQtyCredits := 0;
                    TotalQtySales := 0;
                    GrandQtyTotal := 0;
                end;
            }
            action("Execute Compound")
            {
                Image = "Action";
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    IF Quantity = 0 THEN
                        EXIT;
                    Result := Quantity * UnitPrice;

                    //If-Else Statement
                    IF (Result < 0) THEN BEGIN
                        TOtalCredits := TOtalCredits + Result;
                        TotalQtyCredits := TotalQtyCredits + Quantity;
                    END ELSE BEGIN
                        TotalSales := TotalSales + Result;
                        TotalQtySales := TotalQtySales + Quantity;
                    END;

                    GrandTotal := GrandTotal + Result;
                    GrandQtyTotal := GrandQtyTotal + Quantity;
                end;
            }
            action("Execute CASE")
            {
                Image = ExecuteBatch;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    Result := Quantity * UnitPrice;

                    //Case Statement
                    CASE TRUE OF
                        Quantity = 0:
                            EXIT;
                        Quantity < 0:
                            BEGIN
                                TOtalCredits := TOtalCredits + Result;
                                TotalQtyCredits := TotalQtyCredits + Quantity;
                            END;
                        Quantity > 0:
                            BEGIN
                                TotalSales := TotalSales + Result;
                                TotalQtySales := TotalQtySales + Quantity;
                            END;
                    END;

                    GrandTotal := GrandTotal + Result;
                    GrandQtyTotal := GrandQtyTotal + Quantity;
                end;
            }
        }
    }

    var
        Quantity: Integer;
        UnitPrice: Decimal;
        TotalSales: Decimal;
        TOtalCredits: Decimal;
        GrandTotal: Decimal;
        Result: Decimal;
        TotalQtySales: Integer;
        TotalQtyCredits: Integer;
        GrandQtyTotal: Integer;
}

