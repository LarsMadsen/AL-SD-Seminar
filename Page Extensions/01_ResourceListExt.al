pageextension 123456701 ResourceListExt extends "Resource List"
//CSD1.00 - 2018 - 01-01 - D. E. Veloper
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("CSD Resource Type";"CSD Resource Type")
            {

            }
            field("CSD_Maximum Participants";"CSD_Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage();
    begin
        FilterGroup(3);
        ShowType := (getfilter(Type)='');
        showMaxField := (GetFilter(Type))=format(Type::Machine);
        FilterGroup(0);
    end;
    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        ShowType: boolean;
        

}