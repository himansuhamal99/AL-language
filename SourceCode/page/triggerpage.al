page 50103 "Trigger Table"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Trigger Use";
    CardPageId = triggerCard;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(number1; Rec.number1)
                {
                    ApplicationArea = All;

                }
                field(number2; Rec.number2)
                {
                    ApplicationArea = All;

                }
                field(result; Rec.result)
                {
                    ApplicationArea = All;

                }

            }
        }
        area(Factboxes)
        {

        }
    }

    trigger OnOpenPage()
    
    begin
        Message('Welcome Himansu Hamal Thakuri');
    end;
}