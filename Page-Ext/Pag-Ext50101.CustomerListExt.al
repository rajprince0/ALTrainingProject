pageextension 50101 CustomerListExt extends "Customer List"
{
    layout
    {
        addbefore("Location Code")
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
}
