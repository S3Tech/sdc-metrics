require 'savon'

class Soap
	def go
		client = Savon.client(wsdl: "https://webservice.tlo.com/TLOWebServic?wsdl",
								open_timeout: 10,
	              convert_request_keys_to: :none, logger: Rails.logger,
	              log_level: :debug,
	              log: true,
	              pretty_print_xml: true)

		body = 

		"
   <soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/' xmlns:tlo='http://tlo.com/'>
   <soapenv:Header/>
   <soapenv:Body>
      <tlo:BasicPersonSearch>
         <!--Optional:-->
         <tlo:genericSearchInput>
            <!--Optional:-->
            <tlo:Password>SdcTLO2019!</tlo:Password>
            <!--Optional:-->
            <tlo:Username>dev.socialdiscoverycorp</tlo:Username>
            <!--Optional:-->
            <tlo:HostIP></tlo:HostIP>
            <!--Optional:-->
            <tlo:CaseNumber></tlo:CaseNumber>
            <!--Optional:-->
            <tlo:RequestId></tlo:RequestId>
            <!--Optional:-->
            <tlo:TraceId></tlo:TraceId>
            <!--Optional:-->
            <tlo:UserData></tlo:UserData>
            <!--Optional:-->
            <tlo:DPPAPurpose></tlo:DPPAPurpose>
            <!--Optional:-->
            <tlo:GLBPurpose></tlo:GLBPurpose>
            <!--Optional:-->
            <tlo:ReducedAccess></tlo:ReducedAccess>
            <!--Optional:-->
            <tlo:PermissibleUseCode></tlo:PermissibleUseCode>
            <!--Optional:-->
            <tlo:NumberOfRecords>0</tlo:NumberOfRecords>
            <!--Optional:-->
            <tlo:StartingRecord>0</tlo:StartingRecord>
            <!--Optional:-->
            <tlo:Version></tlo:Version>
            <!--Optional:-->
            <tlo:EndUserIP></tlo:EndUserIP>
            <!--Optional:-->
            <tlo:EndUserReferenceId></tlo:EndUserReferenceId>
            <!--Optional:-->
            <tlo:MaximumAddresses></tlo:MaximumAddresses>
            <!--Optional:-->
            <tlo:Name>
               <!--Optional:-->
               <tlo:FirstName>ISAAC</tlo:FirstName>
               <!--Optional:-->
               <tlo:MiddleName></tlo:MiddleName>
               <!--Optional:-->
               <tlo:LastName>ANIMASHAUN</tlo:LastName>
               <!--Optional:-->
               <tlo:NameSuffix></tlo:NameSuffix>
            </tlo:Name>
            <!--Optional:-->
            <tlo:Address>
               <!--Optional:-->
               <tlo:Line1></tlo:Line1>
               <!--Optional:-->
               <tlo:Line2></tlo:Line2>
               <!--Optional:-->
               <tlo:Line3></tlo:Line3>
               <!--Optional:-->
               <tlo:City></tlo:City>
               <!--Optional:-->
               <tlo:State></tlo:State>
               <!--Optional:-->
               <tlo:Zip></tlo:Zip>
               <!--Optional:-->
               <tlo:County></tlo:County>
               <!--Optional:-->
               <tlo:Latitude>0</tlo:Latitude>
               <!--Optional:-->
               <tlo:Longitude>0</tlo:Longitude>
            </tlo:Address>
            <!--Optional:-->
            <tlo:FilingNumber></tlo:FilingNumber>
            <!--Optional:-->
            <tlo:SSN>361924105</tlo:SSN>
            <!--Optional:-->
            <tlo:FullName></tlo:FullName>
            <!--Optional:-->
            <tlo:DateOfBirth>
               <!--Optional:-->
               <tlo:DOBUnlockToken></tlo:DOBUnlockToken>
               <!--Optional:-->
               <tlo:Day></tlo:Day>
               <!--Optional:-->
               <tlo:Month></tlo:Month>
               <!--Optional:-->
               <tlo:Year></tlo:Year>
            </tlo:DateOfBirth>
            <!--Optional:-->
            <tlo:BusinessName></tlo:BusinessName>
            <!--Optional:-->
            <tlo:MinimumAge></tlo:MinimumAge>
            <!--Optional:-->
            <tlo:MaximumAge></tlo:MaximumAge>
            <!--Optional:-->
            <tlo:Phone></tlo:Phone>
            <!--Optional:-->
            <tlo:Radius></tlo:Radius>
            <!--Optional:-->
            <tlo:DriversLicenseNumber></tlo:DriversLicenseNumber>
            <!--Optional:-->
            <tlo:DriversLicenseNumberToken></tlo:DriversLicenseNumberToken>
            <!--Optional:-->
            <tlo:LicensePlate></tlo:LicensePlate>
            <!--Optional:-->
            <tlo:LicensePlateToken></tlo:LicensePlateToken>
            <!--Optional:-->
            <tlo:LicensePlateState></tlo:LicensePlateState>
            <!--Optional:-->
            <tlo:EmailAddress></tlo:EmailAddress>
            <!--Optional:-->
            <tlo:IPAddress></tlo:IPAddress>
            <!--Optional:-->
            <tlo:Domain></tlo:Domain>
            <!--Optional:-->
            <tlo:FEINumber></tlo:FEINumber>
            <!--Optional:-->
            <tlo:DunsNumber></tlo:DunsNumber>
            <!--Optional:-->
            <tlo:ReportToken></tlo:ReportToken>
            <!--Optional:-->
            <tlo:BusinessToken></tlo:BusinessToken>
            <!--Optional:-->
            <tlo:UseExactFirstNameMatch></tlo:UseExactFirstNameMatch>
            <!--Optional:-->
            <tlo:UsePhoneticLastNameMatch></tlo:UsePhoneticLastNameMatch>
            <!--Optional:-->
            <tlo:DoNotModifySearch></tlo:DoNotModifySearch>
            <!--Optional:-->
            <tlo:FindBestMatch></tlo:FindBestMatch>
            <!--Optional:-->
            <tlo:ReturnAllRecordsLinkedToSSN></tlo:ReturnAllRecordsLinkedToSSN>
         </tlo:genericSearchInput>
      </tlo:BasicPersonSearch>
   </soapenv:Body>
</soapenv:Envelope>"

    response = client.call(:basic_person_search, xml: body)
	end
end