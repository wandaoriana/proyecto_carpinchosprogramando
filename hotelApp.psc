Proceso hotelApp
	Definir clientes como caracter;
	definir i, j Como Entero;
	Dimension clientes[100, 5];
	
	Para i <- 0 Hasta 99 Hacer
        Para j <- 0 Hasta 4 Hacer
            clientes[i, j] <- "";
        FinPara
    FinPara
	
	cargarNuevoCliente(clientes);
	DatosClientes(clientes);
	MostrarClientes(clientes);
FinProceso

SubAlgoritmo cargarNuevoCliente(clientes)
	Definir nombre, apellido, eMail, telefono, dni Como Caracter;
	definir opcion, indice, i Como Entero;
	definir arroba, puntoCom, valido, telefonoValido, dniValido Como Logico;
	definir simboloArroba, simboloPuntoCom Como Caracter;
	
	simboloArroba <- "@";
	simboloPuntoCom <- ".com";
	indice <- 0;
	
	Para i <- 0 Hasta 99 Hacer
        Si clientes[i, 0] = "" Entonces
            indice <- i;
		FinSi
    FinPara
	
	Repetir
		Escribir "Por favor, ingrese el nombre del cliente: ";
		leer nombre;
		Escribir "Ingrese el apellido: ";
		leer apellido;
		
		arroba <- Falso;
		puntoCom <- Falso;
		Repetir
			Escribir "Ingrese la dirección de correo electrónico: ";
			leer eMail;
			
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
			Escribir "Ingrese el número de teléfono (10 dígitos): ";
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
			Escribir "Ingrese el DNI (8 dígitos): ";
			Leer dni;
			Si Longitud(dni) <> 8 Entonces
				dniValido <- Falso;
			Sino
				Si SubCadena(dni, 0, 0) = "0" y SubCadena(dni, 1, 1) = "0" Entonces
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


		
		clientes[indice,0] <- nombre;
		clientes[indice,1] <- apellido;
		clientes[indice,2] <- eMail;
		clientes[indice,3] <- telefono;
		clientes[indice,4] <- dni;
		indice <- indice + 1;
		
		Escribir "INGRESE UNA OPCIÓN: ";
		Escribir "Opción 1: Ingresar Nuevo Cliente";
		Escribir "Opción 2: Salir del menú";
		leer opcion;
		
	Hasta Que opcion = 2
FinSubAlgoritmo

SubAlgoritmo DatosClientes(clientes)
	definir i Como Entero;
	
	clientes[1, 0] <- "Juan";
    clientes[2, 0] <- "María";
    clientes[3, 0] <- "Luis";
    clientes[4, 0] <- "Ana";
    clientes[5, 0] <- "Pedro";
    clientes[6, 0] <- "Carmen";
    clientes[7, 0] <- "Jose";
    clientes[8, 0] <- "Laura";
    clientes[9, 0] <- "Carlos";
    clientes[10, 0] <- "Marta";
    clientes[11, 0] <- "Jorge";
    clientes[12, 0] <- "Sofía";
    clientes[13, 0] <- "Fernando";
    clientes[14, 0] <- "Elena";
    clientes[15, 0] <- "Pablo";
    clientes[16, 0] <- "Lucía";
    clientes[17, 0] <- "David";
    clientes[18, 0] <- "Andrea";
    clientes[19, 0] <- "Miguel";
    clientes[20, 0] <- "Patricia";
    clientes[21, 0] <- "Roberto";
    clientes[22, 0] <- "Isabel";
    clientes[23, 0] <- "Alberto";
    clientes[24, 0] <- "Rosa";
    clientes[25, 0] <- "Manuel";
    clientes[26, 0] <- "Julia";
    clientes[27, 0] <- "Francisco";
    clientes[28, 0] <- "Clara";
    clientes[29, 0] <- "Raúl";
    clientes[30, 0] <- "Sara";
    clientes[31, 0] <- "Álvaro";
    clientes[32, 0] <- "Cristina";
    clientes[33, 0] <- "Héctor";
    clientes[34, 0] <- "Natalia";
    clientes[35, 0] <- "Iván";
    clientes[36, 0] <- "Eva";
    clientes[37, 0] <- "Gabriel";
    clientes[38, 0] <- "Lidia";
    clientes[39, 0] <- "Javier";
    clientes[40, 0] <- "Victoria";
    clientes[41, 0] <- "Sergio";
    clientes[42, 0] <- "Beatriz";
    clientes[43, 0] <- "Ricardo";
    clientes[44, 0] <- "Sandra";
    clientes[45, 0] <- "Enrique";
    clientes[46, 0] <- "Irene";
    clientes[47, 0] <- "Tomás";
    clientes[48, 0] <- "Nuria";
    clientes[49, 0] <- "Rafael";
    clientes[50, 0] <- "Ángela";
	
    // Apellidos
    clientes[1, 1] <- "Pérez";
	clientes[2, 1] <- "García";
	clientes[3, 1] <- "Martínez";
	clientes[4, 1] <- "López";
	clientes[5, 1] <- "Sánchez";
	clientes[6, 1] <- "Rodríguez";
	clientes[7, 1] <- "Fernández";
	clientes[8, 1] <- "Gómez";
	clientes[9, 1] <- "Ruiz";
	clientes[10, 1] <- "Díaz";
	clientes[11, 1] <- "Moreno";
	clientes[12, 1] <- "Muñoz";
	clientes[13, 1] <- "Álvarez";
	clientes[14, 1] <- "Jiménez";
	clientes[15, 1] <- "Romero";
	clientes[16, 1] <- "Hernández";
	clientes[17, 1] <- "Gil";
	clientes[18, 1] <- "Castro";
	clientes[19, 1] <- "Ortiz";
	clientes[20, 1] <- "Vargas";
	clientes[21, 1] <- "Ramírez";
	clientes[22, 1] <- "Flores";
	clientes[23, 1] <- "Torres";
	clientes[24, 1] <- "Vázquez";
	clientes[25, 1] <- "Guerrero";
	clientes[26, 1] <- "Ramos";
	clientes[27, 1] <- "Molina";
	clientes[28, 1] <- "Santos";
	clientes[29, 1] <- "Cruz";
	clientes[30, 1] <- "Ortega";
	clientes[31, 1] <- "Delgado";
	clientes[32, 1] <- "Cano";
	clientes[33, 1] <- "Nieto";
	clientes[34, 1] <- "Soto";
	clientes[35, 1] <- "Pascual";
	clientes[36, 1] <- "Herrera";
	clientes[37, 1] <- "Álvarez";
	clientes[38, 1] <- "Ríos";
	clientes[39, 1] <- "Blanco";
	clientes[40, 1] <- "Méndez";
	clientes[41, 1] <- "Ibáñez";
	clientes[42, 1] <- "Navarro";
	clientes[43, 1] <- "Campos";
	clientes[44, 1] <- "Reyes";
	clientes[45, 1] <- "Pérez";
	clientes[46, 1] <- "Morales";
	clientes[47, 1] <- "Serrano";
	clientes[48, 1] <- "Marín";
	clientes[49, 1] <- "León";
	clientes[50, 1] <- "Fuentes";
	
    // Emails
    clientes[1, 2] <- "juan.perez@mail.com";
	clientes[2, 2] <- "maria.garcia@mail.com";
	clientes[3, 2] <- "luis.martinez@mail.com";
	clientes[4, 2] <- "ana.lopez@mail.com";
	clientes[5, 2] <- "pedro.sanchez@mail.com";
	clientes[6, 2] <- "carmen.rodriguez@mail.com";
	clientes[7, 2] <- "jose.fernandez@mail.com";
	clientes[8, 2] <- "laura.gomez@mail.com";
	clientes[9, 2] <- "carlos.ruiz@mail.com";
	clientes[10, 2] <- "marta.diaz@mail.com";
	clientes[11, 2] <- "jorge.moreno@mail.com";
	clientes[12, 2] <- "sofia.munoz@mail.com";
	clientes[13, 2] <- "fernando.alvarez@mail.com";
	clientes[14, 2] <- "elena.jimenez@mail.com";
	clientes[15, 2] <- "pablo.romero@mail.com";
	clientes[16, 2] <- "lucia.hernandez@mail.com";
	clientes[17, 2] <- "david.gil@mail.com";
	clientes[18, 2] <- "andrea.castro@mail.com";
	clientes[19, 2] <- "miguel.ortiz@mail.com";
	clientes[20, 2] <- "patricia.vargas@mail.com";
	clientes[21, 2] <- "roberto.ramirez@mail.com";
	clientes[22, 2] <- "isabel.flores@mail.com";
	clientes[23, 2] <- "alberto.torres@mail.com";
	clientes[24, 2] <- "rosa.vazquez@mail.com";
	clientes[25, 2] <- "manuel.guerrero@mail.com";
	clientes[26, 2] <- "julia.ramos@mail.com";
	clientes[27, 2] <- "francisco.molina@mail.com";
	clientes[28, 2] <- "clara.santos@mail.com";
	clientes[29, 2] <- "raul.cruz@mail.com";
	clientes[30, 2] <- "sara.ortega@mail.com";
	clientes[31, 2] <- "alvaro.delgado@mail.com";
	clientes[32, 2] <- "cristina.cano@mail.com";
	clientes[33, 2] <- "hector.nieto@mail.com";
	clientes[34, 2] <- "natalia.soto@mail.com";
	clientes[35, 2] <- "ivan.pascual@mail.com";
	clientes[36, 2] <- "eva.herrera@mail.com";
	clientes[37, 2] <- "gabriel.alvarez@mail.com";
	clientes[38, 2] <- "lidia.rios@mail.com";
	clientes[39, 2] <- "javier.blanco@mail.com";
	clientes[40, 2] <- "victoria.mendez@mail.com";
	clientes[41, 2] <- "sergio.ibanez@mail.com";
	clientes[42, 2] <- "beatriz.navarro@mail.com";
	clientes[43, 2] <- "ricardo.campos@mail.com";
	clientes[44, 2] <- "sandra.reyes@mail.com";
	clientes[45, 2] <- "enrique.perez@mail.com";
	clientes[46, 2] <- "irene.morales@mail.com";
	clientes[47, 2] <- "tomas.serrano@mail.com";
	clientes[48, 2] <- "nuria.marin@mail.com";
	clientes[49, 2] <- "rafael.leon@mail.com";
	clientes[50, 2] <- "angela.fuentes@mail.com";
	
	// Telefonos
	clientes[1, 3] <- "2611234567";
	clientes[2, 3] <- "3812345678";
	clientes[3, 3] <- "3862123456";
	clientes[4, 3] <- "3793456789";
	clientes[5, 3] <- "3844567890";
	clientes[6, 3] <- "3875678901";
	clientes[7, 3] <- "2996789012";
	clientes[8, 3] <- "2617890123";
	clientes[9, 3] <- "3818901234";
	clientes[10, 3] <- "3862901234";
	clientes[11, 3] <- "2615678901";
	clientes[12, 3] <- "3516789012";
	clientes[13, 3] <- "3797890123";
	clientes[14, 3] <- "2998456790";
	clientes[15, 3] <- "1131234567";
	clientes[16, 3] <- "3842345678";
	clientes[17, 3] <- "3863456789";
	clientes[18, 3] <- "3874567890";
	clientes[19, 3] <- "2615678901";
	clientes[20, 3] <- "3516789012";
	clientes[21, 3] <- "3797890123";
	clientes[22, 3] <- "2998456790";
	clientes[23, 3] <- "1131234567";
	clientes[24, 3] <- "3842345678";
	clientes[25, 3] <- "3863456789";
	clientes[26, 3] <- "3874567890";
	clientes[27, 3] <- "2615678901";
	clientes[28, 3] <- "3516789012";
	clientes[29, 3] <- "3797890123";
	clientes[30, 3] <- "2998456790";
	clientes[31, 3] <- "1131234567";
	clientes[32, 3] <- "3842345678";
	clientes[33, 3] <- "3863456789";
	clientes[34, 3] <- "3874567890";
	clientes[35, 3] <- "2615678901";
	clientes[36, 3] <- "3516789012";
	clientes[37, 3] <- "3797890123";
	clientes[38, 3] <- "2998456790";
	clientes[39, 3] <- "1131234567";
	clientes[40, 3] <- "3842345678";
	clientes[41, 3] <- "3863456789";
	clientes[42, 3] <- "3874567890";
	clientes[43, 3] <- "2615678901";
	clientes[44, 3] <- "3516789012";
	clientes[45, 3] <- "3797890123";
	clientes[46, 3] <- "2998456790";
	clientes[47, 3] <- "1131234567";
	clientes[48, 3] <- "3842345678";
	clientes[49, 3] <- "3863456789";
	clientes[50, 3] <- "3874567890";
	
	//DNI
	
	clientes[1, 4] <- "01234567";
	clientes[2, 4] <- "12345678";
	clientes[3, 4] <- "23456789";
	clientes[4, 4] <- "34567890";
	clientes[5, 4] <- "45678901";
	clientes[6, 4] <- "56789012";
	clientes[7, 4] <- "67890123";
	clientes[8, 4] <- "78901234";
	clientes[9, 4] <- "89012345";
	clientes[10, 4] <- "90123456";
	clientes[11, 4] <- "33245698";
	clientes[12, 4] <- "08774562";
	clientes[13, 4] <- "09063524";
	clientes[14, 4] <- "08799654";
	clientes[15, 4] <- "09632581";
	clientes[16, 4] <- "09999875";
	clientes[17, 4] <- "09123456";
	clientes[18, 4] <- "18563254";
	clientes[19, 4] <- "34966581";
	clientes[20, 4] <- "33652847";
	clientes[21, 4] <- "44548659";
	clientes[22, 4] <- "56000052";
	clientes[23, 4] <- "08445566";
	clientes[24, 4] <- "09556677";
	clientes[25, 4] <- "33667788";
	clientes[26, 4] <- "28778899";
	clientes[27, 4] <- "20889900";
	clientes[28, 4] <- "15990011";
	clientes[29, 4] <- "14001122";
	clientes[30, 4] <- "19112233";
	clientes[31, 4] <- "22223344";
	clientes[32, 4] <- "33934455";
	clientes[33, 4] <- "44845566";
	clientes[34, 4] <- "50586677";
	clientes[35, 4] <- "22667788";
	clientes[36, 4] <- "11778899";
	clientes[37, 4] <- "16889900";
	clientes[38, 4] <- "23990011";
	clientes[39, 4] <- "20765432";
	clientes[40, 4] <- "21654321";
	clientes[41, 4] <- "30543210";
	clientes[42, 4] <- "33432109";
	clientes[43, 4] <- "25321098";
	clientes[44, 4] <- "25210987";
	clientes[45, 4] <- "32109876";
	clientes[46, 4] <- "21098765";
	clientes[47, 4] <- "10987654";
	clientes[48, 4] <- "19876543";
	clientes[49, 4] <- "28765432";
	clientes[50, 4] <- "17654321";
	
FinSubAlgoritmo

SubAlgoritmo mostrarClientes(clientes)
	
	Escribir "-------------------------------";
    Escribir "     Datos de los Clientes:    ";
	Escribir "-------------------------------";
  
	
	definir i, j como Entero;
    Para i <- 0 Hasta 99 Hacer
        Si clientes[i, 0] <> "" Entonces
            Escribir "Nombre: ", clientes[i, 0];
            Escribir "Apellido: ", clientes[i, 1];
            Escribir "Email: ", clientes[i, 2];
            Escribir "Teléfono: ", clientes[i, 3];
            Escribir "DNI: ", clientes[i, 4];
            Escribir "";
			Escribir "-------------------------------";
			Escribir "";
        FinSi
    FinPara
	
FinSubAlgoritmo