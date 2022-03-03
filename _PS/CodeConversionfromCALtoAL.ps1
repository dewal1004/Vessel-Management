https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/upgrade/devenv-code-conversion
Code Conversion from C/AL to AL

import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\140\Service\navAdminTool.ps1"

# Task 1: Import the test library into your C/AL solution
# import the "CALTestLibraries.W1.fob" file into the old database. Location BC14 (DVD) in the TestToolKit folder.

# Task 2: Compile all the objects in your C/AL solution
# Using NAV Development Shell as Administrator
Compile-NAVApplicationObject

# Task 3: Export the application objects to the new TXT syntax
# 3.1 Make target path if not existing:  C:\export2al\bc14tablesonly
mkdir C:\export2alBDG\bc14tablesonly
# 3.2 Export tables e.g. 
# Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\exportedbc14-tables.txt" -Filter 'Type=Table;Id=1..1999999999'
$DbSrvr = 'NAV365TEST\ASLHO2016' 
$DbName = "Demo Database BC (14-0)"
$DbNameB = "Atlantic ASL BDG"
$ExportToPath = "C:\export2alBDG\bc14tablesonly\exportedbc14-tables.txt" 
$ExportFilter = 'Type=Table;Id=1..1999999999'

Export-NAVApplicationObject -DatabaseServer NAV365TEST\ASLHO2016 -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\exportedbc14-tables1.txt" -Filter 'Type=Table;Id=1..1999999999'
Export-NAVApplicationObject -DatabaseServer .\BCDEMO             -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\exportedbc14-tables.txt" -Filter 'Type=Table;Id=1..1999999999'
Export-NAVApplicationObject -DatabaseServer $DbSrvr -DatabaseName $DbName -ExportToNewSyntax -Path $ExportToPath -Filter 'Type=Table;Id=1..1999999999'
Export-NAVApplicationObject -DatabaseServer NAV365TEST\ASLHO2016 -DatabaseName "Atlantic ASL V14toV18" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\2\exportedbc14-tables2.txt" -Filter 'Type=Table;Id=1..1999999999'

Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14app-part1.txt" -Filter 'Id=1..129999'
Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14app-part2.txt" -Filter 'Id=140000..1999999999'
Export-NAVApplicationObject -DatabaseServer .\BCDEMO -DatabaseName "Demo Database BC (14-0)" -ExportToNewSyntax -Path "c:\export2al\baseapplication\exportedbc14testobjects.txt" -Filter 'Id=130400..130416'

import-Module "C:\Program Files\Microsoft Dynamics 365 Business Central\140\Service\navAdminTool.ps1"

$DbSrvr = 'NAV365TEST\ASLHO2016' 
$DbName = "Atlantic ASL BDG"
$ExportToPath = "C:\export2al\bc14tablesonly\B\exportedbc14-tables.txt" 
$ExportFilter = 'Type=Table;Id=1..1999999999'

Export-NAVApplicationObject -DatabaseServer $DbSrvr -DatabaseName $DbName -ExportToNewSyntax -Path $ExportToPath -Filter $ExportFilter
Export-NAVApplicationObject -DatabaseServer NAV365TEST\ASLHO2016 -DatabaseName "Atlantic ASL BDG" -ExportToNewSyntax -Path "C:\export2al\bc14tablesonly\B\exportedbc14-tables.txt" -Filter 'Type=Table;Id=1..1999999999'

