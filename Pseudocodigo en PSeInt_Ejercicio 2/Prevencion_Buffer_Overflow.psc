Proceso Prevencion_Buffer_Overflow
	
	Definir nombre Como Cadena
	Definir cantidad Como Entero
	
	Escribir "Ingrese un nombre de maximo 20 caracteres:"
	Leer nombre
	
	cantidad <- longitud(nombre)
	
	Si cantidad <= 20 Entonces
		
		Escribir "Nombre guardado correctamente"
		Escribir "Nombre ingresado: ", nombre
		Escribir "Cantidad de caracteres: ", cantidad
		
	SiNo
		
		Escribir "ERROR: El nombre supera el limite permitido"
		Escribir "Caracteres ingresados: ", cantidad
		
	FinSi
	
FinProceso
