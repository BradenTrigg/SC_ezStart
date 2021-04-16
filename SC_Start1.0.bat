@ECHO OFF
:: ****************************************************************************************
:: ****************************************************************************************
:: *******/------------------------------------------------------------------------\*******
:: ** /--/              DISCLAIMER: PLEASE READ CAREFULLY BEFORE USE.               \--\ **
:: **|       By using this file you understand that personal use and modification       |**
:: ** \--\      of file contents should be done at your own discretion and risk.    /--/ **
:: *******\------------------------------------------------------------------------/*******
:: ****************************************************************************************
:: ****************************************************************************************
:: ****____*____****____*____*__**____*____********************(*****(*********************
:: ***(  __(__  )  / ___(_  _/ _\(  _ (_  _)**********)********)\*)**)\*)***(*******(******
:: ****) _) / _/   \___ \ )(/    \)   / )(*********(*/(*(*****(()/(*(()/(***)\******)\*****
:: ***(____(____)  (____/(__\_/\_(__\_)(__) *******)\()))\*)***/(_)) /(_)((((_)(**(((_)****
:: ***********************************************((_)\(()/(**(_))_ (_))  )\ _ )\*)\___****
:: ***********************************************| |(_))(_))**|   \| _ \ (_)_\(_((/ __|***
:: ***********************************************| '_ | || |**| |) |   /  / _ \  | (__****
:: ***********************************************|_.__/\_, |**|___/|_|_\ /_/ \_\  \___|***
:: *****************************************************|__/*******************************
:: ****************************************************************************************
:: ****************************************************************************************
:: *****************   This file is to help with launching Star Citizen   *****************
:: *************   Automatic shader deletion and control mapping sync between   ***********
:: ****************************   LIVE and PTU envirovements   ****************************
:: ***********************************   3.13 AND LATER   *********************************
:: ****************************************************************************************
:: ******************   Made by Draconous/ChefHeisca/Wizywig of PXP   *********************
:: *********************   https://planetexpresscrew.com/home/   **************************
:: ****************************************************************************************
:: **********************************   INSTRUCTIONS   ************************************
:: ****************************************************************************************
::
:: Create folders and back up Control Mappings at "\Roberts Space Industries\Download\Controls\Mappings\" 
::
:: You will need to change the directory structure to where you installed Star Citizen.
::
:: It's not fancy and kept very simple on purpose. There is a failsafe Mappings copy built in that can be disabled after first use.
::
:: You can also drop this FileName.bat file in any directoy then right click it and send link to Desktop and start it from there.
::
:: ****************************************************************************************
:: **********************************   EXAMPLE   *****************************************
:: ****************************************************************************************
::
::      ~~~~~~~~~~~~
:: del "Drive:\path\Roberts Space Industries\StarCitizen\LIVE\USER\Client\0\Controls\Mappings\*.*"
::      ~~~~~~~~~~~~
::
:: *****************************************************************************************
:: *****************************************************************************************
::
::
:: *****************************************************************************************
:: ************   Put a <::> in front of the lines below after the first run   *************
:: *****************************************************************************************
::
copy /y "Z:\Path\Roberts Space Industries\StarCitizen\LIVE\USER\Client\0\Controls\Mappings\*.*" "Z:\Path\Roberts Space Industries\Download\Controls\Mappings\*.*"
copy /y "Z:\Path\Roberts Space Industries\StarCitizen\LIVE\USER\Controls\Mappings\*.*" "Z:\Path\Roberts Space Industries\Download\Controls\Mappings\*.*"
::
:: *****************************************************************************************
:: *****************************************************************************************

del /Q "Z:\Path\Roberts Space Industries\StarCitizen\LIVE\USER\Client\0\Controls\Mappings\*.*"

del /Q "Z:\Path\Roberts Space Industries\StarCitizen\PTU\USER\Client\0\Controls\Mappings\*.*"

copy /y "Z:\Path\Roberts Space Industries\Download\Controls\Mappings\*.*" "Z:\Path\Roberts Space Industries\StarCitizen\LIVE\USER\Client\0\Controls\Mappings\*.*"

copy /y "Z:\Path\Roberts Space Industries\Download\Controls\Mappings\*.*" "Z:\Path\Roberts Space Industries\StarCitizen\PTU\USER\Client\0\Controls\Mappings\*.*"

rmdir /s /Q "Z:\Path\Roberts Space Industries\StarCitizen\LIVE\USER\Client\0\shaders"

rmdir /s /Q "Z:\Path\Roberts Space Industries\StarCitizen\PTU\USER\Client\0\shaders"

"Z:\Path\Roberts Space Industries\RSI Launcher\RSI Launcher.exe"		:: I didn't use the start command on purpose

copy /y "Z:\Path\Roberts Space Industries\StarCitizen\LIVE\USER\Client\0\Controls\Mappings\*.*" "Z:\Path\Roberts Space Industries\Download\Controls\Mappings\*.*"

exit 										:: this will close the command window when you exit the Launcher
