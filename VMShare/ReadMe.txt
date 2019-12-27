VMShare Scripts to automatically map drive from VM Guest OS to VM Host System.

-Prereqs-
-Designed to be run from C:\Scripts\VMShare.  
-Designed to map a share named VMShare on the Hyper-V host system.
-Designed to use the VMShare local user account from the Hyper-V host system.

-Manifest-
Hyper-VHost.txt			-	Text file which is created with the SetHyper-VHostParameters.ps1 subscript and identifies the Hyper-V Host system.
MapVMShare.bat			-	Master script designed to be run on login via scheduled task.
MapVMShare.vbs			-	Visual Basic subscript which pulls the Hyper-V Host from Hyper-VHost.txt and maps the drive as Z:
SetHyper-VHostParameters.ps1	-	Powershell subscript which identifies the Hyper-V Host name from the Guest OS and writes the value to Hyper-VHost.txt.

