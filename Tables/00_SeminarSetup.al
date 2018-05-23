table 123456700 "Seminar Setup"
// CSD1.00 - 2018-05-23 Axal
{
    Caption = 'Seminar Setup';

    DataClassification = ToBeClassified;
    
    
    fields
    {
        field(10;"Primary Key";Code[10])
        {
            Caption = 'primary Key';
        }

        field(20;"Seminar Nos.";Code[20])
        {
            Caption = 'Seminar Nos.';
            TableRelation = "No. Series";
        }
        field(30;"Seminar Registration Nos.";code[20])
        {
            Caption = 'Seminar Registration Nos.';
            TableRelation = "No. Series";
        }
        field(40;"Posted Seminar Reg. Nos.";code[20])
        {   
            Caption = 'Posted Seminar Reg. Nos.';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(PK;"Primary Key")
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}