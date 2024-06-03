Proceso Reserva
	Definir matrizTipoHabitacion Como cadena;
	Definir tipoHabitacionElegida Como Entero;
	definir matrizHabitacion Como cadena;
	Dimensionar matrizHabitacion[5,2];
	Dimensionar matriztipoHabitacion[3,2];
	Definir idhabitacion,DiasPorMes,i,j,idHabitacionElegida Como Entero;
	Definir  fechaingreso ,fechaEgreso como cadena;
	Dimension DiasPorMes(12);
	definir Usuario como cadena;
	Definir disponible Como Logico;
	definir matrizReservas como cadena;
	Definir parametroReserva Como Entero;
	dimensionar matrizReservas[100,3];
	Definir noDisponibilidad como logico;
	usuario <- "Wanda";
	// lleno DiasPorMes con los dias correspondientes

	para i<-0 hasta 11 Hacer
		DiasPorMes[i] <- i;
		Si i=0 o i=2 o i=4 o i=7 o i=9 Entonces
			DiasPorMes[i] <- 31;
		Sino
			Si i=1 Entonces
				
				DiasPorMes[i] <- 29;
	        SiNo
				DiasPorMes[i] <-30;
				
			FinSi
			
			
		FinSi
		
	FinPara
	
	
	
	// Llenar la matriz de reservas con datos de prueba
	matrizReservas[0,0] <- "1";
	matrizReservas[0,1] <- "01-02-2024";
	matrizReservas[0,2] <- "05-02-2024";
	matrizReservas[1,0] <- "1";
	matrizReservas[1,1] <- "10-01-2024";
	matrizReservas[1,2] <- "15-01-2024";
	matrizReservas[2,0] <- "2";
	matrizReservas[2,1] <-"03-03-2024";
	matrizReservas[2,2] <-"06-03-2024";
	// matirz reserva llenado
	
	Para i<- 3 Hasta 99 Hacer
		para j<-0 hasta 2 Hacer
			matrizReservas[i,j] <- " ";
			
		FinPara
	FinPara
	
	
	
	Escribir "Digite fecha de ingreso DD-MM-YYYY";
	Leer  fechaingreso;
	Escribir "Digite fecha de egreso DD-YY-YYYY";
	Leer fechaEgreso;
	
	
	
	
	
	
	

	matrizTipoHabitacion[0,0] <- "SUITE";
	matrizTipoHabitacion[1,0] <- "INDIVIDUAL";
	matrizTipoHabitacion[2,0] <- "PRESIDENCIAL";
	matrizTipoHabitacion[0,1] <- "300";
	matrizTipoHabitacion[1,1] <- "150";
	matrizTipoHabitacion[2,1] <- "500";
	
	matrizHabitacion[0,0] <- "SUITE";
	matrizHabitacion[1,0] <- "INDIVIDUAL";
	matrizHabitacion[2,0] <- "INDIVIDUAL";
	matrizHabitacion[3,0] <- "PRESIDENCIAL";
	matrizHabitacion[4,0] <- "PRESIDENCIAL";
	matrizHabitacion[0,1] <- "300";
	matrizHabitacion[1,1] <- "150";
	matrizHabitacion[2,1] <- "150";
	matrizHabitacion[3,1] <- "500";
	matrizHabitacion[4,1] <- "500";
	
	Escribir "Digite una opcion:";
	para i<-0 hasta 2 Hacer
			
		Escribir i+1,".","Para el tipo de habitacion " ,matrizTipoHabitacion[i,0] ," el precio es: $",matrizTipoHabitacion[i,1];
		
		
	FinPara
	
	leer tipoHabitacionElegida ;
	Escribir "El tipo de habitacion elegida es: " ,matrizTipoHabitacion[tipoHabitacionElegida-1,0], " usted abona: $",matrizTipoHabitacion[tipoHabitacionElegida-1,1];
	
	
Escribir "Las opciones disponibles som:";
noDisponibilidad <- Falso;
para i <-0 Hasta 4 Hacer
	disponible <- Verdadero;	
	si matrizHabitacion[i,0] = matrizTipoHabitacion[tipoHabitacionElegida-1,0] Entonces
		idhabitacion <- i;
		//Escribir idhabitacion;
		verificarDisponibilidad(DiasPorMes,matrizReservas,idHabitacion,fechaIngreso,fechaEgreso,disponible);
		
		si disponible = Verdadero Entonces
			Escribir idHabitacion," ", matrizHabitacion[i,0];
			noDisponibilidad <- Verdadero;
			
			
		FinSi
		
   FinSi
   
FinPara

//basta con una habitacion este disponible
si noDisponibilidad = falso Entonces
	Escribir "No hay habitaciones disponibles";
FinSi
 Escribir " ";
Escribir "Digite una opcion:";
leer idHabitacionElegida;


parametroReserva<-0;
mientras parametroReserva <> 3 Hacer
	

	Escribir "Desea usted reservar";
Escribir "1.Si";
Escribir "2.Regresar a MENU";

Escribir "Digite una opcion";
leer parametroReserva;

 segun parametroReserva Hacer

	 1: 
	  AniadiendoReserva(matrizReservas,fechaIngreso,fechaEgreso,idHabitacionElegida,usuario);
		
     2: 
		 mostrarreserva(matrizReservas);
 FinSegun
 
FinMientras



FinProceso

//verificarDisponibilidad(DiasPorMes,matrizReservas,idHabitacion,fechaIngreso,fechaEgreso,disponible);


Funcion x <- convertirFecha_aNumero(diaporMes,fechaCadena)
	Definir i,j,dia,mes,diadelAnio,x como entero;
	//fechaCadena DD-MM-YYYY
	dia <- ConvertirANumero(subcadena(fechaCadena,0,1));
	mes <-ConvertirANumero(subcadena(fechaCadena,3,4));
	diadelAnio<-0;
	
	Para  i <-0 hasta mes -2 Hacer
		
		diadelAnio<- diadelAnio + DiaPorMes[i];
	FinPara
	diadelAnio<- diadelAnio+dia;
	x<- diadelAnio;
	
	
FinFuncion	

SubProceso verificarDisponibilidad(DiasPorMes,matrizReservas,idHabitacion,fechaIngreso,fechaEgreso,disponible Por Referencia)
	Definir fechaIngreso_dia,fechaEgreso_dia,i,posicion,fechaingreso_reservada,fechaegreso_reservada Como Entero;
	
	fechaIngreso_dia<- convertirFecha_aNumero(diasporMes,fechaIngreso);
	fechaEgreso_dia <- convertirFecha_aNumero(diasporMes,fechaEgreso);
	i<-0;
	
	Mientras matrizReservas[i,0] <> " " Hacer
		i<-i+1;
		posicion<- i;
	FinMientras
	
	Para i <-0 hasta posicion-1 Hacer
		si ConvertirANumero(matrizReservas[i,0]) =idHabitacion Entonces
			fechaingreso_reservada <- convertirFecha_aNumero(DiasPorMes,matrizReservas[i,1]);
			fechaegreso_reservada <- convertirFecha_aNumero(DiasPorMes,matrizReservas[i,2]);
			
			si (fechaIngreso_dia >= fechaingreso_reservada y fechaIngreso_dia <= fechaegreso_reservada) o (fechaegreso_dia >= fechaingreso_reservada y fechaegreso_dia <= fechaegreso_reservada) Entonces
				disponible<-Falso;
			FinSi
		FinSi
	FinPara
	
	
	
FinSubProceso

SubProceso aniadiendoReserva(matrizReservas,fechaIngreso,fechaEgreso,idHabitacionElegida,usuario)
	definir i, posicionFila Como Entero;
	i <-0;
	posicionFila <-0;
	Mientras matrizReservas[i,0] <> " " Hacer
		
		
		i <- i +1;
		posicionFila <- i;
		
	FinMientras
	
	Escribir posicionFila;//probando si encuentra la fila vacia 
	
	matrizReservas[posicionFila,0] <- ConvertirATexto(idHabitacionElegida);
	matrizReservas[posicionFila,1] <-fechaIngreso;
	matrizReservas[posicionFila,2] <-fechaEgreso;
	
	
FinSubProceso

SubProceso mostrarreserva(matrizReservas)
	definir i , j Como Entero;
	definir posicionFila Como Entero;
	posicionFila <-0;
	i<-0;
	Mientras matrizReservas[i,0] <> " " Hacer
		
		
		i <- i +1;
		posicionFila <- i;
		
	FinMientras
	para i <- 0 hasta posicionFila Hacer
		para j <- 0 hasta 2 Hacer
			Escribir sin saltar matrizReservas[i,j], " ";
			
			
		FinPara
		Escribir " ";
	FinPara
FinSubProceso
	