.model small
.STACK 100h

.DATA
     PROMPT EQU "Please Enter Your Character", "$"
     MSG    DB  PROMPT
.CODE
MAIN PROC
     ;     ;Display a single character to the screen
     ;          mov ah,2
     ;          mov dl,'?'
     ;          int 21h

     ;     ;Get the character
     ;          mov ah,1
     ;          int 21h

     ;     ;Move the character to the BL regsiter
     ;          mov bl,al

     ;     ;Display the Character
     ;          mov ah,2

     ;     ;Carriage Return
     ;          mov dl,0dh
     ;          int 21h

     ;     ;Line Feed
     ;          mov dl,0ah
     ;          int 21h

     ;     ;Get the character and Display it
     ;          mov dl,bl
     ;          int 21h


          mov ax,@DATA
          mov ds,ax

          LEA DX,MSG
          mov ah,09h
          int 21h









MAIN ENDP


END MAIN