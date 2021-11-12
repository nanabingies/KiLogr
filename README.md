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