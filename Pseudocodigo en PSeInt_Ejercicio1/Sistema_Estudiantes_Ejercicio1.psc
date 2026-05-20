Algoritmo Sistema_Estudiantes
	Definir N Como Entero
	N <- 5
	Dimensionar cedulas(N), nombres(N), apellidos(N)
	Dimensionar nota1(N), nota2(N), nota3(N), promedio(N)
	Dimensionar estado(N)
	Definir i Como Entero
	Definir aprobados, reprobados Como Entero
	aprobados <- 0
	reprobados <- 0
	Para i<-0 Hasta N-1 Hacer
		Escribir '----- Estudiante ', i+1, ' -----'
		Escribir 'Ingrese la cedula:'
		Leer cedulas[i]
		Escribir 'Ingrese el nombre:'
		Leer nombres[i]
		Escribir 'Ingrese el apellido:'
		Leer apellidos[i]
		Repetir
			Escribir 'Ingrese nota 1 (0 a 10):'
			Leer nota1[i]
			Si nota1[i]<0 O nota1[i]>10 Entonces
				Escribir 'ERROR: nota fuera de rango.'
			FinSi
		Hasta Que nota1[i]>=0 Y nota1[i]<=10
		Repetir
			Escribir 'Ingrese nota 2 (0 a 10):'
			Leer nota2[i]
			Si nota2[i]<0 O nota2[i]>10 Entonces
				Escribir 'ERROR: nota fuera de rango.'
			FinSi
		Hasta Que nota2[i]>=0 Y nota2[i]<=10
		Repetir
			Escribir 'Ingrese nota 3 (0 a 10):'
			Leer nota3[i]
			Si nota3[i]<0 O nota3[i]>10 Entonces
				Escribir 'ERROR: nota fuera de rango.'
			FinSi
		Hasta Que nota3[i]>=0 Y nota3[i]<=10
		promedio[i] <- (nota1[i]+nota2[i]+nota3[i])/3
		Si promedio[i]>=7 Entonces
			estado[i] <- 'APROBADO'
			aprobados <- aprobados+1
		SiNo
			estado[i] <- 'REPROBADO'
			reprobados <- reprobados+1
		FinSi
	FinPara
	Escribir '===== LISTADO DE ESTUDIANTES ====='
	Para i<-0 Hasta N-1 Hacer
		Escribir 'Cedula: ', cedulas[i]
		Escribir 'Nombre: ', nombres[i], ' ', apellidos[i]
		Escribir 'Notas: ', nota1[i], ' | ', nota2[i], ' | ', nota3[i]
		Escribir 'Promedio: ', promedio[i]
		Escribir 'Estado: ', estado[i]
		Escribir '---------------------------------'
	FinPara
	Escribir 'Total aprobados: ', aprobados
	Escribir 'Total reprobados: ', reprobados
FinAlgoritmo
