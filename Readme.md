
# 📚📝 Documentación del Mini sistema operativo Etanos 🖥️

<img width="622" height="532" alt="image" src="https://github.com/user-attachments/assets/4818e6da-da32-48da-b1f8-aa973d611aee" />

##Emulador QEMU 
#Ruta de Instalación :
C:\Program Files\qemu

# Como ejecutar
"C:\Program Files\qemu\qemu-system-x86_64.exe" -fda etanos
#Comando  -fda es para usar como disco flopi y etanos como nombre del sistema operativo

# 🖥️Etanos para el nombre del sistema operativo 


##Ensamblador portatil NASM
#Ruta de Instalación :
C:\Users\Dell Latitude 5290\AppData\Local\bin\NASM  

# Como ensamblar 
C:\Users\Dell Latitude 5290\AppData\Local\bin\NASM\nasm.exe -fbin etanos.asm

# 🗂️📝 Ficheros 


keymap.inc


etanos.asm

etanos.img  // la imagen ISO 

.bat  // un bot para agilizar el arranque del sistema operativo 
