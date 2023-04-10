


# Search for a specific telephone number
# https://api.ftc.gov/v0/dnc-complaints?api_key=RxGSCk5nFzA7FAKgEHxiiEvEKMyK0M4oeJWMg5An&telephone_number=2063554862

# Search for a specific date
# https://api.ftc.gov/v0/dnc-complaints?api_key=RxGSCk5nFzA7FAKgEHxiiEvEKMyK0M4oeJWMg5An&created_date_from=%222020-02-27%2004:10:00%22&created_date_to=%222023-03-31%2004:30:00%22

# $url = "https://api.ftc.gov/v0/dnc-complaints"

$url = "https://api.ftc.gov/v0/dnc-complaints?api_key=RxGSCk5nFzA7FAKgEHxiiEvEKMyK0M4oeJWMg5An&telephone_number=2063554862"


$api_key = "RxGSCk5nFzA7FAKgEHxiiEvEKMyK0M4oeJWMg5An"
$telephone_number = "2063554862"

# $response = Invoke-RestMethod -Uri $url -Method Get -QueryString $params
$response = Invoke-RestMethod -Uri $url 

$response | ConvertTo-Csv -NoTypeInformation | Out-File "complaints.csv"




<#
# Set API URL and output file path
$url = "https://api.ftc.gov/v0/dnc-complaints?api_key=DEMO_KEY&telephone_number=2063554862"
$outputFile = "output.csv"

# Call the API and convert the response to JSON
$response = Invoke-RestMethod -Uri $url
$json = ConvertTo-Json $response

# Convert the JSON to a PowerShell object and select the desired properties
$complaints = ConvertFrom-Json $json
$complaints = $complaints | Select-Object -Property type, id, attributes, relationships, meta, links

# Save the results to a CSV file
$complaints | Export-Csv -Path $outputFile -NoTypeInformation

#>


