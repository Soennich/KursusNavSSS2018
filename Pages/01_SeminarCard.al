page 123456701 "Seminar Card"
{
    PageType = Card;
    SourceTable = Seminar;
    Caption = 'Seminar';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    Caption = 'Number';
                    trigger OnAssistEdit();

                    begin
                        if AssistEdit then
                            CurrPage.Update;
                    end;
                }

                field(Name; Name)
                {
                    Caption = 'Name';
                }

                field("Search Name"; "Search Name")
                {
                    Caption = 'Search name';
                }

                field("Seminar Duration"; "Seminar Duration")
                {
                    Caption = 'Seminar duration';
                }

                field("Minimum Participants"; "Minimum Participants")
                {
                    Caption = 'Minimum participants';
                }

                field("Maximum Participants"; "Maximum Participants")
                {
                    Caption = 'Maximum partipants';
                }

                field(Blocked; Blocked)
                {
                    Caption = 'Blocked';
                }

                field("Last Date Modified"; "Last Date Modified")
                {
                    Caption = 'Last date modified';
                }


            }

            group(Invoicing)
            {

                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                    Caption = 'Gen. prod. posting group';
                }

                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                    Caption = 'VAT prod. posting group';
                }

                field("Seminar Price"; "Seminar Price")
                {
                    Caption = 'Seminar';
                }

            }
        }

        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
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
                    //                    RunObject=page "Seminar comment Sheet";
                    //                    RunPageLink = "Table Name" = const(Seminar),"No."=field("No.");

                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;

                }

                // >> Lab 8 1-2
                action("Ledger Entries")
                {
                    RunObject = page "Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field ("No.");
                    Promoted = true;
                    PromotedCategory = Process;
                    ShortcutKey = "Ctrl+F7";
                    Image = WarrantyLedger;
                }
                // << Lab 8 1-2

                // >> Lab 8 1-2
                action("&Registrations")
                {
                    RunObject = page "Seminar Registration List";
                    RunPageLink = "Seminar No." = field ("No.");
                    Image = Timesheet;
                    Promoted = true;
                    PromotedCategory = Process;
                }
                // << Lab 8 1-2

            }
        }


        // >> Lab 8 1-2
        area(Processing)
        {
            action("Seminar Registration")
            {
                RunObject = page "Seminar Registration";
                RunPageLink = "Seminar No." = field ("No.");
                RunPageMode = Create;
                Image = NewTimesheet;

            }


        }
    }
}