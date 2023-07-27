.model small
.data

    msg db "ABCdef ?", "$"

.code
main proc
    mov ax,@data
    mov ds,ax
    mov si,offset msg
    mov cx,8
    
    boucle:
        mov al,[si]
        cmp al,'A'
        jae compZ
        jmp fin
        compZ:
        cmp al,'Z'
        jbe conv
        jmp fin
        conv:
        add al,32
        mov[si],al
        fin:
         inc si
    loop boucle

    mov dx,offset msg
    mov ah,9
    int 21h

endp
end main
