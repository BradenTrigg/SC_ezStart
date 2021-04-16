****************************************************************************************
****************************************************************************************
*******/------------------------------------------------------------------------\*******
** /--/              DISCLAIMER: PLEASE READ CAREFULLY BEFORE USE.               \--\ **
**|       By using this file you understand that personal use and modification       |**
** \--\      of file contents should be done at your own discretion and risk.    /--/ **
*******\------------------------------------------------------------------------/*******
****************************************************************************************
****************************************************************************************
****____*____****____*____*__**____*____********************(*****(*********************
***(  __(__  )  / ___(_  _/ _\(  _ (_  _)**********)********)\*)**)\*)***(*******(******
****) _) / _/   \___ \ )(/    \)   / )(*********(*/(*(*****(()/(*(()/(***)\******)\*****
***(____(____)  (____/(__\_/\_(__\_)(__) *******)\()))\*)***/(_)) /(_)((((_)(**(((_)****
***********************************************((_)\(()/(**(_))_ (_))  )\ _ )\*)\___****
***********************************************| |(_))(_))**|   \| _ \ (_)_\(_((/ __|***
***********************************************| '_ | || |**| |) |   /  / _ \  | (__****
***********************************************|_.__/\_, |**|___/|_|_\ /_/ \_\  \___|***
*****************************************************|__/*******************************
****************************************************************************************
****************************************************************************************
*****************   This file is to help with launching Star Citizen   *****************
********   Automatic shader deletion, control mapping sync and backup between   ********
****************************   LIVE and PTU envirovements   ****************************
***********************************   3.13 AND LATER   *********************************
****************************************************************************************
******************   Made by Draconous/ChefHeisca/Wizywig of PXP   *********************
*********************   https://planetexpresscrew.com/home/   **************************
****************************************************************************************

What it does:  After starting the .bat it will copy the contents of your controls\mappings\ from both LIVE and 
PTU into a back up folder (optional / i recomend to disable this post first use).
Primary purpose (on both LIVE and PTU): Deletes all Control Mappings from USER folder, then copies in Mappings 
from the backup directory. Then it will remove the whole shader directory and launch the RSI Launcher. The Command 
Promp will remain open allowing user to view status of the launcher. Apon exiting RSI launcher, the .bat will 
copy the Control Mappings to the backup, overwriting the preivous copies.


****************************************************************************************
********************************   INSTRUCTIONS   **************************************
****************************************************************************************

Create folders and back up Control Mappings at "\Roberts Space Industries\Download\Controls\Mappings\" 

You will need to change the directory structure to where you installed Star Citizen.

It's not fancy and kept very simple on purpose. There is a failsafe Mappings copy built in that can be disabled after first use.

You can also drop this FileName.bat file in any directoy then right click it and send link to Desktop and start it from there.

****************************************************************************************
**********************************   EXAMPLE   *****************************************
****************************************************************************************

     ~~~~~~~~~~~~
del "Drive:\path\Roberts Space Industries\StarCitizen\LIVE\USER\Client\0\Controls\Mappings\*.*"
     ~~~~~~~~~~~~
     
*****************************************************************************************
*****************************************************************************************

