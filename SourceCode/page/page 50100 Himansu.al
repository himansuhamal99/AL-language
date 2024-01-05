page 50100 Himansu
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = loanheader;
    CardPageId = Hamal;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(loannumber; Rec.loannumber)
                {
                    ApplicationArea = All;

                }
                field(description_text; Rec.description_text)
                {
                    ApplicationArea = All;

                }
                field(loan_amount; Rec.loan_amount)
                {
                    ApplicationArea = All;

                }
                field(loan_started_date; Rec.loan_started_date)
                {
                    ApplicationArea = All;

                }
                field(loan_ended_date; Rec.loan_ended_date)
                {
                    ApplicationArea = All;

                }
                field(bank_account; Rec.bank_account)
                {
                    ApplicationArea = All;

                }
                field(bank_account_name; Rec.bank_account_name)
                {
                    ApplicationArea = All;

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
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}