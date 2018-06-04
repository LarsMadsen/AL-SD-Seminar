pageextension 123456700 CSD_ResourceCardExt extends "Resource Card"
// CSD1.00 - 2018-02-01- D. E. Veloper
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            { }

            field("CSD_Quantity Per Day"; "CSD_Quantity Per Day")
            { }

        }
        addafter("Personal Data")
        {
            Group("Room")
            {
                field("CSD_Maximum Participants"; "CSD_Maximum Participants")
                { 
                    visible = ShowMaxField;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage();
    var
    begin
       ShowMaxField := (Type = Type::Machine);
       CurrPage.update(false); 
    end;
    var
        [InDataSet]
        ShowMaxField: Boolean;

}