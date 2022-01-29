page 50101 "Trainee Card"
{
    Caption = 'Trainee Card';
    PageType = Card;
    SourceTable = Trainees;
    PromotedActionCategories = 'New,Process,Report,Test File,Navigate';

    layout
    {
        area(content)
        {
            group(General)
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
            }
            group("Address & Contact")
            {
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field.';
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ToolTip = 'Specifies the value of the Email field.';
                    ApplicationArea = All;
                }
                field("Mobile No."; Rec."Mobile No.")
                {
                    ToolTip = 'Specifies the value of the Mobile No. field.';
                    ApplicationArea = All;
                }
                field(Postcode; Rec.Postcode)
                {
                    ToolTip = 'Specifies the value of the Postcode field.';
                    ApplicationArea = All;
                }
            }
            group(Invoicing)
            {
                field("Trainee Subject"; Rec."Trainee Subject")
                {
                    ToolTip = 'Specifies the value of the Trainee Subject field.';
                    ApplicationArea = All;
                }
                field("Admission Date"; Rec."Admission Date")
                {
                    ToolTip = 'Specifies the value of the Admission Date field.';
                    ApplicationArea = All;
                }
                field(Fees; Rec.Fees)
                {
                    ToolTip = 'Specifies the value of the Fees field.';
                    ApplicationArea = All;
                }
                field(Color; Rec.Color)
                {
                    ToolTip = 'Specifies the value of the color field.';
                    ApplicationArea = All;
                }
                field("G/L Accnt No."; Rec."G/L Accnt No.")
                {
                    ApplicationArea = All;
                }
                field("G/L Amount"; Rec."G/L Amount")
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
            action("Assignment Statement")
            {
                ApplicationArea = All;
                Image = TestFile;
                PromotedCategory = Category4;
                Promoted = true;
                RunObject = codeunit "Assignment Statement Operation";
            }
            action("Operators")
            {
                ApplicationArea = All;
                Image = TestReport;
                PromotedCategory = Category4;
                Promoted = true;
                RunObject = codeunit "Arithmetic Operators";

            }
            action("Functions")
            {
                ApplicationArea = All;
                Image = TestDatabase;
                PromotedCategory = Category4;
                Promoted = true;
                RunObject = codeunit "AL Functions";

            }
            action("AL Statements")
            {
                ApplicationArea = All;
                Image = TestDatabase;
                PromotedCategory = Category4;
                Promoted = true;
                RunObject = codeunit "AL Main Functions";
            }
            action("Sales Query")
            {
                ApplicationArea = All;
                Image = Sales;
                PromotedCategory = Category4;
                Promoted = true;
                RunObject = query Sales_Que;
            }
            action("Trainee Import/Export")
            {
                ApplicationArea = All;
                Image = ImportExport;
                PromotedCategory = Category4;
                Promoted = true;
                RunObject = xmlport "Trainees Import/Export";
            }
            action("ProcessingOnly")
            {
                ApplicationArea = All;
                Image = ImportExport;
                PromotedCategory = Category4;
                Promoted = true;
                RunObject = report SampleProcessOnly;
            }
        }
    }

}
