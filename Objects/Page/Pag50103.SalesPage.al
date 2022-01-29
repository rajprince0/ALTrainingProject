page 50103 "Sales_Page"
{
    ApplicationArea = All;
    Caption = 'AL Sales';
    PageType = List;
    SourceTable = Sales_Table;
    UsageCategory = Lists;


    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Sales ID"; Rec."Sales ID")
                {
                    ApplicationArea = All;
                }
                field("Sales Person"; Rec."Sales Person")
                {
                    ApplicationArea = All;
                }
                field("Sales Amount"; Rec."Sales Amount")
                {
                    ApplicationArea = All;
                }
                field("Sales Person code"; Rec."Sales Person code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
    }
}

