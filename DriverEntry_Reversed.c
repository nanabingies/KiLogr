NTSTATUS DriverEntry(PDRIVER_OBJECT pDriverObject, PUNICODE_STRING pRegPath){
    for (ULONG i=0; i<IRP_MJ_MAXIMUM_FUNCTION; i++){
        pDriverObject->MajorFunction[i] = sub_401400();
    }

    pDriverObject->MajorFunction[IRP_MJ_WRITE] = sub_401360();
    pDriverObject->DriverUnload = sub_4013A0();

    sub_401280();

    return STATUS_SUCCESS;
}