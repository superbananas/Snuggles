/* Lookup table data values */

Insert into LkpWarehouseAvailability
Select 0, 'Inactive', 'Inactive', 'Inactive' Union All
Select 1, 'Active', 'Active', 'Active'

Insert into LkpPackageStatus
Select 0, 'Unknown', 'Unknown', 'Unknown' Union All
Select 1, 'Waiting', 'Waiting', 'Waiting to Recieve' Union All
Select 2, 'InProcess', 'InProcess', 'In Process' Union All
Select 3, 'Delivered', 'Delivered', 'Delivered' Union All
Select 4, 'Returned', 'Returned', 'Returned'

Insert into LkpPackageType
Select 0, 'Other', 'Other', 'Other' Union All
Select 1, 'Envelope', 'Envelope', 'Envelope' Union All
Select 2, 'Box', 'Box', 'Box' 

Insert into LkpPickupRelation
Select 0, 'Other', 'Other', 'Other' Union All
Select 1, 'Parent', 'Parent', 'Parent' Union All
Select 2, 'Sibling', 'Sibling', 'Sibling' Union All
Select 3, 'Spouse', 'Spouse', 'Spouse'

Insert into LkpSecondaryUnitType
Select 0 'None', 'None', 'None' Union All
Select 1 'Apartment', 'Apt', 'Appartment' Union All
Select 2 'Suite', 'STE', 'Suite' Union All
Select 3 'Unit', 'Unit', 'Unit'

Insert into LkpUSState
Select 0 'NotSelected', '', 'Not Selected' Union All
Select 1, 'Alabama','AL','Alabama' Union All
Select 2, 'Alaska','AK','Alaska' Union All
Select 3, 'AmericaSamoa','AS','American Samoa' Union All
Select 4, 'Arizona','AZ','Arizona' Union All
Select 5, 'Arkansas','AR','Arkansas' Union All
Select 6, 'California','CA','California' Union All
Select 7, 'Colorado','CO','Colorado' Union All
Select 8, 'Connecticut','CT','Connecticut' Union All
Select 9, 'Delaware','DE','Delaware' Union All
Select 10, 'DistrictOfColumbia', 'DC','District of Columbia' Union All
Select 11, 'FederatedStatesOfMicronesia', 'FM','Federated States of Micronesia' Union All
Select 12, 'Florida','FL','Florida' Union All
Select 13, 'Georgia','GA','Georgia' Union All
Select 14, 'Guam','GU','Guam' Union All
Select 15, 'Hawaii','HI','Hawaii' Union All
Select 16, 'Idaho','ID','Idaho' Union All
Select 17, 'Illinois','IL','Illinois' Union All
Select 18, 'Indiana','IN','Indiana' Union All
Select 19, 'Iowa','IA','Iowa' Union All
Select 20, 'Kansas','KS','Kansas' Union All
Select 21, 'Kentucky','KY','Kentucky' Union All
Select 22, 'Louisiana','LA','Louisiana' Union All
Select 23, 'Maine','ME','Maine' Union All
Select 24, 'MarshallIslands','MH','Marshall Islands' Union All
Select 25, 'Maryland','MD','Maryland' Union All
Select 26, 'Massachusetts','MA','Massachusetts' Union All
Select 27, 'Michigan','MI','Michigan' Union All
Select 28, 'Minnesota','MN','Minnesota' Union All
Select 29, 'Mississippi','MS','Mississippi' Union All
Select 30, 'Missouri','MO','Missouri' Union All
Select 31, 'Montana','MT','Montana' Union All
Select 32, 'Nebraska','NE','Nebraska' Union All
Select 33, 'Nevada','NV','Nevada' Union All
Select 34, 'NewHampshire','NH','New Hampshire' Union All
Select 35, 'NewJersey','NJ','New Jersey' Union All
Select 36, 'NewMexico','NM','New Mexico' Union All
Select 37, 'NewYork','NY','New York' Union All
Select 38, 'NorthCarolina','NC','North Carolina' Union All
Select 39, 'NorthDakota','ND','North Dakota' Union All
Select 40, 'NorthernMarianaIslands','MP','Northern Mariana Islands' Union All
Select 41, 'Ohio','OH','Ohio' Union All
Select 42, 'Oklahoma','OK','Oklahoma' Union All
Select 43, 'Oregon','OR','Oregon' Union All
Select 44, 'Palau','PW','Palau' Union All
Select 45, 'Pennsylvania','PA','Pennsylvania' Union All
Select 46, 'PuertoRico','PR','Puerto Rico' Union All
Select 47, 'RhodeIsland','RI','Rhode Island' Union All
Select 48, 'SouthCarolina','SC','South Carolina' Union All
Select 49, 'SouthDakota','SD','South Dakota' Union All
Select 50, 'Tennessee','TN','Tennessee' Union All
Select 51, 'Texas','TX','Texas' Union All
Select 52, 'Utah','UT','Utah' Union All
Select 53, 'Vermont','VT','Vermont' Union All
Select 54, 'VirginIslands','VI','Virgin Islands' Union All
Select 55, 'Virginia','VA','Virginia' Union All
Select 56, 'Washington','WA','Washington' Union All
Select 57, 'WestVirginia','WV','West Virginia' Union All
Select 58, 'Wisconsin','WI','Wisconsin' Union All
Select 59, 'Wyoming','WY','Wyoming'