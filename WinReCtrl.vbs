On Error Resume Next ' Permitir que el script continúe ejecutándose a pesar de errores.

OPTION EXPLICIT ' Forzar declaración explícita de variables para un código más seguro y legible.

DIM strComputer, regPath, regValue, regData, objReg
CONST HKEY_LOCAL_MACHINE = &H80000002 ' Constante que representa la raíz del registro HKEY_LOCAL_MACHINE.

' Nombre de la computadora de destino para otorgar el control remoto.
strComputer = "NOMBRE_DE_LA_COMPUTADORA_AQUI" ' Reemplazar "NOMBRE_DE_LA_COMPUTADORA_AQUI" con el nombre correcto.

If strComputer <> "" Then
    ' Obtener una instancia de StdRegProv para acceder al registro de la computadora remota.
    Set objReg = GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\default:StdRegProv")
    
    If Err.Number = 0 Then ' Verificar si no se produjo un error al obtener la instancia de StdRegProv.
        ' Ruta del registro donde se encuentra la configuración del control remoto en el cliente de SCCM.
        regPath = "SOFTWARE\Microsoft\SMS\Client\Client Components\Remote Control"
        
        ' Nombre del valor del registro que contiene la configuración de permisos.
        regValue = "Permission Required"
        
        ' Eliminar la clave de registro anterior relacionada con el control remoto.
        objReg.DeleteValue HKEY_LOCAL_MACHINE, regPath, regValue
        
        ' Configurar nuevos valores en el registro para otorgar el control remoto sin permisos adicionales.
        regData = 0
        objReg.SetDWORDValue HKEY_LOCAL_MACHINE, regPath, regValue, regData
        
        If Err.Number = 0 Then ' Verificar si no se produjo un error al modificar el registro.
            ' Escribir en un archivo de registro para registrar la salida sin mostrar mensajes emergentes (MsgBox).
            Dim fso, outputFile
            Set fso = CreateObject("Scripting.FileSystemObject")
            Set outputFile = fso.CreateTextFile("output_log.txt", True)
            outputFile.WriteLine "Control remoto otorgado exitosamente."
            outputFile.Close
            Set fso = Nothing
            Set outputFile = Nothing
        Else
            ' Escribir en un archivo de registro para registrar errores sin mostrar mensajes emergentes (MsgBox).
            Dim fso, outputFile
            Set fso = CreateObject("Scripting.FileSystemObject")
            Set outputFile = fso.CreateTextFile("error_log.txt", True)
            outputFile.WriteLine "Ha ocurrido un error al configurar el control remoto en el registro."
            outputFile.Close
            Set fso = Nothing
            Set outputFile = Nothing
        End If
    Else
        ' Escribir en un archivo de registro para registrar errores sin mostrar mensajes emergentes (MsgBox).
        Dim fso, outputFile
        Set fso = CreateObject("Scripting.FileSystemObject")
        Set outputFile = fso.CreateTextFile("error_log.txt", True)
        outputFile.WriteLine "No se pudo conectar a la computadora remota. Verifique el nombre y asegúrese de tener acceso."
        outputFile.Close
        Set fso = Nothing
        Set outputFile = Nothing
    End If
Else
    ' Escribir en un archivo de registro para registrar errores sin mostrar mensajes emergentes (MsgBox).
    Dim fso, outputFile
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set outputFile = fso.CreateTextFile("error_log.txt", True)
    outputFile.WriteLine "No se ha proporcionado el nombre de la computadora de destino."
    outputFile.Close
    Set fso = Nothing
    Set outputFile = Nothing
End If

' Limpiar variables y establecer Err en 0 para evitar que errores anteriores afecten futuras operaciones.
Err.Clear
Set objReg = Nothing
strComputer = ""
regPath = ""
regValue = ""
regData = ""

