Manage-BDE.exe
BitLocker Drive Encryption: Configuration Tool. Configure BitLocker Drive Encryption on disk volumes.

Syntax
      manage-bde[.exe] -parameter [arguments]

Key
   -autounlock            Manage automatic unlocking of data volumes.
   -ComputerName or -cn   Run on another computer. Examples: "Computer64", "127.0.0.1"
   -changekey             Modify startup key for a volume.
   -changepassword        Modify password for a data volume.
   -changepin             Modify PIN for a volume.
   -ForceRecovery or -fr  Force a BitLocker-protected OS to recover on restarts.
   -KeyPackage or -kp     Generate a key package for a volume.
   -lock       Prevent access to BitLocker-encrypted data.
   -unlock     Allow access to BitLocker-encrypted data.
   -on         Encrypt the volume and turns BitLocker protection on.
   -off        Decrypt the volume and turns BitLocker protection off.
   -pause      Pause encryption, decryption, or free space wipe.
   -protectors   Manage protection methods for the encryption key.
   -resume     Resume encryption, decryption, or free space wipe.
   -SetIdentifier or -si  Configure the identification field for a volume.
   -status     Provide information about BitLocker-capable volumes.
   –tpm        Configure the computer’s Trusted Platform Module (TPM).
   -upgrade               Upgrade the BitLocker version.
   -WipeFreeSpace or -w   Wipe the free space on the volume.

   -? or /?    Display brief help. Example: "-ParameterSet -?"

   -Help or -h Display complete help. Example: "-ParameterSet -h"
Use the -h or -help option to see the full options for each of the commands above e.g. manage-bde -on -h

Install BitLocker feature components with DISM /online /Enable-Feature /all /FeatureName:BitLocker
Prepare the OS volume for BitLocker using BdeHDcfg
Use the manage-bde command to enable encryption on the boot volume using an external key protector.
Examples
manage-bde -status
manage-bde -on C: -RecoveryPassword -RecoveryKey F:\
manage-bde -unlock E: -RecoveryKey F:\84E151C1...7A62067A512.bek

“The instinct of nearly all societies is to lock up anybody who is truly free. First, society begins by trying to beat you up. If this fails, they try to poison you. If this fails too, the finish by loading honors on your head” ~ Jean Cocteau (poet)
