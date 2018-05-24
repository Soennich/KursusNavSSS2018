page 123456702 "Seminar List"
// CSD1.00 - 2018-05-24 - Axal
{
    Caption = 'Seminar list';
    PageType = List;
    SourceTable = Seminar;
    Editable = false;
    CardPageId = 123456701;
    UsageCategory = Lists;


    layout
    {
        area(content)
        {
            repeater(Group)
            {

                field("No.";"No.")
                {
                    Caption='Number';
                    trigger OnAssistEdit();
                                           
                    begin
                        if AssistEdit then
                            CurrPage.Update;    
                    end;
                }


                field(Name;Name)
                {
                    Caption = 'name';
                    
                }

                field("Seminar Duration";"Seminar Duration")
                {
                    Caption = 'Seminar duration';
                    
                }

                field("Minimum Participants";"Minimum Participants")
                {
                    Caption = 'Minimum participants';
                    
                }

                field("Maximum Participants";"Maximum Participants")
                {
                    Caption = 'Maximum participants';
                    
                }

            }
        }

        area(FactBoxes)
        {
            systempart("Links";Links)
            {

            }
            systempart("Notes";Notes)
            {

            }
        }

    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {               
//                    RunObject=page "Seminar Comment Sheet";
//                    RunPageLink = "Table
//                    Name"=const(Seminar),"No."=field("No.");
//                    Image = Comment;
                }
            }
        }   
    }
 
}