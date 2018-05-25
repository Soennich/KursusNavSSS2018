pageextension 123456700 CSD_ResourceCardExt extends "Resource Card"
// CSD1.00 - 2018-05-23 Axal Consult
{
    layout
    {
        addlast(General)
        {
            field("Resource Type"; "CSD_Resource Type")
            {
                Caption = 'Resource type';
            }
            field("Quantity per Day"; "CSD_Quantity Per Day")
            {
                Caption = 'Quantity per day';
            }
        }
        addafter("Personal Data")
            {
            group("Room")
            {
                field("Maximum Participants"; "CSD_Maximum Participants")
                {
                    Caption = 'Maximum participants';
                    Visible = ShowMaxField;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnOpenPage();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;

}