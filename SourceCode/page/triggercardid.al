page 50109 triggerCard
{
    PageType = Card;
    SourceTable = "Trigger Use";

    layout
    {
        area(Content)
        {
            group(GroupName)
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
                field("is visible"; rec."is visible")
                {
                    ApplicationArea = All;
                    Editable = MakeItvisible;

                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(Add)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    Rec.result := Rec.number1 + Rec.number2;
                end;
            }
            action(Multiply)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    if rec.number1 = 0 then
                        Error('Cannot Multiply')
                    else
                        if Rec.number2 = 0 then
                            Error('Cannot multiply')
                        else
                            Rec.result := Rec.number1 * Rec.number2;
                end;
            }
            action(Divide)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    if rec.number1 = 0 then
                        Error('Cannot Divide')
                    else
                        if Rec.number2 = 0 then
                            Error('Cannot Divide')
                        else
                            Rec.result := Rec.number1 / Rec.number2;
                end;
            }
            action(Subtraction)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    if rec.number1 < rec.number2 then
                        Error('Cannot Subtract')
                    else
                        Rec.result := Rec.number1 - Rec.number2;

                end;
            }
        }
    }
    trigger OnOpenPage()
    begin
        if not Rec."is visible" then begin
            rec."is visible" := true;
            rec.Modify();
        end;
    end;

    trigger OnAfterGetRecord()

    begin
        if rec.result <> 0 then
            MakeItvisible := true;

    end;

    var
        MakeItvisible: Boolean;

}