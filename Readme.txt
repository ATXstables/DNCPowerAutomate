Purpose:
--------
To automate operator input to the Donotcall.gov site of the United States Federal Trade Commision (FTC) utilizing a Windows Operating System.
As of April 1st, 2023 solution is written in Power Automate.

Requirements:
-------------
Edge Browser from Microsoft
Windows login account. e.g. <name>@outlook.com or your domain/tenant name
Windows Operating System
Operating System must support Power Automate Desktop (PAD)
Read/Update rights to the %UserProfile% directory  - see below in setup
A Copy of MyInputForm.xlsx


Setup:
------
As of July 4th, 2022 - Download links are accurate
1) PAD - FREE!! https://learn.microsoft.com/en-us/power-automate/desktop-flows/install#install-power-automate-using-the-msi-installer - Use the msi installer. Note: PAD is built into Windows 11.
- If prompted, install the extensions for the web browser
- Reboot after installation

Import the flow
2) Copy the file DNCSourceCode.txt to your local drive
3) Open the file in Notepad
4) Verify the Word Wrap is turned off. Options -> Word Wrap
5) Open Power Automate Desktop
6) Click on +New Flow at the top of screen
7) Name the flow DNCAutomation and press Enter
8) Copy all text and paste into new flow you created. Logic, actions and variables will appear
9) Save the flow
10) Open MSEdge and navigate to https://www.donotcall.gov/
11) Register your number 
12) Once your number is registered, you are able to modify the spreadsheet MyInputForm.xlsx and enter the correct information as shown below in the column list.
Excel - If you do not have excel and are running Windows 10 or higher, one can use the super secret shortcut key combination of ctrl+alt+Fn(aka function)+Windows key+Shift; Create an account and login for free.
NOTE: You must close all Edge browser windows and Excel before executing the Power Automate Desktop Flow
13) In File Explorer navigate to %userprofile% and this will show you the directory you will place the MyInputForm.xlsx into
14) Copy the MyInputForm.xlsx to the %userprofile% directory of your workstation or server.
15) Modify MyInputForm.xlsx with a Donotcall.gov registered telephone number in the YourNumber column. Do not change fields marked as -default below.

Column List
-----------
YourNumber	
DateCallReceived	
HourReceived	
MinuteReceived	
RoboCall	-default is n
PhoneCallORText	-default is p
WhatWasCallAbout	
OtherComments	
TelemarketersPhone	
TelemarketersName	
HaveYouDoneBusinessinLast18Months	- default is n
AskedCompanyToStopCalling	-default is y
EnterYourFirstName	
EnterYourLastName	
StreetAddress1	
StreetAddress2	
City	
State	
Zip	
CommentTextBox -Requirement is less than 100 characters

<<<<<<<  Close all Edge browser windows and Excel before you run the Flow  >>>>>>>


Notes: 
------
- Set the default browser to Microsoft Edge
- Where does Power Automate Desktop store flows?
If you do not have access to Power Automate in an M365 tenant, the flows are stored locally at C:\Users\[YourUsername]\Documents\Power Automate Desktop\My Flows.
If you do have access with your M365 Tenant, Navigate Edge to https://make.powerapps.com/ -> Flows are stored in Desktop Flows-> Desktop Flows 

