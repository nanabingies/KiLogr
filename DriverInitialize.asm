.text:00401068 ; =============== S U B R O U T I N E =======================================
.text:00401068
.text:00401068 ; Attributes: bp-based frame
.text:00401068
.text:00401068 sub_401068      proc near               ; CODE XREF: start+B↓j
.text:00401068
.text:00401068 arg_0           = dword ptr  8
.text:00401068 arg_4           = dword ptr  0Ch
.text:00401068
.text:00401068                 mov     edi, edi
.text:0040106A                 push    ebp
.text:0040106B                 mov     ebp, esp
.text:0040106D                 push    edi
.text:0040106E                 mov     edi, [ebp+arg_0]
.text:00401071                 test    edi, edi
.text:00401073                 jnz     short loc_401083
.text:00401075                 push    [ebp+arg_4]
.text:00401078                 push    edi
.text:00401079                 call    sub_401250
.text:0040107E                 jmp     loc_401134
.text:00401083 ; ---------------------------------------------------------------------------
.text:00401083
.text:00401083 loc_401083:                             ; CODE XREF: sub_401068+B↑j
.text:00401083                 push    ebx
.text:00401084                 push    esi
.text:00401085                 push    [ebp+arg_4]
.text:00401088                 xor     eax, eax
.text:0040108A                 mov     word_403684, ax
.text:00401090                 mov     eax, 208h
.text:00401095                 mov     esi, offset word_403684
.text:0040109A                 push    esi
.text:0040109B                 mov     dword_403698, edi
.text:004010A1                 mov     word_403686, ax
.text:004010A7                 mov     dword_403688, offset unk_4036A0
.text:004010B1                 call    ds:RtlCopyUnicodeString
.text:004010B7                 push    offset dword_403694
.text:004010BC                 mov     ebx, offset unk_403008
.text:004010C1                 push    ebx
.text:004010C2                 push    esi
.text:004010C3                 push    edi
.text:004010C4                 call    WdfVersionBind
.text:004010C9                 test    eax, eax
.text:004010CB                 jl      short loc_401132
.text:004010CD                 push    ebx
.text:004010CE                 call    sub_401150
.text:004010D3                 mov     esi, eax
.text:004010D5                 test    esi, esi
.text:004010D7                 jl      short loc_4010ED
.text:004010D9                 call    sub_4011F7
.text:004010DE                 push    [ebp+arg_4]
.text:004010E1                 push    edi
.text:004010E2                 call    sub_401250
.text:004010E7                 mov     esi, eax
.text:004010E9                 test    esi, esi
.text:004010EB                 jge     short loc_4010F6
.text:004010ED
.text:004010ED loc_4010ED:                             ; CODE XREF: sub_401068+6F↑j
.text:004010ED                 call    sub_401000
.text:004010F2                 mov     eax, esi
.text:004010F4                 jmp     short loc_401132
.text:004010F6 ; ---------------------------------------------------------------------------
.text:004010F6
.text:004010F6 loc_4010F6:                             ; CODE XREF: sub_401068+83↑j
.text:004010F6                 mov     eax, dword_403694
.text:004010FB                 cmp     byte ptr [eax+2Ch], 0
.text:004010FF                 jz      short loc_401116
.text:00401101                 mov     eax, [edi+34h]
.text:00401104                 test    eax, eax
.text:00401106                 jz      short loc_40110D
.text:00401108                 mov     dword_40368C, eax
.text:0040110D
.text:0040110D loc_40110D:                             ; CODE XREF: sub_401068+9E↑j
.text:0040110D                 mov     dword ptr [edi+34h], offset sub_401030
.text:00401114                 jmp     short loc_401130
.text:00401116 ; ---------------------------------------------------------------------------
.text:00401116
.text:00401116 loc_401116:                             ; CODE XREF: sub_401068+97↑j
.text:00401116                 test    byte ptr [eax+4], 2
.text:0040111A                 jz      short loc_401130
.text:0040111C                 mov     eax, dword_403374
.text:00401121                 mov     dword_403690, eax
.text:00401126                 mov     dword_403374, offset sub_401060
.text:00401130
.text:00401130 loc_401130:                             ; CODE XREF: sub_401068+AC↑j
.text:00401130                                         ; sub_401068+B2↑j
.text:00401130                 xor     eax, eax
.text:00401132
.text:00401132 loc_401132:                             ; CODE XREF: sub_401068+63↑j
.text:00401132                                         ; sub_401068+8C↑j
.text:00401132                 pop     esi
.text:00401133                 pop     ebx
.text:00401134
.text:00401134 loc_401134:                             ; CODE XREF: sub_401068+16↑j
.text:00401134                 pop     edi
.text:00401135                 pop     ebp
.text:00401136                 retn    8
.text:00401136 sub_401068      endp
.text:00401136
.text:00401136 ; ---------------------------------------------------------------------------
.text:00401139                 align 10h
