page 50104 "SalesPerson_Page"
{
    PageType = List;
    Caption = 'AL Sales Person';
    SourceTable = SalesPerson_Table;
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Sales Person"; rec."Sales Person")
                {
                    ApplicationArea = All;
                }
                field("Sales Total"; Rec."Sales Total")
                {
                    ApplicationArea = All;
                }
                field("Sales Code"; Rec."Sales Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action("Sales Query report")
            {
                ApplicationArea = All;
                Image = Report;
                PromotedCategory = Category4;
                Promoted = true;
                RunObject = report "Report Using Query";
            }
        }
    }
}

