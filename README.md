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

>[edx+0x44] will point to the IRP_MJ_READ since that's at offset 3 according to the microsoft sdk. This sets the DriverObject->MajorFunction[IRP_MJ_READ] to sub_401360.

>[edx+0x34] points to the DriverUnload member of the DriverObject structure. The Unload function is at sub_4013A0.

>The driver then makes a call to sub_401280 and then returns gracefully with error code STATUS_SUCCESS.

# DRIVER UNLOAD
The Unload function is at offset 0x4013A0. It first calls IoDetachDevice with a global variable dword_4038A8 as parameter. According to Microsoft sources the IoDetachDevice routine releases an attachment between the caller's device object and a lower driver's device object. It is then safe to assume that dword_4038A8 is a pointer to a DeviceObject structure.

Next, a timer structure is initialized  by calling KeInitializeTime with var_28 as input. We then enter a loop which calls sets the timer object by calling KeSetTimer. After each iteration in the loop global variable dword_403048 is decreased until it's equal to zero. After each call, KeWaitForSingleObject function is called which puts the current thread into a wait state until the wait times out.

The device object is then deleted with a cal to IoDeleteDevice and the function exits.

# DISPATCH ROUTINES

# Default Dispatch Routine (sub_401400)