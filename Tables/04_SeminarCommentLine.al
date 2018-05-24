table 123456704 "Seminar Comment Line"
// CSD1.00 - 2018-05-24 - Axal
{
    Caption = 'Seminar comment line';
    LookupPageId = "Seminar Comment List";
    DrillDownPageId = "Seminar Comment List";
//    DataClassification = ToBeClassified;
    
    fields
    {
        field(10;"Table Name";Option)
        {
            Caption = 'Table name';
            OptionMembers="Seminar","Seminar Registration Header","Posted Seminar Reg. Header";
            OptionCaption='Seminar,Seminar registration header,Posted seminar reg. Header';
        }

       field(20;"Document Line No.";Integer)
        {
            Caption = 'Document Line No.';
            
        }

       field(30;"No.";code[20])
        {
            Caption = 'No.';
            TableRelation=if("Table Name"=const(Seminar)) Seminar;
        }


       field(40;"Line No.";Integer)
        {
            Caption = '';
            
        }
       field(50;Date;Date)
        {
            Caption = 'Date';
            
        }
       field(60;Code;Code[10])
        {
            Caption = 'Code';
            
        }
       field(70;Comment;Text[80])
        {
            Caption = 'Comment';
            
        }

    }

    keys
    {
        key(PK;"Table Name","Document Line No.","Line No.")
        {
            Clustered = true;
        }
    }
    
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