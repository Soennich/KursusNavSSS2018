page 123456707 "Seminar Comment List"
{
    Caption = 'Seminar comment list';
    PageType = List;
    Editable = false;
    SourceTable = "Seminar Comment Line";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                    Caption = 'Date';
                }

                field(Code;Code)
                {
                    Caption = 'Code';
                    Visible = false;
                }

                field(Comment;Comment)
                {
                    Caption = 'Comment';
                }


            }
        }
  
    }

   
}