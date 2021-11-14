VOID DriverUnload(PDRIVER_OBJECT pDriverObject){
    IoDetachDevice(dword_4038A8);

    KTIMER timer;
    KeInitializeTimer(&timer);

    LARGE_INTEGER large;
    large.QuadPart = 1000000;
    do{
        KeSetTimer(&timer, large, 0);
        KeWaitForSingleObject(&timer, Executive, KernelMode, FALSE, NULL);
    }(while dword_403048 >= 0);

    IoDeleteDevice(pDriverObject->DeviceObject);
}