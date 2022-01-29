report 50101 "SampleProcessOnly"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    ProcessingOnly = true;
    UseRequestPage = false;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = ORDER(Ascending);

            trigger OnAfterGetRecord()
            begin
                if "Document Date" = 20230127D then begin
                    Status := Status::Open;
                    Modify();
                end;
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    trigger OnPostReport()
    begin
        Message(Text000);
    end;

    var
        myInt: Integer;
        Text000: Label 'Posting Date has been updated Successfully';
}