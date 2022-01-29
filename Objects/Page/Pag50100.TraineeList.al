page 50100 "Trainee List"
{
    ApplicationArea = All;
    Caption = 'Trainee List';
    PageType = List;
    SourceTable = Trainees;
    UsageCategory = Lists;
    CardPageId = "Trainee Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Trainee ID"; Rec."Trainee ID")
                {
                    ToolTip = 'Specifies the value of the Trainee ID field.';
                    ApplicationArea = All;
                }
                field("Trainee Name"; Rec."Trainee Name")
                {
                    ToolTip = 'Specifies the value of the Trainee Name field.';
                    ApplicationArea = All;
                }
                field("Admission Date"; Rec."Admission Date")
                {
                    ToolTip = 'Specifies the value of the Admission Date field.';
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                    ApplicationArea = All;
                }
                field("Trainee Subject"; Rec."Trainee Subject")
                {
                    ToolTip = 'Specifies the value of the Trainee Subject field.';
                    ApplicationArea = All;
                }
                field(Fees; Rec.Fees)
                {
                    ToolTip = 'Specifies the value of the Fees field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
