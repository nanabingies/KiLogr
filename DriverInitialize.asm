.text:00401068
.text:00401068 ; =============== S U B R O U T I N E =======================================
.text:00401068
.text:00401068 ; Attributes: bp-based frame
.text:00401068
.text:00401068 ; int __stdcall FxDriverEntryWorker(_DRIVER_OBJECT *DriverObject, _UNICODE_STRING *RegistryPath)
.text:00401068 _FxDriverEntryWorker@8 proc near        ; CODE XREF: FxDriverEntry(x,x)+B↓j
.text:00401068
.text:00401068 DriverObject    = dword ptr  8
.text:00401068 RegistryPath    = dword ptr  0Ch
.text:00401068
.text:00401068                 mov     edi, edi
.text:0040106A                 push    ebp
.text:0040106B                 mov     ebp, esp
.text:0040106D                 push    edi
.text:0040106E                 mov     edi, [ebp+DriverObject]
.text:00401071                 test    edi, edi
.text:00401073                 jnz     short loc_401083
.text:00401075                 push    [ebp+RegistryPath] ; regPath
.text:00401078                 push    edi             ; pDriverObject
.text:00401079                 call    _DriverEntry@8  ; DriverEntry(x,x)
.text:0040107E                 jmp     loc_401134
.text:00401083 ; ---------------------------------------------------------------------------
.text:00401083
.text:00401083 loc_401083:                             ; CODE XREF: FxDriverEntryWorker(x,x)+B↑j
.text:00401083                 push    ebx
.text:00401084                 push    esi
.text:00401085                 push    [ebp+RegistryPath]
.text:00401088                 xor     eax, eax
.text:0040108A                 mov     WdfDriverStubRegistryPath.Length, ax
.text:00401090                 mov     eax, 208h
.text:00401095                 mov     esi, offset WdfDriverStubRegistryPath
.text:0040109A                 push    esi
.text:0040109B                 mov     WdfDriverStubDriverObject, edi
.text:004010A1                 mov     WdfDriverStubRegistryPath.MaximumLength, ax
.text:004010A7                 mov     WdfDriverStubRegistryPath.Buffer, offset WdfDriverStubRegistryPathBuffer
.text:004010B1                 call    ds:__imp__RtlCopyUnicodeString@8 ; RtlCopyUnicodeString(x,x)
.text:004010B7                 push    offset _WdfDriverGlobals
.text:004010BC                 mov     ebx, offset WdfBindInfo
.text:004010C1                 push    ebx
.text:004010C2                 push    esi
.text:004010C3                 push    edi
.text:004010C4                 call    _WdfVersionBind@16 ; WdfVersionBind(x,x,x,x)
.text:004010C9                 test    eax, eax
.text:004010CB                 jl      short loc_401132
.text:004010CD                 push    ebx             ; WdfBindInfo
.text:004010CE                 call    ?FxStubBindClasses@@YGJPAU_WDF_BIND_INFO@@@Z ; FxStubBindClasses(_WDF_BIND_INFO *)
.text:004010D3                 mov     esi, eax
.text:004010D5                 test    esi, esi
.text:004010D7                 jl      short error
.text:004010D9                 call    ?FxStubInitTypes@@YGXXZ ; FxStubInitTypes(void)
.text:004010DE                 push    [ebp+RegistryPath] ; regPath
.text:004010E1                 push    edi             ; pDriverObject
.text:004010E2                 call    _DriverEntry@8  ; DriverEntry(x,x)
.text:004010E7                 mov     esi, eax
.text:004010E9                 test    esi, esi
.text:004010EB                 jge     short loc_4010F6
.text:004010ED
.text:004010ED error:                                  ; CODE XREF: FxDriverEntryWorker(x,x)+6F↑j
.text:004010ED                 call    ?FxStubDriverUnloadCommon@@YGXXZ ; FxStubDriverUnloadCommon(void)
.text:004010F2                 mov     eax, esi
.text:004010F4                 jmp     short loc_401132
.text:004010F6 ; ---------------------------------------------------------------------------
.text:004010F6
.text:004010F6 loc_4010F6:                             ; CODE XREF: FxDriverEntryWorker(x,x)+83↑j
.text:004010F6                 mov     eax, _WdfDriverGlobals
.text:004010FB                 cmp     byte ptr [eax+2Ch], 0
.text:004010FF                 jz      short loc_401116
.text:00401101                 mov     eax, [edi+34h]
.text:00401104                 test    eax, eax
.text:00401106                 jz      short loc_40110D
.text:00401108                 mov     WdfDriverStubDisplacedDriverUnload, eax
.text:0040110D
.text:0040110D loc_40110D:                             ; CODE XREF: FxDriverEntryWorker(x,x)+9E↑j
.text:0040110D                 mov     dword ptr [edi+34h], offset _FxStubDriverUnload@4 ; FxStubDriverUnload(x)
.text:00401114                 jmp     short loc_401130
.text:00401116 ; ---------------------------------------------------------------------------
.text:00401116
.text:00401116 loc_401116:                             ; CODE XREF: FxDriverEntryWorker(x,x)+97↑j
.text:00401116                 test    byte ptr [eax+4], 2
.text:0040111A                 jz      short loc_401130
.text:0040111C                 mov     eax, _WdfFunctions+324h
.text:00401121                 mov     WdfDriverStubOriginalWdfDriverMiniportUnload, eax
.text:00401126                 mov     _WdfFunctions+324h, offset _FxStubDriverMiniportUnload@8 ; FxStubDriverMiniportUnload(x,x)
.text:00401130
.text:00401130 loc_401130:                             ; CODE XREF: FxDriverEntryWorker(x,x)+AC↑j
.text:00401130                                         ; FxDriverEntryWorker(x,x)+B2↑j
.text:00401130                 xor     eax, eax
.text:00401132
.text:00401132 loc_401132:                             ; CODE XREF: FxDriverEntryWorker(x,x)+63↑j
.text:00401132                                         ; FxDriverEntryWorker(x,x)+8C↑j
.text:00401132                 pop     esi
.text:00401133                 pop     ebx
.text:00401134
.text:00401134 loc_401134:                             ; CODE XREF: FxDriverEntryWorker(x,x)+16↑j
.text:00401134                 pop     edi
.text:00401135                 pop     ebp
.text:00401136                 retn    8
.text:00401136 _FxDriverEntryWorker@8 endp
.text:00401136
.text:00401136 