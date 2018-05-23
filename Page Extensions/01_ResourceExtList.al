pageextension 123456701 CSD_ResourcelistExt extends "Resource List"
// CSD1.00 - 2018-05-23 Axal
// Chapter 5 - lab 1-3
{
    layout

    {
        modify(Type)
        {
            Visible = ShowType;
        }

        addafter(Type)

        {
            field("Resource Type"; "CSD_Resource Type")
            {
            }
            field("Maximum Participants"; "CSD_Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
  
    trigger OnOpenPage();

    begin

        FilterGroup(3);

        ShowType := (GetFilter(Type) = '');

        ShowMaxField := (GetFilter(Type) = format(Type::machine));

        FilterGroup(0);

    end;

    var

        [InDataSet]
        ShowMaxField: Boolean;

        [InDataSet]
        Showtype: Boolean;
}