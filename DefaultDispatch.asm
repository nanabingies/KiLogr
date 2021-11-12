.text:00401400 ; =============== S U B R O U T I N E =======================================
.text:00401400
.text:00401400 ; Attributes: bp-based frame
.text:00401400
.text:00401400 sub_401400      proc near               ; DATA XREF: sub_401250+6↑o
.text:00401400                                         ; .rdata:0040206C↓o
.text:00401400
.text:00401400 arg_4           = dword ptr  0Ch
.text:00401400
.text:00401400                 push    ebp
.text:00401401                 mov     ebp, esp
.text:00401403                 mov     edx, [ebp+arg_4]
.text:00401406                 inc     byte ptr [edx+23h]
.text:00401409                 add     dword ptr [edx+60h], 24h ; '$'
.text:0040140D                 mov     ecx, DeviceObject
.text:00401413                 call    ds:IofCallDriver
.text:00401419                 pop     ebp
.text:0040141A                 retn    8
.text:0040141A sub_401400      endp
.text:0040141A