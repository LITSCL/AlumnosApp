Algoritmo main
	
	Definir __cantidad_aprobados Como Numero
	Definir __cantidad_reprobados Como Numero
	Definir __nota_acumulada_aprobados Como Numero
	Definir __nota_acumulada_reprobados Como Numero
	Definir __cantidad_hombres Como Numero
	Definir __cantidad_mujeres Como Numero
	Definir __edad_acumulada_hombres Como Numero
	Definir __edad_acumulada_mujeres Como Numero
	
	__continuar = Verdadero
	__opcion = ""
	Mientras __continuar == Verdadero Hacer
		Escribir "¿Deseas ingresar un alumno? (Si/No)"
		Leer __opcion
		Segun __opcion Hacer
			Caso, "SI", "si", "Si", "sI":
				__validado = Falso
				__hombre = Falso
				__genero = ""
				__nota = -1
				__edad = -1
				
				Mientras __validado == Falso Hacer
					Escribir "Ingrese el genero del alumno: (H/M)"
					Leer __genero
					Si __genero == "H" o __genero == "h" Entonces
						__cantidad_hombres = __cantidad_hombres + 1
						__hombre = Verdadero
						__validado = Verdadero
					FinSi
					Si __genero == "M" o __genero == "m" Entonces
						__cantidad_mujeres = __cantidad_mujeres + 1
						__hombre = Falso
						__validado = Verdadero
					FinSi
					Si __genero <> "H" y __genero <> "h" y __genero <> "M" y __genero <> "m" Entonces
						Escribir "ERROR: El genero ingresado no es valido"
						__validado = Falso
					FinSi
				FinMientras
				
				__validado = Falso
				
				Mientras __validado == Falso Hacer
					Escribir "Ingrese la nota del alumno: (1.0/7.0)"
					Leer __nota
					Si __nota >= 1.0 y __nota <= 7.0 Entonces
						Si __nota >= 4.0 Entonces
							__cantidad_aprobados = __cantidad_aprobados + 1
							__nota_acumulada_aprobados = __nota_acumulada_aprobados + __nota
						SiNo
							__cantidad_reprobados = __cantidad_reprobados + 1
							__nota_acumulada_reprobados = __nota_acumulada_reprobados + __nota
						FinSi
						__validado = Verdadero
					SiNo
						Escribir "ERROR: La nota ingresada no es valida"
					FinSi
				FinMientras
				
				__validado = Falso
				
				Mientras __validado == Falso Hacer
					Escribir "Ingrese la edad del alumno (1/18)"
					Leer __edad
					Si __edad >= 1 y __edad <= 18 Entonces
						Si __hombre == Verdadero Entonces
							__edad_acumulada_hombres = __edad_acumulada_hombres + __edad
						SiNo
							__edad_acumulada_mujeres = __edad_acumulada_mujeres + __edad
						FinSi
						__validado = Verdadero
					SiNo
						Escribir "ERROR: La edad ingresada no es valida"
						__validado = Falso
					FinSi
				FinMientras
				
				Escribir "¡Alumno agregado correctamente!"
			Caso, "NO", "no", "No", "nO":
				__continuar = Falso
			De Otro Modo:
				Escribir "ERROR: La opcion seleccionada no es valida"
		FinSegun
	FinMientras
	
	Escribir "La cantidad de aprobados es: " , __cantidad_aprobados
	Escribir "La cantidad de reprobados es: " , __cantidad_reprobados
	
	Si __cantidad_aprobados <> 0 Entonces
		Escribir "El ratio de aprobados es: " , (__cantidad_aprobados / (__cantidad_aprobados + __cantidad_reprobados)) * 100 , "%"
	SiNo
		Escribir "El ratio de reprobados es: 0%"
	FinSi
	
	Si __cantidad_aprobados <> 0 Entonces
		Escribir "El ratio de reprobados es: " , (__cantidad_reprobados / (__cantidad_aprobados + __cantidad_reprobados)) * 100 , "%"
	SiNo
		Escribir "El ratio de reprobados es: 0%"
	FinSi
	
	Si __cantidad_aprobados <> 0 Entonces
		Escribir "La nota promedio de aprobados es: " , __nota_acumulada_aprobados / __cantidad_aprobados
	SiNo
		Escribir "La nota promedio de aprobados es: 0"
	FinSi
	
	Si __cantidad_reprobados <> 0 Entonces
		Escribir "La nota promedio de reprobados es: " , __nota_acumulada_reprobados / __cantidad_reprobados
	Sino
		Escribir "La nota promedio de reprobados es: 0"
	FinSi
	
	Escribir "La cantidad de hombres es: " , __cantidad_hombres
	Escribir "La cantidad de mujeres es: " , __cantidad_mujeres
	
	Si __cantidad_hombres <> 0 Entonces
		Escribir "La edad promedio de hombres: " , __edad_acumulada_hombres / __cantidad_hombres
	Sino 
		Escribir "La edad promedio de hombres: 0"
	FinSi
	
	Si __cantidad_mujeres <> 0 Entonces
		Escribir "La edad promedio de mujeres: " , __edad_acumulada_mujeres / __cantidad_mujeres
	Sino 
		Escribir "La edad promedio de mujeres: 0"
	FinSi
	
FinAlgoritmo