NTSTATUS DefaultDispatch(PDEVICE_OBJECT pDeviceObject, PIRP pIrp){
    IoSkipCurrentLocation(pIrp);

    PIO_STACK_LOCATION IoStack;
    NTSTATUS status = IofCallDriver(dword_4038A8, pIrp);
    return status;
}