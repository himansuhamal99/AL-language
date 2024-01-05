table 50100 loanheader
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;loannumber; Code[100])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; description_text; Text[20])
        {
            DataClassification = ToBeClassified;

        }
        
        field(3; loan_amount; Decimal)
        {
            DataClassification = ToBeClassified;
            
        }

        field(4; loan_started_date; Date)
        {
            DataClassification = ToBeClassified;
            
        }
        field(5; loan_ended_date; Date)
        {
            DataClassification = ToBeClassified;
            
        }
        field(6; bank_account; Code[100])
        {
            DataClassification = ToBeClassified;
            
        }
        field(7; bank_account_name; Text[50])
        {
            DataClassification = ToBeClassified;
            
        }
        field(8; "is visible"; Boolean)
        {
            DataClassification = ToBeClassified;
            
        }
    }

    
    keys
    {
        key(Key1; loannumber)
        {
            Clustered = true;
        }
    }
    
    
}