@echo off
echo Compilando Etanos...
nasm -f bin etanos.asm -o etanos.img
if errorlevel 1 (
    echo Error en la compilacion. Revisar codigo.
    pause
    exit /b
)
echo Ejecuto Etanos en QEMU...
qemu-system-x86_64 -fda etanos.img
pause

