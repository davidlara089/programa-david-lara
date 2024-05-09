@echo off
set /a intentos=0

:inicio
cls
set /p nombre=Introduce tu nombre de usuario:
set /p contrasena=Introduce tu contrasenia:
if "%nombre%"=="usuario" (
    if "%contrasena%"=="contrasenia" (
        goto correcto
    )
)
set /a intentos+=1
if %intentos% equ 3 (
    echo Has excedido el número de intentos permitidos.
    pause
    exit /b
)
echo Usuario o contraseña incorrectos. Por favor intenta de nuevo.
pause
goto inicio

:correcto
echo Has ingresado correctamente.
pause
