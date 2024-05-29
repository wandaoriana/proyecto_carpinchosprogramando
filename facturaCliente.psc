Proceso facturaCliente
    Definir opcion Como Entero;
    //Definir factura como caracter;
    Definir cliente Como Caracter;
    definir i, j Como Entero;
    Dimension cliente[100, 5];
	
    Para i <- 0 Hasta 99 Hacer
        Para j <- 0 Hasta 4 Hacer
            cliente[i, j] <- "";
        FinPara
    FinPara
	
    Repetir
        Escribir "¿Desea imprimir su factura?";
        Escribir "1. Sí.";
        Escribir "2. No.";
        Leer opcion;
		
        Si opcion = 1 Entonces
            cargarCliente(cliente);
        FinSi
    Hasta Que opcion = 2
    //Si opcion = 2 Entonces
    //  mostrarFactura(factura);
    //FinSi
FinProceso

SubProceso cargarCliente(cliente)
    //INFO CLIENTE
    //Pedirle al usuario que ingrese sus datos.
	Definir habitacion Como Caracter;
    Definir nombre, eMail, telefono, dni Como Caracter;
    definir opcion, indice, i Como Entero;
    definir arroba, puntoCom, valido, telefonoValido, dniValido Como Logico;
    definir simboloArroba, simboloPuntoCom Como Caracter;
	
    simboloArroba <- "@";
    simboloPuntoCom <- ".com";
    indice <- 0;
	
    Repetir
        Escribir "Ingrese su nombre y apellido (Ambos con la primer letra en mayúscula).";
        Leer nombre;
		
        arroba <- Falso;
        puntoCom <- Falso;
		
        Repetir
            Escribir "Ingrese su dirección de correo electrónico.";
            Leer eMail;
			
            Para i<-1 Hasta Longitud(eMail) Con Paso 1 Hacer
                Si SubCadena(eMail,i,i) = simboloArroba Entonces
                    arroba <- Verdadero;
                FinSi
            FinPara
			
            Si Subcadena(eMail,Longitud(eMail)-4,Longitud(eMail)) = simboloPuntoCom Entonces
                puntoCom <- Verdadero;
            FinSi
			
            Si arroba Y puntoCom Entonces
                Escribir "El correo electrónico es válido.";
            Sino
                Escribir "El correo electrónico ingresado no es válido. Debe contener ", simboloArroba, " y terminar en ", simboloPuntoCom, ".";
            FinSi
        Hasta Que arroba Y puntoCom
		
        Repetir
            telefonoValido <- Verdadero;
            Escribir "Ingrese su número de teléfono (10 dígitos): ";
            Leer telefono;
            Si Longitud(telefono) = 10 Entonces
                Para i <- 0 Hasta Longitud(telefono)-1 Hacer
                    Si (SubCadena(telefono, i, i) < "0" o SubCadena(telefono, i, i) > "9") Entonces
                        telefonoValido <- Falso;
                    FinSi
                FinPara
            Sino
                telefonoValido <- Falso;
            FinSi
            Si telefonoValido Entonces
                Escribir "El número de teléfono es válido.";
            Sino
                Escribir "El número de teléfono debe tener 10 dígitos y solo puede contener números.";
            FinSi
        Hasta Que telefonoValido
		
        Repetir
            dniValido <- Verdadero;
            Escribir "Ingrese su DNI (8 dígitos): ";
            Leer dni;
            Si Longitud(dni) <> 8 Entonces
                dniValido <- Falso;
            Sino
                Si SubCadena(dni, 0, 1) = "00" Entonces
                    dniValido <- Falso;
                FinSi
                Para i <- 0 Hasta Longitud(dni)-1 Hacer
                    Si SubCadena(dni, i, i) < "0" o SubCadena(dni, i, i) > "9" Entonces
                        dniValido <- Falso;
                    FinSi
                FinPara
            FinSi
            Si dniValido Entonces
                Escribir "El DNI es válido.";
            Sino
                Escribir "El DNI debe tener 8 dígitos, no puede comenzar con doble 0 y solo puede contener números.";
            FinSi
        Hasta Que dniValido
		
        Escribir "¿Desea continuar?";
        Escribir "1. Continuar";
        Escribir "2. Cancelar";
        Leer opcion;
		
        Si opcion = 1 Entonces
            servicioHabitacion;
        FinSi
    Hasta Que opcion = 2
FinSubProceso

//INFO SERVICIOS
//Habitación
SubProceso servicioHabitacion
    Definir precio, precioTotal Como Real;
    Definir numeroHabitacion, cantidadHabitaciones, opcion, i Como Entero;
	
    Escribir "¿En qué tipo de habitación se hospedó?";
    Escribir "1. Individual.";
    Escribir "2. Doble.";
    Escribir "3. Cuádruple.";
    Escribir "4. Suite.";
    Escribir "5. Presidencial.";
    Leer opcion;
	
    Escribir "¿En cuántas habitaciones se hospedó?";
    Leer cantidadHabitaciones;
	
    precioTotal <- 0;
	
    Para i <- 1 Hasta cantidadHabitaciones Hacer
        Escribir "Ingrese el número de habitación ", i, ":";
        Leer numeroHabitacion;
		
        Segun opcion Hacer
            1:
                Si (numeroHabitacion >= 101 Y numeroHabitacion <= 110) Entonces
                    precio <- 22000;
                    precioTotal <- precioTotal + precio;
                    Escribir "Habitación Individual seleccionada. Precio: $", precio;
                Sino
                    Escribir "Número de habitación no válido para una habitación Individual. Por favor, ingrese un número de habitación entre 101 y 110.";
                    i <- i - 1;
                FinSi
            2:
                Si (numeroHabitacion >= 101 Y numeroHabitacion <= 110) Entonces
                    precio <- 15000;
                    precioTotal <- precioTotal + precio;
                    Escribir "Habitación Doble seleccionada. Precio: $", precio;
                Sino
                    Escribir "Número de habitación no válido para una habitación Doble. Por favor, ingrese un número de habitación entre 101 y 110.";
                    i <- i - 1; 
                FinSi
            3:
                Si (numeroHabitacion >= 301 Y numeroHabitacion <= 310) Entonces
                    precio <- 35000;
                    precioTotal <- precioTotal + precio;
                    Escribir "Habitación Cuádruple seleccionada. Precio: $", precio;
                Sino
                    Escribir "Número de habitación no válido para una habitación Cuádruple. Por favor, ingrese un número de habitación entre 301 y 310.";
                    i <- i - 1; 
                FinSi
            4:
                Si (numeroHabitacion >= 401 Y numeroHabitacion <= 410) Entonces
                    precio <- 45000;
                    precioTotal <- precioTotal + precio;
                    Escribir "Habitación Suite seleccionada. Precio: $", precio;
                Sino
                    Escribir "Número de habitación no válido para una Suite. Por favor, ingrese un número de habitación entre 401 y 410.";
                    i <- i - 1; 
                FinSi
            5:
                Si (numeroHabitacion >= 501 Y numeroHabitacion <= 502) Entonces
                    precio <- 100000;
                    precioTotal <- precioTotal + precio;
                    Escribir "Habitación Presidencial seleccionada. Precio: $", precio;
                Sino
                    Escribir "Número de habitación no válido para una habitación Presidencial. Por favor, ingrese un número de habitación entre 501 y 502.";
                    i <- i - 1;
                FinSi
            De Otro Modo:
                Escribir "Opción no válida. Por favor, seleccione una opción entre 1 y 5.";
                i <- i - 1; 
        Fin Segun
    Fin Para
	
    Escribir "Cantidad de habitaciones: ", cantidadHabitaciones;
    Escribir "Precio total: $", precioTotal;
FinSubProceso


//Comida

//SubProceso mostrarFactura(factura)
//	Escribir "";
	//Imprimir factura al cliente.
//Escribir "--------------------------------------------------------------";
	//Escribir "                      FACTURA    			";
	//Escribir "Tipo de Factura: B";
	//Escribir "Fecha: / / ";
	//Escribir "Empresa: La Posada del Carpincho";
	//Escribir "";	
	//Escribir "--------------------------------------------------------------";
	//Escribir "RECEPTOR                EMISOR					";
	//Escribir "Nombre: ", nombre,"      Nombre:La Posada del Carpincho  ";
	//Escribir "DNI: ", dni,"            Email:laposadadelcarpincho@gmail.com";
	//Escribir "Teléfono:  ", telefono," Teléfono:1152345678				";
	//Escribir "Email:	", eMail,"											";
	//Escribir "--------------------------------------------------------------";
	//Escribir "";	
	//Escribir "--------------------------------------------------------------";
	//Escribir "CONCEPTO:											";
	//Escribir "Servicio 1               $x							";	
	//Escribir "Servicio 2               $x							";
	//Escribir "Servicio 3               $x							";
	//Escribir "";	
	//Escribir "CANTIDAD A PAGAR: 									";
	//Escribir "$													";	
	//Escribir "MEDIO DE PAGO:										";
	//Escribir "";	
	//Escribir "DESCUENTO: x%            RECARGO: x%                 ";	
	//Escribir "--------------------------------------------------------------";
//FinSubProceso


	//Escribir "Ingrese la fecha en la que se está realizando el pago (Día, mes y año).";
	//Leer dia, mes, anio;
	

	

	

