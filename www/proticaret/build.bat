IF %1 == "Release" GOTO Continue
GOTO Exit
:Continue
"C:\inetpub\wwwroot\babel\Babel\babel.exe" --nodeadcode --agent --types --events --methods --properties --fields --virtual --flatns --unicode --msil --iliterations 3 --invalidopcodes --ildasm --stringencrypt --output "C:\MyProjects\Proticaret\Proticaret30\Proticaret\Proticaret\bin\proticaretg3.dll" "C:\MyProjects\Proticaret\Proticaret30\Proticaret\Proticaret\bin\proticaretg3.dll"
:Exit