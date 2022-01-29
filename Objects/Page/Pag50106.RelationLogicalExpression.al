page 50106 "Relation & Logical Expression"
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
                    field(value1; value1)
                    {
                        Caption = 'Value 1';
                        ApplicationArea = All;

                        trigger OnValidate()
                        begin
                            IF value1 <= 0 THEN BEGIN
                                ERROR('Value1 must be positive. Current value: %1.', value1);
                            END;
                        end;
                    }
                    field(value2; value2)
                    {
                        ApplicationArea = All;
                        Caption = 'Value 2';
                    }
                }
                group(Output)
                {
                    Caption = 'Output';
                    field(result; result)
                    {
                        ApplicationArea = All;
                        Caption = 'Result';
                    }
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Execute)
            {
                Image = "Action";
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    IF (value1 <= value2) OR (value2 >= value1) THEN
                        result := TRUE;
                end;
            }
        }
    }

    var
        value1: Decimal;
        value2: Decimal;
        result: Boolean;
}

