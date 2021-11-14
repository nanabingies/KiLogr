NTSTATUS Irp_Mj_Write(PDEVICE_OBKECT pDeviceObject, PIRP pIrp){
    PIO_STACK_LOCATION next;
    next = IoGetNextIrpStackLocation(pIrp);
    next = IoGetCurrentIrpStackLocation(pIrp);

    IoSetCompletionRoutine(pIrp, CompletionRoutine, pDeviceObject, TRUE, TRUE, TRUE);

	dword_403048 += 1;
	
	NTSTATUS ntStatus = IoCallDriver(dword_4038A8, pIrp);
    return ntStatus;
}