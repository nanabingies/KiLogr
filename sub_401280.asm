.text:00401280 ; =============== S U B R O U T I N E =======================================
.text:00401280
.text:00401280 ; Attributes: bp-based frame
.text:00401280
.text:00401280 sub_401280      proc near               ; CODE XREF: sub_401250+23↑p
.text:00401280
.text:00401280 var_98          = byte ptr -98h
.text:00401280 var_90          = byte ptr -90h
.text:00401280 var_88          = dword ptr -88h
.text:00401280 var_84          = byte ptr -84h
.text:00401280 var_6D          = byte ptr -6Dh
.text:00401280 var_4           = dword ptr -4
.text:00401280 arg_0           = dword ptr  8
.text:00401280
.text:00401280                 push    ebp
.text:00401281                 mov     ebp, esp
.text:00401283                 sub     esp, 98h
.text:00401289                 mov     eax, ___security_cookie
.text:0040128E                 xor     eax, ebp
.text:00401290                 mov     [ebp+var_4], eax
.text:00401293                 push    ebx
.text:00401294                 push    esi
.text:00401295                 push    edi
.text:00401296                 push    5
.text:00401298                 pop     ecx
.text:00401299                 mov     esi, offset aDeviceKeyboard ; "\\Device\\KeyboardClass0"
.text:0040129E                 mov     ebx, [ebp+arg_0]
.text:004012A1                 lea     edi, [ebp+var_84]
.text:004012A7                 rep movsd
.text:004012A9                 push    69h ; 'i'
.text:004012AB                 lea     eax, [ebp+var_6D]
.text:004012AE                 movsw
.text:004012B0                 movsb
.text:004012B1                 xor     esi, esi
.text:004012B3                 push    esi
.text:004012B4                 push    eax
.text:004012B5                 call    memset
.text:004012BA                 add     esp, 0Ch
.text:004012BD                 lea     eax, [ebp+var_88]
.text:004012C3                 push    eax
.text:004012C4                 push    1
.text:004012C6                 push    esi
.text:004012C7                 push    0Bh
.text:004012C9                 push    esi
.text:004012CA                 push    esi
.text:004012CB                 push    ebx
.text:004012CC                 call    ds:IoCreateDevice
.text:004012D2                 pop     edi
.text:004012D3                 pop     esi
.text:004012D4                 pop     ebx
.text:004012D5                 test    eax, eax
.text:004012D7                 jns     short loc_4012DE
.text:004012D9
.text:004012D9 loc_4012D9:                             ; CODE XREF: sub_401280+BC↓j
.text:004012D9                 lfence
.text:004012DC                 jmp     short loc_40134D
.text:004012DE ; ---------------------------------------------------------------------------
.text:004012DE
.text:004012DE loc_4012DE:                             ; CODE XREF: sub_401280+57↑j
.text:004012DE                 mov     eax, [ebp+var_88]
.text:004012E4                 or      dword ptr [eax+1Ch], 2004h
.text:004012EB                 mov     eax, [ebp+var_88]
.text:004012F1                 and     dword ptr [eax+1Ch], 0FFFFFF7Fh
.text:004012F8                 lea     eax, [ebp+var_84]
.text:004012FE                 push    eax
.text:004012FF                 lea     eax, [ebp+var_98]
.text:00401305                 push    eax
.text:00401306                 call    ds:RtlInitAnsiString
.text:0040130C                 push    1
.text:0040130E                 lea     eax, [ebp+var_98]
.text:00401314                 push    eax
.text:00401315                 lea     eax, [ebp+var_90]
.text:0040131B                 push    eax
.text:0040131C                 call    ds:RtlAnsiStringToUnicodeString
.text:00401322                 push    offset DeviceObject
.text:00401327                 lea     eax, [ebp+var_90]
.text:0040132D                 push    eax
.text:0040132E                 push    [ebp+var_88]
.text:00401334                 call    ds:IoAttachDevice
.text:0040133A                 test    eax, eax
.text:0040133C                 js      short loc_4012D9
.text:0040133E                 lea     eax, [ebp+var_90]
.text:00401344                 push    eax
.text:00401345                 call    ds:RtlFreeUnicodeString
.text:0040134B                 xor     eax, eax
.text:0040134D
.text:0040134D loc_40134D:                             ; CODE XREF: sub_401280+5C↑j
.text:0040134D                 mov     ecx, [ebp+var_4]
.text:00401350                 xor     ecx, ebp
.text:00401352                 call    @__security_check_cookie@4 ; __security_check_cookie(x)
.text:00401357                 leave
.text:00401358                 retn    4
.text:00401358 sub_401280      endp
.text:00401358
.text:00401358 ; ---------------------------------------------------------------------------
