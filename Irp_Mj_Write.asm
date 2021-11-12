.text:00401360 ; =============== S U B R O U T I N E =======================================
.text:00401360
.text:00401360 ; Attributes: bp-based frame
.text:00401360
.text:00401360 sub_401360      proc near               ; DATA XREF: sub_401250+15↑o
.text:00401360                                         ; .rdata:00402064↓o
.text:00401360
.text:00401360 arg_0           = dword ptr  8
.text:00401360 arg_4           = dword ptr  0Ch
.text:00401360
.text:00401360                 push    ebp
.text:00401361                 mov     ebp, esp
.text:00401363                 mov     edx, [ebp+arg_4]
.text:00401366                 mov     eax, [ebp+arg_0]
.text:00401369                 push    esi
.text:0040136A                 push    edi
.text:0040136B                 mov     esi, [edx+60h]
.text:0040136E                 push    9
.text:00401370                 pop     ecx
.text:00401371                 lea     edi, [esi-24h]
.text:00401374                 rep movsd
.text:00401376                 mov     ecx, [edx+60h]
.text:00401379                 mov     dword ptr [ecx-8], offset sub_401230
.text:00401380                 mov     [ecx-4], eax
.text:00401383                 mov     byte ptr [ecx-21h], 0E0h ; 'à'
.text:00401387                 mov     ecx, DeviceObject
.text:0040138D                 inc     dword_403048
.text:00401393                 call    ds:IofCallDriver
.text:00401399                 pop     edi
.text:0040139A                 pop     esi
.text:0040139B                 pop     ebp
.text:0040139C                 retn    8
.text:0040139C sub_401360      endp
.text:0040139C