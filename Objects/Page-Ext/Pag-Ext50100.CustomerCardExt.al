pageextension 50100 "CustomerCardExt" extends "Customer Card"
{
    layout
    {
        addafter("Disable Search by Name")
        {
            field("Default Account"; Rec."Default Account")
            {
                ApplicationArea = All;
            }
            field("Default Amount"; Rec."Default Amount")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}