page 50099 "Barcode Mgt List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            group("EN 128")
            {
                field("Barcode Value EN128"; En128)
                {
                    ApplicationArea = All;
                }
                field("Barcode Image"; BarcodeDetails."Barcode Image128")
                {
                    ApplicationArea = all;
                    Editable = false;
                }
            }
            group("EN 13")
            {
                field("Barcode Value EN13"; EN13)
                {
                    ApplicationArea = All;
                }
                field("Barcode Image2"; BarcodeDetails."Barcode Image 13")
                {
                    ApplicationArea = all;
                }
            }
            group("EN 39")
            {
                field("Barcode Value EN39"; EN39)
                {
                    ApplicationArea = All;
                }

                field("Barcode Image3"; BarcodeDetails."Barcode Image 39")
                {
                    ApplicationArea = all;
                }
            }
            group("EN 8")
            {
                field("Barcode Value EN8"; EN8)
                {
                    ApplicationArea = All;
                }
                field("Barcode Image4"; BarcodeDetails."Barcode Image EAN 8")
                {
                    ApplicationArea = all;
                }
            }

        }

    }

    actions
    {
        area(Processing)
        {
            action("Generate Barcode")
            {
                ApplicationArea = All;
                Caption = 'Generate Barcode';
                Image = BarCode;
                Promoted = true;
                ToolTip = 'Generate Barcode';
                PromotedIsBig = true;
                PromotedCategory = Process;
                trigger OnAction()
                var

                    barcodemgt: Codeunit BarcodeMgt;
                begin
                    BarcodeDetails.DeleteAll();
                    BarcodeDetails.Init();
                    if En128 <> '' then
                        barcodemgt.EncodeCode128(En128, 2, false, BarcodeDetails);                        
                    if EN13 <> '' then
                        barcodemgt.EncodeEAN13(EN13, 2, false, BarcodeDetails);
                    if en39 <> '' then
                        barcodemgt.EncodeCode39(en39, 2, true, false, BarcodeDetails);
                    if EN8 <> '' then
                        barcodemgt.EncodeEAN8(EN8, 2, false, BarcodeDetails);
                    BarcodeDetails.Insert();
                    CurrPage.Update();
                end;
            }
        }
    }

    var
        En128: text;
        Base64Convert: Codeunit "Base64 Convert";
        CTempBlob: Codeunit "Temp Blob";
        BarcodeDetails: Record "Barcode Details" temporary;

        EN13: Text[20];
        EN39: Text[20];
        EN8: Text[20];
}