.model small
.stack 100h

.code
main PROC
         mov ax, 10101b
         mov bx ,11101b

         neg bx

         add ax, bx
         neg ax

         mov ax, 4c00h
main ENDP
    end main
