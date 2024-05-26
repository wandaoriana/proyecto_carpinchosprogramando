Algoritmo La_Posada_Del_Carpincho
	
	descripcion_Habitaciones
	
FinAlgoritmo

SubAlgoritmo descripcion_Habitaciones
	
	Definir cantHabitaciones, nroHabitacion,i, piso Como Entero
	Definir precioHabitacion Como Real
	Definir servicioHabitacion, tipoHAbitacion Como Caracter
		
	Dimension cantHabitaciones[35], nroHabitacion[35], tipoHabitacion[5];
	tipoHabitacion[0] <- "Doble"; 
	tipoHabitacion[1] <- "Individual";
	tipoHabitacion[2] <- "Cuádruple"; 
	tipoHabitacion[3] <- "Suite";
	tipoHabitacion[4] <- "Presidencial"; 
	
	
	
	Para piso <- 1 Hasta 5 Hacer
		Segun piso Hacer
			caso 1: 
				Para i <- 1 Hasta 10 Con Paso 1 Hacer
					nroHabitacion[i] <- (piso * 100) + i;
					tipoHabitacion[] <- "Doble";
					Si nroHabitacion[i] < 200 Entonces
						precioHabitacion <- 15000;
						
					FinSi
					
					
					Escribir nroHabitacion[i], " Precio Habitación Doble: ", precioHabitacion;
					
				FinPara
			caso 2:
				para i <- 1 Hasta 10 Con Paso 1 Hacer
					nroHabitacion[i] <- (piso * 100) + i;
					tipohabitacion[] <- "Individual";
					Si nroHabitacion[i] > 200 y nroHabitacion[i] < 300 Entonces
						precioHabitacion <- 22000;
					FinSi
					Escribir nroHabitacion[i], " Prcio Habitación Individual: " precioHabitacion;
				FinPara
			Caso 3:
				Para i <- 1 Hasta 8 Con Paso 1 Hacer
					nroHabitacion[i] <- (piso *100) + i;
					tipoHabitacion[] <- "Cuádruple";
					Si nroHabitacion[i] >300 y nroHabitacion[i] < 400 Entonces
						precioHabitacion <- 35000;
					FinSi
					Escribir nroHabitacion[i], " Precio Habitación Cuádruple: ", precioHabitacion;
					
				FinPara
			Caso 4:
				Para i <- 1 Hasta 5 Con Paso 1 Hacer
					nroHabitacion[i] <- (piso * 100) + i;
					tipoHabitacion[] <- "Suite";
					Si nroHabitacion[i] > 400 y nroHabitacion[i] < 500 Entonces
						precioHabitacion <- 45000;
					FinSi
					Escribir nroHabitacion[i], " Precio Habitación Suite: ", precioHabitacion;
					
				FinPara
			Caso 5: 
				Para i <- 1 Hasta 2 Con Paso 1 Hacer
					nroHabitacion[i] <- (piso *100) +i;
					tipoHabitacion[] <- "Presidencial";
					Si nroHabitacion[i] >500 y nroHabitacion[i] < 600 Entonces;
						precioHabitacion <- 100000;
					FinSi
					Escribir nroHabitacion[i] " Precio Habitación Presidencial: ", precioHabitacion;
				FinPara
		FinSegun
		
		
	FinPara
	
		
FinSubAlgoritmo
