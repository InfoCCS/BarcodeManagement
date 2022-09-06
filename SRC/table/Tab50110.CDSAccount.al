table 50110 "CDS Account"
{
    ExternalName = 'account';
    TableType = CDS;
    Description = 'Person with whom a business unit has a relationship, such as customer, supplier, and colleague.';

    fields
    {
        field(1; AccountId; GUID)
        {
            ExternalName = 'accountid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Insert;
            Description = 'Unique identifier of the account.';
            Caption = 'Account';
        }
        field(2; AccountCategoryCode; Option)
        {
            ExternalName = 'accountcategorycode';
            ExternalType = 'Picklist';
            Description = 'Select a category to indicate whether the customer account is standard or preferred.';
            Caption = 'Category';
            InitValue = " ";
            OptionMembers = " ",PreferredCustomer,Standard;
            OptionOrdinalValues = -1, 1, 2;
        }
        field(5; CustomerSizeCode; Option)
        {
            ExternalName = 'customersizecode';
            ExternalType = 'Picklist';
            Description = 'Select the size category or range of the account for segmentation and reporting purposes.';
            Caption = 'Customer Size';
            InitValue = DefaultValue;
            OptionMembers = DefaultValue;
            OptionOrdinalValues = 1;
        }
        field(6; PreferredContactMethodCode; Option)
        {
            ExternalName = 'preferredcontactmethodcode';
            ExternalType = 'Picklist';
            Description = 'Select the preferred method of contact.';
            Caption = 'Preferred Method of Contact';
            InitValue = Any;
            OptionMembers = Any,Email,Phone,Fax,Mail;
            OptionOrdinalValues = 1, 2, 3, 4, 5;
        }
        field(7; CustomerTypeCode; Option)
        {
            ExternalName = 'customertypecode';
            ExternalType = 'Picklist';
            Description = 'Select the category that best describes the relationship between the account and your organization.';
            Caption = 'Primary relationship';
            InitValue = "Non-Member";
            OptionMembers = Member,"Non-Member","Ex-Member",Donor;
            OptionOrdinalValues = 2, 1, 3, 952230001;
        }
        field(8; AccountRatingCode; Option)
        {
            ExternalName = 'accountratingcode';
            ExternalType = 'Picklist';
            Description = 'Select a rating to indicate the value of the customer account.';
            Caption = 'Account Rating';
            InitValue = DefaultValue;
            OptionMembers = DefaultValue;
            OptionOrdinalValues = 1;
        }
        field(9; IndustryCode; Option)
        {
            ExternalName = 'industrycode';
            ExternalType = 'Picklist';
            Description = 'Select the account''s primary industry for use in marketing segmentation and demographic analysis.';
            Caption = 'Industry';
            InitValue = " ";
            OptionMembers = " ",Accounting,"AgricultureAndNon-petrolNaturalResourceExtraction",BroadcastingPrintingAndPublishing,Brokers,BuildingSupplyRetail,BusinessServices,Consulting,ConsumerServices,DesignDirectionAndCreativeManagement,DistributorsDispatchersAndProcessors,DoctorsOfficesAndClinics,DurableManufacturing,EatingAndDrinkingPlaces,EntertainmentRetail,EquipmentRentalAndLeasing,Financial,FoodAndTobaccoProcessing,InboundCapitalIntensiveProcessing,InboundRepairAndServices,Insurance,LegalServices,"Non-DurableMerchandiseRetail",OutboundConsumerService,PetrochemicalExtractionAndDistribution,ServiceRetail,SIGAffiliations,SocialServices,SpecialOutboundTradeContractors,SpecialtyRealty,Transportation,UtilityCreationAndDistribution,VehicleRetail,Wholesale;
            OptionOrdinalValues = -1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33;
        }
        field(10; TerritoryCode; Option)
        {
            ExternalName = 'territorycode';
            ExternalType = 'Picklist';
            Description = 'Select a region or territory for the account for use in segmentation and analysis.';
            Caption = 'Territory Code';
            InitValue = DefaultValue;
            OptionMembers = DefaultValue;
            OptionOrdinalValues = 1;
        }
        field(11; AccountClassificationCode; Option)
        {
            ExternalName = 'accountclassificationcode';
            ExternalType = 'Picklist';
            Description = 'Select a classification code to indicate the potential value of the customer account based on the projected return on investment, cooperation level, sales cycle length or other criteria.';
            Caption = 'Organisation Type';
            InitValue = " ";
            OptionMembers = " ",FederalGovernmentEntity,StateGovernmentEntity,LocalGovernmentEntity,NotForProfit,PrivateCompany,"Public(Listed)","Public(Unlisted)",SoleTrader,"Individual(forIndividualMember)";
            OptionOrdinalValues = -1, 1, 952230004, 952230005, 952230000, 952230001, 952230002, 952230003, 952230006, 952230007;
        }
        field(13; BusinessTypeCode; Option)
        {
            ExternalName = 'businesstypecode';
            ExternalType = 'Picklist';
            Description = 'Select the legal designation or other business type of the account for contracts or reporting purposes.';
            Caption = 'Business Type';
            InitValue = DefaultValue;
            OptionMembers = DefaultValue;
            OptionOrdinalValues = 1;
        }
        field(15; TraversedPath; Text[1250])
        {
            ExternalName = 'traversedpath';
            ExternalType = 'String';
            Description = 'For internal use only.';
            Caption = '(Deprecated) Traversed Path';
        }
        field(18; PaymentTermsCode; Option)
        {
            ExternalName = 'paymenttermscode';
            ExternalType = 'Picklist';
            Description = 'Select the payment terms to indicate when the customer needs to pay the total amount.';
            Caption = 'Payment Terms';
            InitValue = " ";
            OptionMembers = " ",Net30,"2%10Net30",Net45,Net60;
            OptionOrdinalValues = -1, 1, 2, 3, 4;
        }
        field(19; ShippingMethodCode; Option)
        {
            ExternalName = 'shippingmethodcode';
            ExternalType = 'Picklist';
            Description = 'Select a shipping method for deliveries sent to the account''s address to designate the preferred carrier or other delivery option.';
            Caption = 'Shipping Method';
            InitValue = DefaultValue;
            OptionMembers = DefaultValue;
            OptionOrdinalValues = 1;
        }
        field(21; ParticipatesInWorkflow; Boolean)
        {
            ExternalName = 'participatesinworkflow';
            ExternalType = 'Boolean';
            Description = 'For system use only. Legacy Microsoft Dynamics CRM 3.0 workflow data.';
            Caption = 'Participates in Workflow';
        }
        field(22; Name; Text[160])
        {
            ExternalName = 'name';
            ExternalType = 'String';
            Description = 'Type the company or business name.';
            Caption = 'Legal Name';
        }
        field(23; AccountNumber; Text[20])
        {
            ExternalName = 'accountnumber';
            ExternalType = 'String';
            Description = 'Type an ID number or code for the account to quickly search and identify the account in system views.';
            Caption = 'Account Number';
        }
        field(24; Revenue; Decimal)
        {
            ExternalName = 'revenue';
            ExternalType = 'Money';
            Description = 'Type the annual revenue for the account, used as an indicator in financial performance analysis.';
            Caption = 'Annual Revenue';
        }
        field(25; NumberOfEmployees; Integer)
        {
            ExternalName = 'numberofemployees';
            ExternalType = 'Integer';
            Description = 'Type the number of employees that work at the account for use in marketing segmentation and demographic analysis.';
            Caption = 'Number of Employees';
        }
        field(26; Description; BLOB)
        {
            ExternalName = 'description';
            ExternalType = 'Memo';
            Description = 'Type additional information to describe the account, such as an excerpt from the company''s website.';
            Caption = 'Description';
            Subtype = Memo;
        }
        field(27; SIC; Text[20])
        {
            ExternalName = 'sic';
            ExternalType = 'String';
            Description = 'Type the Standard Industrial Classification (SIC) code that indicates the account''s primary industry of business, for use in marketing segmentation and demographic analysis.';
            Caption = 'SIC Code';
        }
        field(28; OwnershipCode; Option)
        {
            ExternalName = 'ownershipcode';
            ExternalType = 'Picklist';
            Description = 'Select the account''s ownership structure, such as public or private.';
            Caption = 'Ownership';
            InitValue = " ";
            OptionMembers = " ",Public,Private,Subsidiary,Other;
            OptionOrdinalValues = -1, 1, 2, 3, 4;
        }
        field(29; MarketCap; Decimal)
        {
            ExternalName = 'marketcap';
            ExternalType = 'Money';
            Description = 'Type the market capitalization of the account to identify the company''s equity, used as an indicator in financial performance analysis.';
            Caption = 'Market Capitalization';
        }
        field(30; SharesOutstanding; Integer)
        {
            ExternalName = 'sharesoutstanding';
            ExternalType = 'Integer';
            Description = 'Type the number of shares available to the public for the account. This number is used as an indicator in financial performance analysis.';
            Caption = 'Shares Outstanding';
        }
        field(31; TickerSymbol; Text[10])
        {
            ExternalName = 'tickersymbol';
            ExternalType = 'String';
            Description = 'Type the stock exchange symbol for the account to track financial performance of the company. You can click the code entered in this field to access the latest trading information from MSN Money.';
            Caption = 'Ticker Symbol';
        }
        field(32; StockExchange; Text[20])
        {
            ExternalName = 'stockexchange';
            ExternalType = 'String';
            Description = 'Type the stock exchange at which the account is listed to track their stock and financial performance of the company.';
            Caption = 'Stock Exchange';
        }
        field(33; WebSiteURL; Text[200])
        {
            ExternalName = 'websiteurl';
            ExternalType = 'String';
            Description = 'Type the account''s website URL to get quick details about the company profile.';
            Caption = 'Website';
        }
        field(34; FtpSiteURL; Text[200])
        {
            ExternalName = 'ftpsiteurl';
            ExternalType = 'String';
            Description = 'Type the URL for the account''s FTP site to enable users to access data and share documents.';
            Caption = 'FTP Site';
        }
        field(35; EMailAddress1; Text[100])
        {
            ExternalName = 'emailaddress1';
            ExternalType = 'String';
            Description = 'Type the primary email address for the account.';
            Caption = 'Email';
        }
        field(36; EMailAddress2; Text[100])
        {
            ExternalName = 'emailaddress2';
            ExternalType = 'String';
            Description = 'Type the secondary email address for the account.';
            Caption = 'Email Address 2';
        }
        field(37; EMailAddress3; Text[100])
        {
            ExternalName = 'emailaddress3';
            ExternalType = 'String';
            Description = 'Type an alternate email address for the account.';
            Caption = 'Email Address 3';
        }
        field(38; DoNotPhone; Boolean)
        {
            ExternalName = 'donotphone';
            ExternalType = 'Boolean';
            Description = 'Select whether the account allows phone calls. If Do Not Allow is selected, the account will be excluded from phone call activities distributed in marketing campaigns.';
            Caption = 'Do not allow Phone Calls';
        }
        field(39; DoNotFax; Boolean)
        {
            ExternalName = 'donotfax';
            ExternalType = 'Boolean';
            Description = 'Select whether the account allows faxes. If Do Not Allow is selected, the account will be excluded from fax activities distributed in marketing campaigns.';
            Caption = 'Do not allow Faxes';
        }
        field(40; Telephone1; Text[50])
        {
            ExternalName = 'telephone1';
            ExternalType = 'String';
            Description = 'Type the main phone number for this account.';
            Caption = 'Main Phone';
        }
        field(41; DoNotEMail; Boolean)
        {
            ExternalName = 'donotemail';
            ExternalType = 'Boolean';
            Description = 'Select whether the account allows direct email sent from Microsoft Dynamics 365.';
            Caption = 'Do not allow Emails';
        }
        field(42; Telephone2; Text[50])
        {
            ExternalName = 'telephone2';
            ExternalType = 'String';
            Description = 'Type a second phone number for this account.';
            Caption = 'Other Phone';
        }
        field(43; Fax; Text[50])
        {
            ExternalName = 'fax';
            ExternalType = 'String';
            Description = 'Type the fax number for the account.';
            Caption = 'Fax';
        }
        field(44; Telephone3; Text[50])
        {
            ExternalName = 'telephone3';
            ExternalType = 'String';
            Description = 'Type a third phone number for this account.';
            Caption = 'Telephone 3';
        }
        field(45; DoNotPostalMail; Boolean)
        {
            ExternalName = 'donotpostalmail';
            ExternalType = 'Boolean';
            Description = 'Select whether the account allows direct mail. If Do Not Allow is selected, the account will be excluded from letter activities distributed in marketing campaigns.';
            Caption = 'Do not allow Mails';
        }
        field(46; DoNotBulkEMail; Boolean)
        {
            ExternalName = 'donotbulkemail';
            ExternalType = 'Boolean';
            Description = 'Select whether the account allows bulk email sent through campaigns. If Do Not Allow is selected, the account can be added to marketing lists, but is excluded from email.';
            Caption = 'Do not allow Bulk Emails';
        }
        field(47; DoNotBulkPostalMail; Boolean)
        {
            ExternalName = 'donotbulkpostalmail';
            ExternalType = 'Boolean';
            Description = 'Select whether the account allows bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the account can be added to marketing lists, but will be excluded from the postal mail.';
            Caption = 'Do not allow Bulk Mails';
        }
        field(48; CreditLimit; Decimal)
        {
            ExternalName = 'creditlimit';
            ExternalType = 'Money';
            Description = 'Type the credit limit of the account. This is a useful reference when you address invoice and accounting issues with the customer.';
            Caption = 'Credit Limit';
        }
        field(49; CreditOnHold; Boolean)
        {
            ExternalName = 'creditonhold';
            ExternalType = 'Boolean';
            Description = 'Select whether the credit for the account is on hold. This is a useful reference while addressing the invoice and accounting issues with the customer.';
            Caption = 'Credit Hold';
        }
        field(51; CreatedOn; Datetime)
        {
            ExternalName = 'createdon';
            ExternalType = 'DateTime';
            ExternalAccess = Read;
            Description = 'Shows the date and time when the record was created. The date and time are displayed in the time zone selected in Microsoft Dynamics 365 options.';
            Caption = 'Created On';
        }
        field(53; ModifiedOn; Datetime)
        {
            ExternalName = 'modifiedon';
            ExternalType = 'DateTime';
            ExternalAccess = Read;
            Description = 'Shows the date and time when the record was last updated. The date and time are displayed in the time zone selected in Microsoft Dynamics 365 options.';
            Caption = 'Modified On';
        }
        field(56; VersionNumber; BigInteger)
        {
            ExternalName = 'versionnumber';
            ExternalType = 'BigInt';
            ExternalAccess = Read;
            Description = 'Version number of the account.';
            Caption = 'Version Number';
        }
        field(57; ParentAccountId; GUID)
        {
            ExternalName = 'parentaccountid';
            ExternalType = 'Lookup';
            Description = 'Choose the parent account associated with this account to show parent and child businesses in reporting and analytics.';
            Caption = 'Parent Account';
            TableRelation = "CDS Account".AccountId;
        }
        field(58; Aging30; Decimal)
        {
            ExternalName = 'aging30';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'For system use only.';
            Caption = 'Aging 30';
        }
        field(59; StateCode; Option)
        {
            ExternalName = 'statecode';
            ExternalType = 'State';
            Description = 'Shows whether the account is active or inactive. Inactive accounts are read-only and can''t be edited unless they are reactivated.';
            Caption = 'Status';
            InitValue = Active;
            OptionMembers = Active,Inactive;
            OptionOrdinalValues = 0, 1;
        }
        field(60; Aging60; Decimal)
        {
            ExternalName = 'aging60';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'For system use only.';
            Caption = 'Aging 60';
        }
        field(61; StatusCode; Option)
        {
            ExternalName = 'statuscode';
            ExternalType = 'Status';
            Description = 'Select the account''s status.';
            Caption = 'Status Reason';
            InitValue = " ";
            OptionMembers = " ",Active,Resigned,Cancelled,Inactive;
            OptionOrdinalValues = -1, 1, 952230000, 952230001, 2;
        }
        field(62; Aging90; Decimal)
        {
            ExternalName = 'aging90';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'For system use only.';
            Caption = 'Aging 90';
        }
        field(67; ParentAccountIdName; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("CDS Account".Name where(AccountId = field(ParentAccountId)));
            ExternalName = 'parentaccountidname';
            ExternalType = 'String';
            ExternalAccess = Read;
        }
        field(73; Address1_AddressId; GUID)
        {
            ExternalName = 'address1_addressid';
            ExternalType = 'Uniqueidentifier';
            Description = 'Unique identifier for address 1.';
            Caption = 'Address 1: ID';
        }
        field(74; Address1_AddressTypeCode; Option)
        {
            ExternalName = 'address1_addresstypecode';
            ExternalType = 'Picklist';
            Description = 'Select the primary address type.';
            Caption = 'Address 1: Address Type';
            InitValue = " ";
            OptionMembers = " ",BillTo,ShipTo,Primary,Other;
            OptionOrdinalValues = -1, 1, 2, 3, 4;
        }
        field(75; Address1_Name; Text[200])
        {
            ExternalName = 'address1_name';
            ExternalType = 'String';
            Description = 'Type a descriptive name for the primary address, such as Corporate Headquarters.';
            Caption = 'Address 1: Name';
        }
        field(76; Address1_PrimaryContactName; Text[100])
        {
            ExternalName = 'address1_primarycontactname';
            ExternalType = 'String';
            Description = 'Type the name of the main contact at the account''s primary address.';
            Caption = 'Address 1: Primary Contact Name';
        }
        field(77; Address1_Line1; Text[250])
        {
            ExternalName = 'address1_line1';
            ExternalType = 'String';
            Description = 'Type the first line of the primary address.';
            Caption = 'Address 1: Street 1';
        }
        field(78; Address1_Line2; Text[250])
        {
            ExternalName = 'address1_line2';
            ExternalType = 'String';
            Description = 'Type the second line of the primary address.';
            Caption = 'Address 1: Street 2';
        }
        field(79; Address1_Line3; Text[250])
        {
            ExternalName = 'address1_line3';
            ExternalType = 'String';
            Description = 'Type the third line of the primary address.';
            Caption = 'Address 1: Street 3';
        }
        field(80; Address1_City; Text[80])
        {
            ExternalName = 'address1_city';
            ExternalType = 'String';
            Description = 'Type the city for the primary address.';
            Caption = 'Address 1: City';
        }
        field(81; Address1_StateOrProvince; Text[50])
        {
            ExternalName = 'address1_stateorprovince';
            ExternalType = 'String';
            Description = 'Type the state or province of the primary address.';
            Caption = 'Address 1: State/Province';
        }
        field(82; Address1_County; Text[50])
        {
            ExternalName = 'address1_county';
            ExternalType = 'String';
            Description = 'Type the county for the primary address.';
            Caption = 'Address 1: County';
        }
        field(83; Address1_Country; Text[80])
        {
            ExternalName = 'address1_country';
            ExternalType = 'String';
            Description = 'Type the country or region for the primary address.';
            Caption = 'Address 1: Country/Region';
        }
        field(84; Address1_PostOfficeBox; Text[20])
        {
            ExternalName = 'address1_postofficebox';
            ExternalType = 'String';
            Description = 'Type the post office box number of the primary address.';
            Caption = 'Address 1: Post Office Box';
        }
        field(85; Address1_PostalCode; Text[20])
        {
            ExternalName = 'address1_postalcode';
            ExternalType = 'String';
            Description = 'Type the ZIP Code or postal code for the primary address.';
            Caption = 'Address 1: ZIP/Postal Code';
        }
        field(86; Address1_UTCOffset; Integer)
        {
            ExternalName = 'address1_utcoffset';
            ExternalType = 'Integer';
            Description = 'Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address.';
            Caption = 'Address 1: UTC Offset';
        }
        field(87; Address1_FreightTermsCode; Option)
        {
            ExternalName = 'address1_freighttermscode';
            ExternalType = 'Picklist';
            Description = 'Select the freight terms for the primary address to make sure shipping orders are processed correctly.';
            Caption = 'Address 1: Freight Terms';
            InitValue = " ";
            OptionMembers = " ",FOB,NoCharge;
            OptionOrdinalValues = -1, 1, 2;
        }
        field(88; Address1_UPSZone; Text[4])
        {
            ExternalName = 'address1_upszone';
            ExternalType = 'String';
            Description = 'Type the UPS zone of the primary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.';
            Caption = 'Address 1: UPS Zone';
        }
        field(89; Address1_Latitude; Decimal)
        {
            ExternalName = 'address1_latitude';
            ExternalType = 'Double';
            Description = 'Type the latitude value for the primary address for use in mapping and other applications.';
            Caption = 'Address 1: Latitude';
        }
        field(90; Address1_Telephone1; Text[50])
        {
            ExternalName = 'address1_telephone1';
            ExternalType = 'String';
            Description = 'Type the main phone number associated with the primary address.';
            Caption = 'Address Phone';
        }
        field(91; Address1_Longitude; Decimal)
        {
            ExternalName = 'address1_longitude';
            ExternalType = 'Double';
            Description = 'Type the longitude value for the primary address for use in mapping and other applications.';
            Caption = 'Address 1: Longitude';
        }
        field(92; Address1_ShippingMethodCode; Option)
        {
            ExternalName = 'address1_shippingmethodcode';
            ExternalType = 'Picklist';
            Description = 'Select a shipping method for deliveries sent to this address.';
            Caption = 'Address 1: Shipping Method';
            InitValue = " ";
            OptionMembers = " ",Airborne,DHL,FedEx,UPS,PostalMail,FullLoad,WillCall;
            OptionOrdinalValues = -1, 1, 2, 3, 4, 5, 6, 7;
        }
        field(93; Address1_Telephone2; Text[50])
        {
            ExternalName = 'address1_telephone2';
            ExternalType = 'String';
            Description = 'Type a second phone number associated with the primary address.';
            Caption = 'Address 1: Telephone 2';
        }
        field(94; Address1_Telephone3; Text[50])
        {
            ExternalName = 'address1_telephone3';
            ExternalType = 'String';
            Description = 'Type a third phone number associated with the primary address.';
            Caption = 'Address 1: Telephone 3';
        }
        field(95; Address1_Fax; Text[50])
        {
            ExternalName = 'address1_fax';
            ExternalType = 'String';
            Description = 'Type the fax number associated with the primary address.';
            Caption = 'Address 1: Fax';
        }
        field(96; Address2_AddressId; GUID)
        {
            ExternalName = 'address2_addressid';
            ExternalType = 'Uniqueidentifier';
            Description = 'Unique identifier for address 2.';
            Caption = 'Address 2: ID';
        }
        field(97; Address2_AddressTypeCode; Option)
        {
            ExternalName = 'address2_addresstypecode';
            ExternalType = 'Picklist';
            Description = 'Select the secondary address type.';
            Caption = 'Address 2: Address Type';
            InitValue = DefaultValue;
            OptionMembers = DefaultValue;
            OptionOrdinalValues = 1;
        }
        field(98; Address2_Name; Text[200])
        {
            ExternalName = 'address2_name';
            ExternalType = 'String';
            Description = 'Type a descriptive name for the secondary address, such as Corporate Headquarters.';
            Caption = 'Address 2: Name';
        }
        field(99; Address2_PrimaryContactName; Text[100])
        {
            ExternalName = 'address2_primarycontactname';
            ExternalType = 'String';
            Description = 'Type the name of the main contact at the account''s secondary address.';
            Caption = 'Address 2: Primary Contact Name';
        }
        field(100; Address2_Line1; Text[250])
        {
            ExternalName = 'address2_line1';
            ExternalType = 'String';
            Description = 'Type the first line of the secondary address.';
            Caption = 'Address 2: Street 1';
        }
        field(101; Address2_Line2; Text[250])
        {
            ExternalName = 'address2_line2';
            ExternalType = 'String';
            Description = 'Type the second line of the secondary address.';
            Caption = 'Address 2: Street 2';
        }
        field(102; Address2_Line3; Text[250])
        {
            ExternalName = 'address2_line3';
            ExternalType = 'String';
            Description = 'Type the third line of the secondary address.';
            Caption = 'Address 2: Street 3';
        }
        field(103; Address2_City; Text[80])
        {
            ExternalName = 'address2_city';
            ExternalType = 'String';
            Description = 'Type the city for the secondary address.';
            Caption = 'Address 2: City';
        }
        field(104; Address2_StateOrProvince; Text[50])
        {
            ExternalName = 'address2_stateorprovince';
            ExternalType = 'String';
            Description = 'Type the state or province of the secondary address.';
            Caption = 'Address 2: State/Province';
        }
        field(105; Address2_County; Text[50])
        {
            ExternalName = 'address2_county';
            ExternalType = 'String';
            Description = 'Type the county for the secondary address.';
            Caption = 'Address 2: County';
        }
        field(106; Address2_Country; Text[80])
        {
            ExternalName = 'address2_country';
            ExternalType = 'String';
            Description = 'Type the country or region for the secondary address.';
            Caption = 'Address 2: Country/Region';
        }
        field(107; Address2_PostOfficeBox; Text[20])
        {
            ExternalName = 'address2_postofficebox';
            ExternalType = 'String';
            Description = 'Type the post office box number of the secondary address.';
            Caption = 'Address 2: Post Office Box';
        }
        field(108; Address2_PostalCode; Text[20])
        {
            ExternalName = 'address2_postalcode';
            ExternalType = 'String';
            Description = 'Type the ZIP Code or postal code for the secondary address.';
            Caption = 'Address 2: ZIP/Postal Code';
        }
        field(109; Address2_UTCOffset; Integer)
        {
            ExternalName = 'address2_utcoffset';
            ExternalType = 'Integer';
            Description = 'Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address.';
            Caption = 'Address 2: UTC Offset';
        }
        field(110; Address2_FreightTermsCode; Option)
        {
            ExternalName = 'address2_freighttermscode';
            ExternalType = 'Picklist';
            Description = 'Select the freight terms for the secondary address to make sure shipping orders are processed correctly.';
            Caption = 'Address 2: Freight Terms';
            InitValue = DefaultValue;
            OptionMembers = DefaultValue;
            OptionOrdinalValues = 1;
        }
        field(111; Address2_UPSZone; Text[4])
        {
            ExternalName = 'address2_upszone';
            ExternalType = 'String';
            Description = 'Type the UPS zone of the secondary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.';
            Caption = 'Address 2: UPS Zone';
        }
        field(112; Address2_Latitude; Decimal)
        {
            ExternalName = 'address2_latitude';
            ExternalType = 'Double';
            Description = 'Type the latitude value for the secondary address for use in mapping and other applications.';
            Caption = 'Address 2: Latitude';
        }
        field(113; Address2_Telephone1; Text[50])
        {
            ExternalName = 'address2_telephone1';
            ExternalType = 'String';
            Description = 'Type the main phone number associated with the secondary address.';
            Caption = 'Address 2: Telephone 1';
        }
        field(114; Address2_Longitude; Decimal)
        {
            ExternalName = 'address2_longitude';
            ExternalType = 'Double';
            Description = 'Type the longitude value for the secondary address for use in mapping and other applications.';
            Caption = 'Address 2: Longitude';
        }
        field(115; Address2_ShippingMethodCode; Option)
        {
            ExternalName = 'address2_shippingmethodcode';
            ExternalType = 'Picklist';
            Description = 'Select a shipping method for deliveries sent to this address.';
            Caption = 'Address 2: Shipping Method';
            InitValue = DefaultValue;
            OptionMembers = DefaultValue;
            OptionOrdinalValues = 1;
        }
        field(116; Address2_Telephone2; Text[50])
        {
            ExternalName = 'address2_telephone2';
            ExternalType = 'String';
            Description = 'Type a second phone number associated with the secondary address.';
            Caption = 'Address 2: Telephone 2';
        }
        field(117; Address2_Telephone3; Text[50])
        {
            ExternalName = 'address2_telephone3';
            ExternalType = 'String';
            Description = 'Type a third phone number associated with the secondary address.';
            Caption = 'Address 2: Telephone 3';
        }
        field(118; Address2_Fax; Text[50])
        {
            ExternalName = 'address2_fax';
            ExternalType = 'String';
            Description = 'Type the fax number associated with the secondary address.';
            Caption = 'Address 2: Fax';
        }
        field(156; PreferredAppointmentDayCode; Option)
        {
            ExternalName = 'preferredappointmentdaycode';
            ExternalType = 'Picklist';
            Description = 'Select the preferred day of the week for service appointments.';
            Caption = 'Preferred Day';
            InitValue = " ";
            OptionMembers = " ",Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday;
            OptionOrdinalValues = -1, 0, 1, 2, 3, 4, 5, 6;
        }
        field(158; PreferredAppointmentTimeCode; Option)
        {
            ExternalName = 'preferredappointmenttimecode';
            ExternalType = 'Picklist';
            Description = 'Select the preferred time of day for service appointments.';
            Caption = 'Preferred Time';
            InitValue = " ";
            OptionMembers = " ",Morning,Afternoon,Evening;
            OptionOrdinalValues = -1, 1, 2, 3;
        }
        field(159; Merged; Boolean)
        {
            ExternalName = 'merged';
            ExternalType = 'Boolean';
            ExternalAccess = Read;
            Description = 'Shows whether the account has been merged with another account.';
            Caption = 'Merged';
        }
        field(160; DoNotSendMM; Boolean)
        {
            ExternalName = 'donotsendmm';
            ExternalType = 'Boolean';
            Description = 'Select whether the account accepts marketing materials, such as brochures or catalogs.';
            Caption = 'Send Marketing Materials';
        }
        field(161; MasterId; GUID)
        {
            ExternalName = 'masterid';
            ExternalType = 'Lookup';
            ExternalAccess = Read;
            Description = 'Shows the master account that the account was merged with.';
            Caption = 'Master ID';
            TableRelation = "CDS Account".AccountId;
        }
        field(162; LastUsedInCampaign; Date)
        {
            ExternalName = 'lastusedincampaign';
            ExternalType = 'DateTime';
            ExternalAccess = Modify;
            Description = 'Shows the date when the account was last included in a marketing campaign or quick campaign.';
            Caption = 'Last Date Included in Campaign';
        }
        field(173; MasterAccountIdName; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("CDS Account".Name where(AccountId = field(MasterId)));
            ExternalName = 'masteraccountidname';
            ExternalType = 'String';
            ExternalAccess = Read;
        }
        field(177; ExchangeRate; Decimal)
        {
            ExternalName = 'exchangerate';
            ExternalType = 'Decimal';
            ExternalAccess = Read;
            Description = 'Shows the conversion rate of the record''s currency. The exchange rate is used to convert all money fields in the record from the local currency to the system''s default currency.';
            Caption = 'Exchange Rate';
        }
        field(178; UTCConversionTimeZoneCode; Integer)
        {
            ExternalName = 'utcconversiontimezonecode';
            ExternalType = 'Integer';
            Description = 'Time zone code that was in use when the record was created.';
            Caption = 'UTC Conversion Time Zone Code';
        }
        field(179; OverriddenCreatedOn; Date)
        {
            ExternalName = 'overriddencreatedon';
            ExternalType = 'DateTime';
            ExternalAccess = Insert;
            Description = 'Date and time that the record was migrated.';
            Caption = 'Record Created On';
        }
        field(180; TimeZoneRuleVersionNumber; Integer)
        {
            ExternalName = 'timezoneruleversionnumber';
            ExternalType = 'Integer';
            Description = 'For internal use only.';
            Caption = 'Time Zone Rule Version Number';
        }
        field(181; ImportSequenceNumber; Integer)
        {
            ExternalName = 'importsequencenumber';
            ExternalType = 'Integer';
            ExternalAccess = Insert;
            Description = 'Unique identifier of the data import or data migration that created this record.';
            Caption = 'Import Sequence Number';
        }
        field(183; CreditLimit_Base; Decimal)
        {
            ExternalName = 'creditlimit_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Shows the credit limit converted to the system''s default base currency for reporting purposes.';
            Caption = 'Credit Limit (Base)';
        }
        field(185; Aging30_Base; Decimal)
        {
            ExternalName = 'aging30_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'The base currency equivalent of the aging 30 field.';
            Caption = 'Aging 30 (Base)';
        }
        field(186; Revenue_Base; Decimal)
        {
            ExternalName = 'revenue_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Shows the annual revenue converted to the system''s default base currency. The calculations use the exchange rate specified in the Currencies area.';
            Caption = 'Annual Revenue (Base)';
        }
        field(187; Aging90_Base; Decimal)
        {
            ExternalName = 'aging90_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'The base currency equivalent of the aging 90 field.';
            Caption = 'Aging 90 (Base)';
        }
        field(189; MarketCap_Base; Decimal)
        {
            ExternalName = 'marketcap_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Shows the market capitalization converted to the system''s default base currency.';
            Caption = 'Market Capitalization (Base)';
        }
        field(190; Aging60_Base; Decimal)
        {
            ExternalName = 'aging60_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'The base currency equivalent of the aging 60 field.';
            Caption = 'Aging 60 (Base)';
        }
        field(197; YomiName; Text[160])
        {
            ExternalName = 'yominame';
            ExternalType = 'String';
            Description = 'Type the phonetic spelling of the company name, if specified in Japanese, to make sure the name is pronounced correctly in phone calls and other communications.';
            Caption = 'Yomi Account Name';
        }
        field(210; StageId; GUID)
        {
            ExternalName = 'stageid';
            ExternalType = 'Uniqueidentifier';
            Description = 'Shows the ID of the stage.';
            Caption = '(Deprecated) Process Stage';
        }
        field(211; ProcessId; GUID)
        {
            ExternalName = 'processid';
            ExternalType = 'Uniqueidentifier';
            Description = 'Shows the ID of the process.';
            Caption = 'Process';
        }
        field(213; Address2_Composite; BLOB)
        {
            ExternalName = 'address2_composite';
            ExternalType = 'Memo';
            ExternalAccess = Read;
            Description = 'Shows the complete secondary address.';
            Caption = 'Address 2';
            Subtype = Memo;
        }
        field(214; Address1_Composite; BLOB)
        {
            ExternalName = 'address1_composite';
            ExternalType = 'Memo';
            ExternalAccess = Read;
            Description = 'Shows the complete primary address.';
            Caption = 'Address 1';
            Subtype = Memo;
        }
        field(215; EntityImageId; GUID)
        {
            ExternalName = 'entityimageid';
            ExternalType = 'Uniqueidentifier';
            ExternalAccess = Read;
            Description = 'For internal use only.';
            Caption = 'Entity Image Id';
        }
        field(223; TimeSpentByMeOnEmailAndMeetings; Text[1250])
        {
            ExternalName = 'timespentbymeonemailandmeetings';
            ExternalType = 'String';
            ExternalAccess = Read;
            Description = 'Total time spent for emails (read and write) and meetings by me in relation to account record.';
            Caption = 'Time Spent by me';
        }
        field(236; PrimarySatoriId; Text[200])
        {
            ExternalName = 'primarysatoriid';
            ExternalType = 'String';
            Description = 'Primary Satori ID for Account';
            Caption = 'Primary Satori ID';
        }
        field(237; PrimaryTwitterId; Text[128])
        {
            ExternalName = 'primarytwitterid';
            ExternalType = 'String';
            Description = 'Primary Twitter ID for Account';
            Caption = 'Primary Twitter ID';
        }
        field(241; OnHoldTime; Integer)
        {
            ExternalName = 'onholdtime';
            ExternalType = 'Integer';
            ExternalAccess = Read;
            Description = 'Shows how long, in minutes, that the record was on hold.';
            Caption = 'On Hold Time (Minutes)';
        }
        field(242; LastOnHoldTime; Datetime)
        {
            ExternalName = 'lastonholdtime';
            ExternalType = 'DateTime';
            Description = 'Contains the date and time stamp of the last on hold time.';
            Caption = 'Last On Hold Time';
        }
        field(244; FollowEmail; Boolean)
        {
            ExternalName = 'followemail';
            ExternalType = 'Boolean';
            Description = 'Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the account.';
            Caption = 'Follow Email Activity';
        }
        field(247; MarketingOnly; Boolean)
        {
            ExternalName = 'marketingonly';
            ExternalType = 'Boolean';
            Description = 'Whether is only for marketing';
            Caption = 'Marketing Only';
        }
        field(10010; OpenDeals; Integer)
        {
            ExternalName = 'opendeals';
            ExternalType = 'Integer';
            ExternalAccess = Read;
            Description = 'Number of open opportunities against an account and its child accounts.';
            Caption = 'Open Deals';
        }
        field(10011; OpenDeals_Date; Datetime)
        {
            ExternalName = 'opendeals_date';
            ExternalType = 'DateTime';
            ExternalAccess = Read;
            Description = 'Last Updated time of rollup field Open Deals.';
            Caption = 'Open Deals (Last Updated On)';
        }
        field(10012; OpenDeals_State; Integer)
        {
            ExternalName = 'opendeals_state';
            ExternalType = 'Integer';
            ExternalAccess = Read;
            Description = 'State of rollup field Open Deals.';
            Caption = 'Open Deals (State)';
        }
        field(10013; OpenRevenue; Decimal)
        {
            ExternalName = 'openrevenue';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Sum of open revenue against an account and its child accounts.';
            Caption = 'Open Revenue';
        }
        field(10014; OpenRevenue_Base; Decimal)
        {
            ExternalName = 'openrevenue_base';
            ExternalType = 'Money';
            ExternalAccess = Read;
            Description = 'Value of the Open Revenue in base currency.';
            Caption = 'Open Revenue (Base)';
        }
        field(10015; OpenRevenue_Date; Datetime)
        {
            ExternalName = 'openrevenue_date';
            ExternalType = 'DateTime';
            ExternalAccess = Read;
            Description = 'Last Updated time of rollup field Open Revenue.';
            Caption = 'Open Revenue (Last Updated On)';
        }
        field(10016; OpenRevenue_State; Integer)
        {
            ExternalName = 'openrevenue_state';
            ExternalType = 'Integer';
            ExternalAccess = Read;
            Description = 'State of rollup field Open Revenue.';
            Caption = 'Open Revenue (State)';
        }
        field(10018; TeamsFollowed; Integer)
        {
            ExternalName = 'teamsfollowed';
            ExternalType = 'Integer';
            Description = 'Number of users or conversations followed the record';
            Caption = 'TeamsFollowed';
        }
        field(10028; ceda_EventHost; Boolean)
        {
            ExternalName = 'ceda_eventhost';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Event Host';
        }
        field(10032; ceda_HostCapabilityNotes; BLOB)
        {
            ExternalName = 'ceda_hostcapabilitynotes';
            ExternalType = 'Memo';
            Description = '';
            Caption = 'Host Capability Notes';
            Subtype = Memo;
        }
        field(10037; Adx_CreatedByIPAddress; Text[100])
        {
            ExternalName = 'adx_createdbyipaddress';
            ExternalType = 'String';
            Description = '';
            Caption = 'Created By (IP Address)';
        }
        field(10038; Adx_CreatedByUsername; Text[100])
        {
            ExternalName = 'adx_createdbyusername';
            ExternalType = 'String';
            Description = '';
            Caption = 'Created By (User Name)';
        }
        field(10039; Adx_ModifiedByIPAddress; Text[100])
        {
            ExternalName = 'adx_modifiedbyipaddress';
            ExternalType = 'String';
            Description = '';
            Caption = 'Modified By (IP Address)';
        }
        field(10040; Adx_ModifiedByUsername; Text[100])
        {
            ExternalName = 'adx_modifiedbyusername';
            ExternalType = 'String';
            Description = '';
            Caption = 'Modified By (User Name)';
        }
        field(10041; msa_managingpartnerid; GUID)
        {
            ExternalName = 'msa_managingpartnerid';
            ExternalType = 'Lookup';
            Description = 'Unique identifier for Account associated with Account.';
            Caption = 'Managing Partner';
            TableRelation = "CDS Account".AccountId;
        }
        field(10042; msa_managingpartneridName; Text[160])
        {
            FieldClass = FlowField;
            CalcFormula = lookup("CDS Account".Name where(AccountId = field(msa_managingpartnerid)));
            ExternalName = 'msa_managingpartneridname';
            ExternalType = 'String';
            ExternalAccess = Read;
        }
        field(10044; msevtmgt_HotelGroup; Option)
        {
            ExternalName = 'msevtmgt_hotelgroup';
            ExternalType = 'Picklist';
            Description = 'Indicates whether this account belongs to hotel group';
            Caption = 'Hotel group';
            InitValue = No;
            OptionMembers = No,Yes;
            OptionOrdinalValues = 100000001, 100000002;
        }
        field(10046; msevtmgt_RentalCarProvider; Option)
        {
            ExternalName = 'msevtmgt_rentalcarprovider';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Rental car provider';
            InitValue = No;
            OptionMembers = No,Yes;
            OptionOrdinalValues = 100000001, 100000002;
        }
        field(10048; msdyncrm_insights_placeholder; Text[100])
        {
            ExternalName = 'msdyncrm_insights_placeholder';
            ExternalType = 'String';
            Description = '';
            Caption = 'Insights';
        }
        field(10049; ceda_Donotallowsponsorshipemails; Boolean)
        {
            ExternalName = 'ceda_donotallowsponsorshipemails';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Sponsorship Emails';
        }
        field(10053; ceda_SponsorInterest; Boolean)
        {
            ExternalName = 'ceda_sponsorinterest';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Sponsor Interest';
        }
        field(10057; ceda_Stoprenewalreminderstill; Date)
        {
            ExternalName = 'ceda_stoprenewalreminderstill';
            ExternalType = 'DateTime';
            Description = 'Turn off/stop renewals email reminders/notification at any stage';
            Caption = 'Stop renewal reminders till';
        }
        field(10058; ceda_HasSponsored; Boolean)
        {
            ExternalName = 'ceda_hassponsored';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Has Sponsored';
        }
        field(10062; ceda_ReadyToSync; Boolean)
        {
            ExternalName = 'ceda_readytosync';
            ExternalType = 'Boolean';
            Description = '';
            Caption = 'Ready To Sync';
        }
        field(10064; ceda_SyncStatus; Option)
        {
            ExternalName = 'ceda_syncstatus';
            ExternalType = 'Picklist';
            Description = '';
            Caption = 'Sync Status';
            InitValue = " ";
            OptionMembers = " ",BCSynced,BCError;
            OptionOrdinalValues = -1, 952230000, 952230001;
        }
        field(10066; ceda_IntegrationUpdateDate; Date)
        {
            ExternalName = 'ceda_integrationupdatedate';
            ExternalType = 'DateTime';
            Description = '';
            Caption = 'Integration Update Date';
        }
        field(10067; ceda_IntegrationErrorDetails; Text[250])
        {
            ExternalName = 'ceda_integrationerrordetails';
            ExternalType = 'String';
            Description = '';
            Caption = 'Integration Error Details';
        }
        field(10068; ceda_BC; Text[20])
        {
            ExternalName = 'ceda_bc';
            ExternalType = 'String';
            Description = '';
            Caption = 'BC Customer ID';
        }
        field(10069; ceda_BCVendorID; Text[20])
        {
            ExternalName = 'ceda_bcvendorid';
            ExternalType = 'String';
            Description = '';
            Caption = 'BC Vendor ID';
        }
    }
    keys
    {
        key(PK; AccountId)
        {
            Clustered = true;
        }
        key(Name; Name)
        {
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; Name)
        {
        }
    }
}