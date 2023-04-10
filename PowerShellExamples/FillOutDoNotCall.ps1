
# This is for MSEdge only



# Sample code of how to fill out donotcall complaint form
# URL is in the hive
# https://www.donotcall.gov/ ----> https://www.donotcall.gov/report.html -----> https://www.donotcall.gov/report.html#step1 -----> https://www.donotcall.gov/report.html#step2


# Load the Edge WebDriver module
Import-Module "$env:ProgramFiles (x86)\Microsoft\Edge WebDriver\msedgedriver.exe"

# Create a new instance of the Edge browser
$edgeOptions = New-Object OpenQA.Selenium.Edge.EdgeOptions
$edgeDriver = New-Object OpenQA.Selenium.Edge.EdgeDriver($edgeOptions)

# Navigate to the form page
$edgeDriver.Url = "https://example.com/form"

# Find the form elements and fill them out
$nameField = $edgeDriver.FindElementByName("name")
$nameField.SendKeys("John Smith")

$emailField = $edgeDriver.FindElementByName("email")
$emailField.SendKeys("john.smith@example.com")

$messageField = $edgeDriver.FindElementByName("message")
$messageField.SendKeys("This is a test message.")

# Submit the form
$submitButton = $edgeDriver.FindElementByName("submit")
$submitButton.Click()

# Close the browser
$edgeDriver.Quit()



<#
Note: You'll need to have Microsoft Edge installed on your computer and the Microsoft Edge WebDriver executable in the appropriate location. You can download the Edge WebDriver from the Microsoft website: 

https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/


#>




<#--- 

# Code sample for google chrome
# ChatGPT says
# It is not recommended to use PowerShell to fill out a web form as it is not designed for this purpose. Instead, you should consider using a web automation tool such as Selenium WebDriver or Puppeteer. These tools can be used with various programming languages, including PowerShell, to automate browser interactions.

# Here's an example of how you can fill out a form using Selenium WebDriver with PowerShell:

# Load Selenium WebDriver
Add-Type -Path 'C:\path\to\selenium-dotnet-strongnamed-3.141.0\net40\WebDriver.dll'

# Create Chrome driver
$chromeDriverPath = 'C:\path\to\chromedriver.exe'
$chromeOptions = New-Object OpenQA.Selenium.Chrome.ChromeOptions
$chromeOptions.AddArgument('--start-maximized')
$driver = New-Object OpenQA.Selenium.Chrome.ChromeDriver($chromeDriverPath, $chromeOptions)

# Navigate to the form page
$url = 'https://www.example.com/form'
$driver.Navigate().GoToUrl($url)

# Fill out the form
$driver.FindElementById('input-name').SendKeys('John Doe')
$driver.FindElementById('input-email').SendKeys('johndoe@example.com')
$driver.FindElementById('input-message').SendKeys('Hello, this is a test message')

# Submit the form
$driver.FindElementById('submit-button').Click()

# Wait for submission confirmation
$confirmation = $driver.FindElementById('confirmation-message')
$driverWait = New-Object OpenQA.Selenium.Support.UI.WebDriverWait($driver, [timespan]::FromSeconds(10))
$driverWait.Until({ $confirmation.Displayed })

# Close the browser
$driver.Quit()


#>

