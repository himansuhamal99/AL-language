table 50102 "Trigger Use"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; number1; Decimal)
        {
            DataClassification = CustomerContent;
        }
        field(2; number2; Decimal)
        {
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                myInt: Integer;
            begin
                Rec.result := Rec.number1 + Rec.number2;
                Rec.result := Rec.number1 - Rec.number2;
                Rec.result := Rec.number1 / Rec.number2;
                Rec.result := Rec.number1 * Rec.number2;
                // Rec.Modify();
            end;
        }
        field(3; result; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;

        }
         field(4; "is visible"; Boolean)
        {
            DataClassification = ToBeClassified;
            
        }
    }

    keys
    {
        key(Key1; number1)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }




    var
        myInt: Integer;

    trigger OnInsert()
    begin
        Message('Datainserted %1', number1);

    end;

    // trigger OnModify()
    // begin
    //     Message('Datachanged %1', number2);
    // end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

        Message('Datachanged %1', number1);

    end;

}