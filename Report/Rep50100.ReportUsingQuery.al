report 50102 "Report Using Query"
{
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Layout/ReportUsingQuery.rdlc';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(Integer; Integer)
        {
            column(SID; SalesQue.Sales_ID)
            {
            }
            column(SalesPerson; SalesQue.Sales_Person)
            {
            }
            column(SAmount; SalesQue.Sales_Amount)
            {
            }
            column(SalesTotal; SalesQue.Sales_Total)
            {
            }
            column(Sales_Person_code; SalesQue.Sales_Person_code)
            {
            }

            //DataItem Level trigger


            trigger OnPreDataItem()
            begin
                SalesQue.OPEN;
            end;

            trigger OnAfterGetRecord()
            begin
                IF NOT SalesQue.READ THEN
                    CurrReport.BREAK;
            end;

            trigger OnPostDataItem()
            begin
                SalesQue.CLOSE;
            end;

        }
    }



    requestpage
    {

        layout
        {

        }

        actions
        {
        }
    }

    labels
    {
    }

    //Report Level trigger
    trigger OnInitReport()
    begin

    end;

    trigger OnPreReport()
    begin

    end;

    trigger OnPostReport()
    begin

    end;

    var
        SalesQue: Query Sales_Que;
}

