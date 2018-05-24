page 123456706 "Seminar Comment Sheet"
{
    Caption = 'Seminar comment sheet';
    PageType = List;
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