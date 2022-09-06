page 50111 "CDS Show Data"
{
    // Testing

    ApplicationArea = All;
    Caption = 'CDS Show Data';
    PageType = List;
    SourceTable = "CDS Account";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Legal Name field';
                    ApplicationArea = All;
                }
                field(YomiName; Rec.YomiName)
                {
                    ToolTip = 'Specifies the value of the Yomi Account Name field';
                    ApplicationArea = All;
                }
                field(ceda_SyncStatus; Rec.ceda_SyncStatus)
                {
                    ToolTip = 'Specifies the value of the Sync Status field';
                    ApplicationArea = All;
                }
                field(ceda_ReadyToSync; Rec.ceda_ReadyToSync)
                {
                    ToolTip = 'Specifies the value of the Ready To Sync field';
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnInit()
    begin

    end;
}
