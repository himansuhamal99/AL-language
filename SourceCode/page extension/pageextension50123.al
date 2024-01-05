pageextension 50112 MyExtension extends "Vendor List"
{
    layout
    {   
        addafter("No.")
        {
                field(Kabasxa; Rec.Kabasxa)
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