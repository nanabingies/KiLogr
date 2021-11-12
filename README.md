# KiLogr
Reverse Engineering the KiLogr driver

## Description
#BINARY

Name: KiLogr.sys

File Type: Portable Executable 

MD5: 32BB4212228D5E115700232E9F3ECA2F

SHA-1: 62E47D5141FC05E9307A85F316E555DC63F7AF3F


# IMPORTS
> KeSetTimer

> KeWaitForSingleObject

> IoAttachDevice

> IofCallDriver

> KeInitializeTimer

> IoDeleteDevice

> IoDetachDevice

> memset

> KeBugCheckEx

> RtlCopyUnicodeString

> RtlFreeUnicodeString

> RtlAnsiStringToUnicodeString

> IoCreateDevice

> RtlInitAnsiString

# EXPORTS
Only EntryPoint

# DRIVER INITIALIZATION

On entry, driver initialization function exists at the offset 0x401068. This function sets up the WDF driver variables and calls the DriverEntry function located at offset 0x401250.

> DriverEntry
The driver sets up dispatch routines and initializes the driverObjects major functions to the default Dispatch sub_401400. From the disassembly the edx points to the driverObject so [edx+0x38] will functionally point to the majorFunction structures.

[edx+0x44] will point to the IRP_MJ_READ since that's at offset 3 according to the microsoft sdk. This sets the DriverObject->MajorFunction[IRP_MJ_READ] to sub_401360.

[edx+0x34] points to the DriverUnload member of the DriverObject structure. The Unload function is at sub_4013A0.