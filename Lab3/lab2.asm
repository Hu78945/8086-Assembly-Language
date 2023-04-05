.model small
.stack 100h

.data

     prompt1 db "Enter the 1st digit: ", "$"
     prompt2 db 0AH, 0DH, "Enter the 2nd digit: ", "$"
     result  db 0AH, 0DH, "The sum is: ", "$"

.code
main proc
     ;move all the data to ax resgiter and the it to ds
          mov ax,@data
          mov ds,ax
          mov ah,09h
          mov dx, offset prompt1
          int 21h
       
     ;ah,1 is use to get input from the user
          mov ah,1
          int 21h
       
     ;content of al the recent input is moved to bl
          mov bl, al
          sub bl, 48
     ;second prompt is printed
          mov ah, 09h
          mov dx, offset prompt2
          int 21h
        
     ;we get the second input
          mov ah, 1
          int 21h
       
     ;mov the recent input from al to bh
          mov bh, al
          sub bh, 48
       
     ;print the third promt
          mov ah, 09h
          mov dx, offset result
          int 21h
             
     ;addition is pefomed and result is store in the bh
          add bh, bl
          add bh,48
          mov dl, bh
       
          mov ah, 02h
          int 21h
          mov ax,4c00h
main endp
    end main
       
       
        
        