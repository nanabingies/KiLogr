.text:00401250 ; =============== S U B R O U T I N E =======================================
.text:00401250
.text:00401250 ; Attributes: bp-based frame
.text:00401250
.text:00401250 sub_401250      proc near               ; CODE XREF: sub_401068+11↑p
.text:00401250                                         ; sub_401068+7A↑p
.text:00401250
.text:00401250 arg_0           = dword ptr  8
.text:00401250
.text:00401250                 push    ebp
.text:00401251                 mov     ebp, esp
.text:00401253                 mov     edx, [ebp+arg_0]
.text:00401256                 mov     eax, offset sub_401400
.text:0040125B                 push    edi
.text:0040125C                 push    1Bh
.text:0040125E                 pop     ecx
.text:0040125F                 lea     edi, [edx+38h]
.text:00401262                 rep stosd
.text:00401264                 push    edx
.text:00401265                 mov     dword ptr [edx+44h], offset sub_401360
.text:0040126C                 mov     dword ptr [edx+34h], offset sub_4013A0
.text:00401273                 call    sub_401280
.text:00401278                 xor     eax, eax
.text:0040127A                 pop     edi
.text:0040127B                 pop     ebp
.text:0040127C                 retn    8
.text:0040127C sub_401250      endp
.text:0040127C