# Windows-code-repo
these are the files used to recreate a level 1 for 2012 and level 2 for 2016 member server. The repo contains the files needed 
it does not include some of the utilities that are required. this is done to ensure we do not use older versions of software.

Some notes
If you are going to recreate an Image from ISO, then you will need to execute the "ConfigureRemotingForAnsibleSHA256 (1).ps1" file found within the WinRM folder.

All commands need to be executed as administrator 
Set inital winrm config - ConfigureRemotingForAnsible.ps1
Create a SHA256 self signed certificate - ConfigureRemotingForAnsible.ps1 -ForceNewSSLCert true
Enable CredSSp - ConfigureRemotingForAnsible.ps1 -EnableCredSSP    

that is all the modifications needed to be able to communicate with Winrm
