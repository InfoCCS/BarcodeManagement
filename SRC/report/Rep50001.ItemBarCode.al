report 50001 "ItemBarCode"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    Caption = 'Item Barcodes';
    RDLCLayout = 'ItemBarcodes.rdlc';
    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.";
            RequestFilterHeading = 'Items';
            column(No_; "No.")
            {
            }
            column(Description; Description)
            {
            }
            column(Aztec; Aztec)
            {
            }
            column(DataMatrix; DataMatrix)
            {
            }
            column(MaxiCode; MaxiCode)
            {
            }
            column(PDF417; PDF417)
            {
            }
            column(QRCode; QRCode)
            {
            }
            trigger OnAfterGetRecord()
            var
                Base64Convert2: Codeunit Base64Convert;
                Amt: Decimal;
                Amt2: text;
                AmtVat: Decimal;
                AmtVat2: Text;
                PosDate: date;
                PosDate2: Text;
                base64str: text;
                FileManagement: Codeunit "File Management";
                TempBlob: Codeunit "Temp Blob";
                Base64CU: Codeunit "Base64 Convert";
                DataBASE64: Text;
                VarOutStream: OutStream;
                instrem: InStream;
                fname: text;
                Recref: recordRef;
            begin
                Amt := 5.10;
                AmtVat := 10.20;
                PosDate := today;
                Amt2 := format(Amt);
                TempBlob.CreateOutStream(VarOutStream);
                Amt2 := DELCHR(FORMAT(amt), '=', ',');
                PosDate2 := '20' + (FORMAT(PosDate, 0, '<Year,2>-<Month,2>-<Day,2>'));
                PosDate2 := PosDate2 + ' ' + FORMAT(TIME, 0, '<Hours24>:<Minutes,2>:<Seconds,2>');
                base64str := Base64Convert2.TextToBase64String(amt2 + AmtVat2 + PosDate2);
                Base64CU.FromBase64(base64str, VarOutStream);
                // TempBlob.CreateInStream(instrem);

                Recref.Open(Database::item);
                Recref.GetTable(Item);
                TempBlob.ToRecordRef(Recref, item.FieldNo(Picture));
                Recref.SetTable(item);
                Recref.Close();

                fname := 'nitin.jpg';
                // GenerateAztec(base64str);
                // GenerateDataMatrix();
                // GenerateMaxiCode();
                // GeneratePDF417();
                GenerateQRCode(base64str);
                DownloadFromStream(instrem, '', '', '', fname);
            end;
        }
    }
    local procedure GenerateAztec(base64str: Text)
    var
        BarcodeSymbology2D: Enum "Barcode Symbology 2D";
        BarcodeFontProvider2D: Interface "Barcode Font Provider 2D";
        BarcodeString: Text;
    begin
        BarcodeFontProvider2D := Enum::"Barcode Font Provider 2D"::IDAutomation2D;
        BarcodeSymbology2D := Enum::"Barcode Symbology 2D"::Aztec;
        // BarcodeString := Item."No.";
        BarcodeString := base64str;
        Aztec := BarcodeFontProvider2D.EncodeFont(BarcodeString, BarcodeSymbology2D);
    end;

    local procedure GenerateDataMatrix()
    var
        BarcodeSymbology2D: Enum "Barcode Symbology 2D";
        BarcodeFontProvider2D: Interface "Barcode Font Provider 2D";
        BarcodeString: Text;
    begin
        BarcodeFontProvider2D := Enum::"Barcode Font Provider 2D"::IDAutomation2D;
        BarcodeSymbology2D := Enum::"Barcode Symbology 2D"::"Data Matrix";
        BarcodeString := Item."No.";
        DataMatrix := BarcodeFontProvider2D.EncodeFont(BarcodeString, BarcodeSymbology2D);
    end;

    local procedure GenerateMaxiCode()
    var
        BarcodeSymbology2D: Enum "Barcode Symbology 2D";
        BarcodeFontProvider2D: Interface "Barcode Font Provider 2D";
        BarcodeString: Text;
    begin
        BarcodeFontProvider2D := Enum::"Barcode Font Provider 2D"::IDAutomation2D;
        BarcodeSymbology2D := Enum::"Barcode Symbology 2D"::"Maxi Code";
        BarcodeString := Item."No.";
        MaxiCode := BarcodeFontProvider2D.EncodeFont(BarcodeString, BarcodeSymbology2D);
    end;

    local procedure GeneratePDF417()
    var
        BarcodeSymbology2D: Enum "Barcode Symbology 2D";
        BarcodeFontProvider2D: Interface "Barcode Font Provider 2D";
        BarcodeString: Text;
    begin
        BarcodeFontProvider2D := Enum::"Barcode Font Provider 2D"::IDAutomation2D;
        BarcodeSymbology2D := Enum::"Barcode Symbology 2D"::PDF417;
        BarcodeString := Item."No.";
        PDF417 := BarcodeFontProvider2D.EncodeFont(BarcodeString, BarcodeSymbology2D);
    end;

    local procedure GenerateQRCode(base64str: text)
    var
        BarcodeSymbology2D: Enum "Barcode Symbology 2D";
        BarcodeFontProvider2D: Interface "Barcode Font Provider 2D";
        BarcodeString: Text;

    begin
        BarcodeFontProvider2D := Enum::"Barcode Font Provider 2D"::IDAutomation2D;
        BarcodeSymbology2D := Enum::"Barcode Symbology 2D"::"QR-Code";
        // BarcodeString := Item."No.";
        BarcodeString := base64str;
        QRCode := BarcodeFontProvider2D.EncodeFont(BarcodeString, BarcodeSymbology2D);
    end;

    var
        Aztec: Text;
        DataMatrix: Text;
        MaxiCode: Text;
        PDF417: Text;
        QRCode: Text;
}