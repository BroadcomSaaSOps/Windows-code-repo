# Windows-code-repo
Included are the files used to create a level 1 for 2012 and level 2 for 2016 member server from ISO. Including automated Ansible and terraform deployment scripts. The repo does contains the scripts needed, it does not include some of the utilities and software that are required. this is done to ensure we do not use older versions of software.

 You can from ISO apply: 
 
    Security configurations (Security Folder)
    LGPO policies (Hardening Folder)
    
 Terraform 
 
    Deploy Hardened OS to Vsphere (terraform Folder)
 
 Ansible 
 
     Join VM to domain (YAML\DomainMembership folder)
     Software installations (YAML\SoftwareInstallers folder)

Notes

If you are going to recreate an Image from ISO, then you will need to execute the "ConfigureRemotingForAnsibleSHA256 (1).ps1" file found within the WinRM folder.

All commands need to be executed as administrator 

 Set inital winrm config - ConfigureRemotingForAnsible.ps1

 Create a SHA256 self signed certificate - ConfigureRemotingForAnsible.ps1 -ForceNewSSLCert true

 Enable CredSSp - ConfigureRemotingForAnsible.ps1 -EnableCredSSP    

Those are all the modifications needed to be able to communicate with Winrm.
