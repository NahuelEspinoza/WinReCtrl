# WinReCtrl
WinReCtrl es un script escrito en VBScript que tiene como objetivo otorgar el control remoto en un cliente de Windows (SCCM)

WinReCtrl - Script para Otorgar Control Remoto en Clientes Windows SCCM
Descripción
WinReCtrl es un script escrito en VBScript que tiene como objetivo otorgar el control remoto en un cliente de SCCM (System Center Configuration Manager). El script accede al registro del sistema para configurar el control remoto sin requerir permisos adicionales. Además, ha sido mejorado para manejar errores adecuadamente y registrar la salida en archivos de registro ("output_log.txt" para mensajes de éxito y "error_log.txt" para mensajes de error). El nombre "WinReCtrl" refleja su funcionalidad de control remoto en entornos de Windows.


Instalación y Configuración : 

Descarga el archivo "WinReCtrl.vbs" desde el repositorio de GitHub.

Abre el archivo "WinReCtrl.vbs" con un editor de texto como Notepad++ o Visual Studio Code.

Reemplaza "NOMBRE_DE_LA_COMPUTADORA_AQUI" en la línea strComputer = "NOMBRE_DE_LA_COMPUTADORA_AQUI" con el nombre de la computadora de destino donde deseas otorgar el control remoto. Por ejemplo, strComputer = "MiPCRemota".

Guarda el archivo con el nombre "WinReCtrl.vbs" y colócalo en una ubicación conveniente en tu sistema (por ejemplo, en el escritorio o en una carpeta específica).


Uso : 

Ejecuta el script haciendo doble clic en el archivo "WinReCtrl.vbs" que has configurado previamente.

El script comenzará a ejecutarse sin interacción del usuario.

Una vez que el script finalice, revisa los archivos de registro en la misma ubicación donde se encuentra el archivo "WinReCtrl.vbs".

"output_log.txt" contiene información sobre el éxito en el otorgamiento del control remoto.

"error_log.txt" registra cualquier error o problema que haya ocurrido durante el proceso.


Requisitos:

Privilegios administrativos en la computadora remota para acceder y modificar el registro correctamente.

Aviso : 
Ejecuta el script con responsabilidad y solo en sistemas y entornos donde tengas los permisos adecuados. No nos hacemos responsables por el uso inadecuado o no autorizado del script.


Ejemplos de uso de WinReCtrl:

Ejemplo 1: Configuración del control remoto en una única computadora.

Descarga el archivo "WinReCtrl.vbs" desde el repositorio de GitHub.
Abre el archivo "WinReCtrl.vbs" con un editor de texto y reemplaza "NOMBRE_DE_LA_COMPUTADORA_AQUI" con el nombre de la computadora de destino, por ejemplo, "MiPCRemota".
Guarda el archivo y colócalo en una ubicación conveniente.
Ejecuta el script haciendo doble clic en el archivo "WinReCtrl.vbs".
Una vez que el script finalice, verifica los archivos de registro "output_log.txt" y "error_log.txt" en la misma ubicación del script para ver el resultado del proceso.

Ejemplo 2: Configuración del control remoto en varias computadoras.

Descarga el archivo "WinReCtrl.vbs" desde el repositorio de GitHub.
Abre el archivo "WinReCtrl.vbs" con un editor de texto y reemplaza "NOMBRE_DE_LA_COMPUTADORA_AQUI" con el nombre de cada computadora de destino que desees otorgar el control remoto, por ejemplo, "PC1", "PC2", "PC3", etc.
Guarda el archivo y colócalo en una ubicación conveniente.
Ejecuta el script haciendo doble clic en el archivo "WinReCtrl.vbs".
Para cada computadora, el script configurará el control remoto y registrará la salida en los archivos "output_log.txt" y "error_log.txt" correspondientes.

Ejemplo 3: Implementación en un entorno empresarial.

Supongamos que eres el administrador de TI en una empresa y deseas configurar el control remoto en varios clientes SCCM dentro de la red corporativa.

Descarga el archivo "WinReCtrl.vbs" desde el repositorio de GitHub.
Abre el archivo "WinReCtrl.vbs" con un editor de texto y modifica la variable strComputer para que contenga el nombre de cada computadora de destino que necesitas configurar.
Guarda el archivo y colócalo en una carpeta compartida en la red de la empresa.
Crea un archivo de texto llamado "computers.txt" y lista en él los nombres de las computadoras de destino, uno por línea.
Crea un archivo por lotes (por ejemplo, "configurar_remoto.bat") que ejecute el script "WinReCtrl.vbs" para cada computadora listada en el archivo "computers.txt". El contenido del archivo por lotes podría ser algo así:


batch :

@echo off
setlocal

for /f %%i in (computers.txt) do (
    echo Configurando control remoto en %%i...
    cscript //nologo \\ruta\compartida\WinReCtrl.vbs "%%i"
)

echo Proceso completado.

pause


Guarda el archivo por lotes y ejecútalo en un equipo del dominio con privilegios administrativos.
El script "WinReCtrl.vbs" se ejecutará para cada computadora listada en el archivo "computers.txt", configurando el control remoto y registrando la salida en archivos de registro.
Verifica los archivos "output_log.txt" y "error_log.txt" en la carpeta compartida para revisar los resultados.
Con estos ejemplos, se puede utilizar WinReCtrl de manera silenciosa y eficiente para otorgar el control remoto en múltiples clientes SCCM en diferentes escenarios, ya sea en una computadora individual o en un entorno empresarial con varias computadoras. El script permite automatizar el proceso y obtener información sobre el resultado de cada configuración en los archivos de registro correspondientes. Recuerda siempre ejecutar el script con los permisos adecuados y de forma responsable.

Contribuciones : 

Si deseas contribuir a mejorar el script, ¡eres bienvenido! Siempre estamos abiertos a recibir sugerencias y correcciones de errores. Por favor, crea un "pull request" en GitHub para proponer tus cambios.

Licencia : 

Este proyecto está bajo la Licencia MIT. Consulta el archivo "LICENSE" para obtener más información.

Contacto : 

Si tienes alguna pregunta o comentario, no dudes en contactarnos en la sección de "Issues" del repositorio en GitHub.


¡Gracias por usar WinReCtrl! Esperamos que te sea útil en tus proyectos de administración remota en entornos de Windows con SCCM.
