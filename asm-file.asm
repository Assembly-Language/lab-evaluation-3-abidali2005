INCLUDE Irvine32.inc

.data
msg db "Total positive numbers: ", 0

.code
CountPositive PROC arrayPtr: DWORD, arrSize: DWORD
    push esi
    push ecx
    push eax

    mov esi, arrayPtr
    mov ecx, arrSize
    xor eax, eax

next:
    movsx edx, WORD PTR [esi]
    cmp edx, 0
    jle skip
    inc eax

skip:
    add esi, 2
    loop next

    pop edx
    pop ecx
    pop esi

    ret
CountPositive ENDP

END

