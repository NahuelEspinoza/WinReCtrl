# WinReCtrl
WinReCtrl es un script escrito en VBScript que tiene como objetivo otorgar el control remoto en un cliente de Windows (SCCM)

WinReCtrl - Script para Otorgar Control Remoto en Clientes Windows SCCM
Descripción
WinReCtrl es un script escrito en VBScript que tiene como objetivo otorgar el control remoto en un cliente de SCCM (System Center Configuration Manager). El script accede al registro del sistema para configurar el control remoto sin requerir permisos adicionales. Además, ha sido mejorado para manejar errores adecuadamente y registrar la salida en archivos de registro ("output_log.txt" para mensajes de éxito y "error_log.txt" para mensajes de error). El nombre "WinReCtrl" refleja su funcionalidad de control remoto en entornos de Windows.

Instalación y Configuración
Descarga el archivo "WinReCtrl.vbs" desde el repositorio de GitHub.
Abre el archivo "WinReCtrl.vbs" con un editor de texto como Notepad++ o Visual Studio Code.
Reemplaza "NOMBRE_DE_LA_COMPUTADORA_AQUI" en la línea strComputer = "NOMBRE_DE_LA_COMPUTADORA_AQUI" con el nombre de la computadora de destino donde deseas otorgar el control remoto. Por ejemplo, strComputer = "MiPCRemota".
Guarda el archivo con el nombre "WinReCtrl.vbs" y colócalo en una ubicación conveniente en tu sistema (por ejemplo, en el escritorio o en una carpeta específica).
Uso
Ejecuta el script haciendo doble clic en el archivo "WinReCtrl.vbs" que has configurado previamente.
El script comenzará a ejecutarse sin interacción del usuario.
Una vez que el script finalice, revisa los archivos de registro en la misma ubicación donde se encuentra el archivo "WinReCtrl.vbs".
"output_log.txt" contiene información sobre el éxito en el otorgamiento del control remoto.
"error_log.txt" registra cualquier error o problema que haya ocurrido durante el proceso.
Requisitos
Privilegios administrativos en la computadora remota para acceder y modificar el registro correctamente.
Aviso
Ejecuta el script con responsabilidad y solo en sistemas y entornos donde tengas los permisos adecuados. No nos hacemos responsables por el uso inadecuado o no autorizado del script.

Contribuciones
Si deseas contribuir a mejorar el script, ¡eres bienvenido! Siempre estamos abiertos a recibir sugerencias y correcciones de errores. Por favor, crea un "pull request" en GitHub para proponer tus cambios.

Licencia
Este proyecto está bajo la Licencia MIT. Consulta el archivo "LICENSE" para obtener más información.

Contacto
Si tienes alguna pregunta o comentario, no dudes en contactarnos en la sección de "Issues" del repositorio en GitHub.

¡Gracias por usar WinReCtrl! Esperamos que te sea útil en tus proyectos de administración remota en entornos de Windows con SCCM.
