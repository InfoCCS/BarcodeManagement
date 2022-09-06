table 50100 "Barcode Details"
{
    Caption = 'Barcode Details';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Barcode Image128"; Blob)
        {
            Caption = 'Barcode Image';
            DataClassification = ToBeClassified;
            Subtype = Bitmap;

        }
        field(3; "Barcode Image 13"; Blob)
        {
            Caption = 'Barcode Image 13';
            DataClassification = ToBeClassified;
            Subtype = Bitmap;

        }
        field(4; "Barcode Image 39"; Blob)
        {
            Caption = 'Barcode Image 39';
            DataClassification = ToBeClassified;
            Subtype = Bitmap;

        }
        field(5; "Barcode Image EAN 8"; Blob)
        {
            Caption = 'Barcode Image EAN 8';
            DataClassification = ToBeClassified;
            Subtype = Bitmap;

        }
        field(2; "Entry No."; Guid)
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

}
