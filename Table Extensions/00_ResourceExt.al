tableextension 123456700 CSD_ResourceExt extends Resource
//CSD1.00 - 2018-01-01 - D. E. Veloper
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin
              rec.TestField("Unit Cost");  
            end;
        }
        field(123456701; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers ="Internal","External" ;
            optionCaption ='Internal,External'
        }
        field(123456702;"CSD_Maximum Participants";Integer)
        {
            caption = 'Maximum Participants'
        }
        field(123456703;"CSD_Quantity Per Day";Integer)
        {
            caption = 'Quantity Per Day';
        }
        // Add changes to table fields here
    }
    
    var
        myInt : Integer;
}