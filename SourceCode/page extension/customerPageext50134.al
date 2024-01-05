pageextension 50134 pageko extends "Customer List"
{
    layout
    {
        addafter("No.")
        {
            field("naya saman";Rec."naya saman")
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