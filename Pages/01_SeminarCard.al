page 123456701 "Seminar Card"
{
    PageType = Card;
    SourceTable = Seminar;
    Caption='Seminar';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No.";"No.")
                {
                    Caption='Number';
                }

                field(Name;Name)
                {
                    Caption='Name';
                }

                field("Search Name";"Search Name")
                {
                    Caption='Search name';
                }

                field("Seminar Duration";"Seminar Duration")
                {
                    Caption='Seminar duration';
                }

                field("Minimum Participants";"Minimum Participants")
                {
                    Caption='Minimum participants';
                }

                field("Maximum Participants";"Maximum Participants")
                {
                    Caption='Maximum partipants';
                }

                field(Blocked;Blocked)
                {
                    Caption='Blocked';
                }

                field("Last Date Modified";"Last Date Modified")
                {
                    Caption='Last date modified';
                }


            }

            group(Invoicing)
            {

                field("Gen. Prod. Posting Group";"Gen. Prod. Posting Group")
                {
                    Caption='Gen. prod. posting group';
                }

                field("VAT Prod. Posting Group";"VAT Prod. Posting Group")
                {
                    Caption='VAT prod. posting group';
                }

                field("Seminar Price";"Seminar Price")
                {
                    Caption='Seminar';
                }

            }
        }

        area(FactBoxes)
        {
            systempart("Links";Links)
            {

            }
            systempart("Notes",Notes)
            {
                
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
    
    var
        myInt : Integer;
}