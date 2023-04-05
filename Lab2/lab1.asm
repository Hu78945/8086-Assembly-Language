.model small
.stack 100h

.data
    
    name1 db "Name: Syed Behzad Hassan Naqvi", "$"
    ID db 0AH,0DH, "RollNo: F2021266104", "$"
    section db  0AH,0DH, "Section: V1", "$"
    
.code
    main proc
        mov ax,@data
        mov ds,ax
        mov ah,09h
        mov dx, offset name1
        int 21h
        
        mov ah,09h
        mov dx, offset ID
        int 21h
        mov ah,09h
        mov dx, offset section
        int 21h
        
        mov ax,4c00h
        main endp
    end main
 
 ;02h to print a character
 ;mov ah, 02
 ;mov dl, 'a'
    
 ;09h print string
 ;mov dx, msg
    
 ;01h for the user input get charcter with echo
 ;08h get chacrter without echo              Alregsiter will store the value
       
    
    
    

