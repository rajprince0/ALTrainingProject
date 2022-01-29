query 50100 "Sales_Que"
{

    elements
    {
        dataitem(Sales_Table; Sales_Table)
        {
            column(Sales_ID; "Sales ID")
            {
            }
            column(Sales_Person; "Sales Person")
            {
            }
            column(Sales_Amount; "Sales Amount")
            {
            }
            column(Sales_Person_code; "Sales Person code")
            {

            }
            dataitem(SalesPerson_Table; SalesPerson_Table)
            {
                DataItemLink = "Sales Code" = Sales_Table."Sales Person code";
                column(Sales_Total; "Sales Total")
                {
                }
            }
        }
    }
}

