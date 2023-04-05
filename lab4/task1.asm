.model small
.stack 100h

.code
main PROC
     ;Putting 29 in ax
          mov ax, 24
   

     ;Putting 59 in bx
          mov bx, 59
  

     ;subtracting 24 from 59
          sub bx, ax
 

     ;moving it to dx in order  to print it
          mov dx, bx

     ;Print the result
          mov ah, 02h
          int 21h
          mov ax, 4c00h
main ENDP
    end main