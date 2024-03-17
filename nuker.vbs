MsgBox"Bienvenido a WhatsApp Nuker. ATENCIÓN: Es necesario inicar sesión en WhatsApp web desde tu computadora",48,"WhatsApp Nuker ©2024 By ZomieGeek0"
Objetivo = InputBox("[~] Escribe el nombre del contacto objetivo" & vbNewLine & vbNewLine &  "[~] No uses tildes a la hora de indicarlo", "WhatsApp Nuker ©2024 By ZomieGeek0")
Mensaje = InputBox("[~] Ingresa el mensaje a enviar","WhatsApp Nuker ©2024 By ZomieGeek0")
T = InputBox("[~] Ingresa cuantas veces deseas enviar el mensaje" & vbNewLine & vbNewLine & "[~] Escribe un número entero","WhatsApp Nuker ©2024 By ZomieGeek0")
If MsgBox("[~] Deseas continuar" & vbNewLine & vbNewLine & "[~] Presiona NO para cancelar el envío", vbYesNo + vbQuestion + vbSystemModal, "WhatsApp Nuker ©2024 By ZomieGeek0") = vbYes Then
 
	Set WshShell = WScript.CreateObject("WScript.Shell")
	Return = WshShell.Run("https://web.whatsapp.com/", 1)
 
	If MsgBox("[~] Está WhatsApp abrierto" & vbNewLine & vbNewLine & "[~] Espera a que la página cargue" & vbNewLine & vbNewLine & "[~] Presiona NO para cancelar!", vbYesNo + vbQuestion + vbSystemModal, "WhatsApp Nuker ©2024 By ZomieGeek0") = vbYes Then
 
	MsgBox "[~] No manipules el navegador durante el envio" & vbNewLine & vbNewLine & "[~] Comenzando en 10 segundos.", 1024 + vbSystemModal, "Preparando WhatsApp Nuker"
 
    WScript.Sleep 50
	WshShell.SendKeys "{TAB}"
 
    WScript.Sleep 50
	WshShell.SendKeys Objetivo
	WScript.Sleep 5000
	WshShell.SendKeys "{ENTER}"
	WScript.Sleep 5000
 
	For i = 0 to T
	WScript.Sleep 5
	WshShell.SendKeys Mensaje
	WScript.Sleep 5
	WshShell.SendKeys "{ENTER}"
	Next
 
	WScript.Sleep 3000
	MsgBox "[~] Nukeo realizado al " + Objetivo + "[~] Se hizo con exito por Zombiegeek0", 1024 + vbSystemModal, "[~] Nukeo realizado"
 
	Else
	MsgBox "[~] El nukeo fue cancelado con exito", vbSystemModal, "WhatsApp Nuker cancelado"
	End If
Else
MsgBox "[~] El Nukeo fue cancelado con exito", vbSystemModal, "WhatsApp Nuker cancelado"
End If
