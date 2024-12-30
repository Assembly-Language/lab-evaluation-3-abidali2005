

INCLUDE Irvine32.inc
.data
;public asmfunc
msg db "assebly procedure end now",0


.code
countPositives PROC arr:PTR DWORD, size:DWORD
    
    push ebp
    mov ebp, esp
    xor ecx, ecx          
    xor ebx, ebx            
    
    mov esi, arr         
    mov edx, size         

check_loop:
    cmp ebx, edx           
    jge end_loop            

    mov eax, [esi + ebx*4]
    cmp eax, 0              
    jle skip_increment      

    inc ecx                

skip_increment:
    inc ebx                 
    jmp check_loop        

end_loop:
    mov eax, ecx           
    pop ebp
    ret
countPositives ENDP
END


