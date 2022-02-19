c$ = 0
tv64 = 4
d$ = 8
a$ = 32
b$ = 40
int mystery(int,int) PROC                              ; mystery
$LN3:
        mov     DWORD PTR [rsp+16], edx
        mov     DWORD PTR [rsp+8], ecx
        sub     rsp, 24
        mov     eax, DWORD PTR a$[rsp]
        mov     ecx, DWORD PTR b$[rsp]
        sub     ecx, eax
        mov     eax, ecx
        mov     DWORD PTR tv64[rsp], eax
        mov     eax, DWORD PTR a$[rsp]
        cdq
        idiv    DWORD PTR b$[rsp]
        mov     eax, edx
        mov     ecx, DWORD PTR tv64[rsp]
        imul    ecx, eax
        mov     eax, ecx
        mov     DWORD PTR c$[rsp], eax
        mov     eax, DWORD PTR a$[rsp]
        imul    eax, DWORD PTR b$[rsp]
        mov     ecx, DWORD PTR c$[rsp]
        add     ecx, eax
        mov     eax, ecx
        mov     DWORD PTR d$[rsp], eax
        imul    eax, DWORD PTR b$[rsp], 5
        mov     ecx, DWORD PTR a$[rsp]
        imul    ecx, DWORD PTR c$[rsp]
        add     eax, ecx
        mov     ecx, DWORD PTR b$[rsp]
        imul    ecx, DWORD PTR d$[rsp]
        sub     eax, ecx
        add     rsp, 24
        ret     0
int mystery(int,int) ENDP                              ; mystery