Proceso HotelPosadaDelCarpincho
	
	definir i,j,isadmin Como Entero;
	Definir NuevoUsuario,nuevacontrasenia, usuario, contrasenia1  Como Caracter;
	definir matrizusuario Como Caracter;
	Dimension matrizusuario(100,2);
	definir usuarioEncontrado como entero;
	definir	datosClientes como cadena; 
	Dimension  datosClientes(100,6);
	definir matrizReservas como cadena;
	dimensionar matrizReservas[100,4];
	Definir disponible Como Logico; 
	definir matrizHabitacion Como cadena;
	Definir matrizTipoHabitacion Como cadena;
	Dimensionar matrizHabitacion[10,2];
	Dimensionar matriztipoHabitacion[5,2];
	definir variableMenu como entero;
	Definir tieneDatos Como Logico; // Esta variable se utiliza para verificar si el cliente tiene datos por defecto es falso
	//definiendo parametros para menus 
	Definir parametro como cadena;
	definir parametroNum como entero; 
	Definir parametroAuxAdmin como cadena;
	Definir parametroAdmin como entero;
	Definir parametroAuxCliente como cadena;
	Definir parametroCliente como entero;
	usuarioEncontrado <-0;
	isadmin<-0;
	tieneDatos<- falso;
	
	// MATRIZ usuario
	para i <-0 hasta 99 Hacer
		para j <-0 hasta 1 hacer
			matrizusuario[i,j] <- " " ;
		FinPara
	FinPara
	
	matrizusuario[0,0] <- "Liliana97";
	matrizusuario[0,1] <- "1997";
	matrizusuario[1,0] <- "Luis86";
	matrizusuario[1,1] <- "1234";
	matrizusuario[2,0]  <- "admin";
	matrizusuario[2,1] <-"1998";
	matrizUsuario[3,0]<-"Juan123";
	matrizUsuario[3,1] <- "1234";
	
	//matriz datosClientes llenado...
	Para i <- 0 Hasta 99 Hacer
        Para j <- 0 Hasta 5 Hacer
            datosclientes[i, j] <- " ";
        FinPara
    FinPara
	
	
	// datosClientes de prueba
	datosClientes[0,0]<-"Liliana";
	datosClientes[0,1]<- "Murguia";
	datosClientes[0,2]<- "liliana@gmail.com";
	datosClientes[0,3]<- "1133146155";
	datosClientes[0,4]<- "40639651";
	datosClientes[0,5]<- "Liliana97";
	datosClientes[1, 0] <- "Juan";
	datosClientes[1, 1] <- "Perez";
	datosClientes[1, 2] <- "juanperez@gmail.com";
	datosClientes[1, 3] <- "1122334455";
	datosClientes[1, 4] <- "12345678";
	datosClientes[1, 5] <- "Juan123";
	
	
	
	
	// Llenar la matriz de reservas con datos de prueba
	matrizReservas[0,0] <- "1";
	matrizReservas[0,1] <- "01-01-2024";
	matrizReservas[0,2] <- "05-01-2024";
	matrizReservas[0,3] <- "Liliana97";
	
	matrizReservas[1,0] <- "1";
	matrizReservas[1,1] <- "10-01-2024";
	matrizReservas[1,2] <- "15-01-2024";
	matrizReservas[1,3] <- "Juan123";
	
	
	// matirz reserva llenado -----
	
	Para i<- 2 Hasta 99 Hacer
		para j<-0 hasta 3 Hacer
			matrizReservas[i,j] <- " ";
		FinPara
	FinPara
	
	//Matriz Tipo caracteristicas  de la habitacion
	matrizTipoHabitacion[0,0] <- "SUITE";
	matrizTipoHabitacion[1,0] <- "INDIVIDUAL";
	matrizTipoHabitacion[2,0] <- "DOBLE";
	matrizTipoHabitacion[3,0] <- "CUADRUPLE";
	matrizTipoHabitacion[4,0] <-"PRESIDENCIAL";
	matrizTipoHabitacion[0,1] <- "300";
	matrizTipoHabitacion[1,1] <- "150";
	matrizTipoHabitacion[2,1] <- "200";
	matrizTipoHabitacion[3,1] <- "450";
	matrizTipoHabitacion[4,1] <- "500";
	
	
	//Matriz Tde  habitaciones
	
	matrizHabitacion[0,0] <- "SUITE";
	matrizHabitacion[1,0] <- "INDIVIDUAL";
	matrizHabitacion[2,0] <- "DOBLE";
	matrizHabitacion[3,0] <- "CUADRUPLE";
	matrizHabitacion[4,0] <- "PRESIDENCIAL";
	matrizHabitacion[5,0] <- "SUITE";
	matrizHabitacion[6,0] <- "INDIVIDUAL";
	matrizHabitacion[7,0] <- "DOBLE";
	matrizHabitacion[8,0] <- "PRESIDENCIAL";
	matrizHabitacion[9,0] <- "CUADRUPLE";
	matrizHabitacion[0,1] <- "300";
	matrizHabitacion[1,1] <- "150";
	matrizHabitacion[2,1] <- "200";
	matrizHabitacion[3,1] <- "450";
	matrizHabitacion[4,1] <- "500";
	matrizHabitacion[5,1] <- "300";
	matrizHabitacion[6,1] <- "150";
	matrizHabitacion[7,1] <- "200";
	matrizHabitacion[8,1] <- "500";
	matrizHabitacion[9,1] <- "450"; 
	
	Escribir "*****************************************************";
	Escribir "*                                                   *";
	Escribir "*                                                   *";
	Escribir "*             BIENVENIDO A LA POSADA DEL            *";
	Escribir "*                     CARPINCHO                     *";
	Escribir "*                                                   *";
	Escribir "*                                                   *";
	Escribir "*****************************************************";
	Escribir " ";
	
	// ---------------------------------- MENU PRINCIPAL -----------------------------------------/////////// MARIANA
	parametroNum <- 0;
	
	Mientras parametroNum <> 3 Hacer
		// Encabezado del men�
		Escribir "==================================================";
		Escribir "=                    MENU                        =";
		Escribir "==================================================";
		Escribir "1. Ingresar usuario";
		Escribir "2. Crear usuario";
		Escribir "3. Salir";
		Escribir "--------------------------------------------------";
		Escribir "Digite una opci�n:";
		Leer parametro;
		
		// Verificar si la opci�n ingresada es v�lida
		Si parametro = "1" o parametro = "2" o parametro = "3" Entonces
			parametroNum <- convertirANumero(parametro);
		Sino
			Escribir "==================================================";
			Escribir "=               Opci�n inv�lida                  =";
			Escribir "==================================================";
			parametroNum <- 0;
		FinSi
		
		// Procesar la opci�n seleccionada
		Segun parametroNum Hacer
			1:
				Escribir "--------------------------------------------------";
				Escribir "=               Ingresar usuario                 =";
				Escribir "--------------------------------------------------";
				Escribir "Ingrese su nombre de usuario:";
				Leer usuario;
				usuarioEncontrado <- 0;
				Escribir "Ingrese su contrasenia:";
				Leer contrasenia1;
				ingresarUsuario(usuario, contrasenia1, matrizUsuario, isAdmin, usuarioEncontrado);
				
				Si usuarioEncontrado = 1 Entonces
					Escribir "==================================================";
					Escribir "=         Usuario encontrado, ingresando         =";
					Escribir "==================================================";
					parametroNum <- 3; // Salir del men�
				FinSi
				
			2:
				Escribir "--------------------------------------------------";
				Escribir "=                Crear usuario                   =";
				Escribir "--------------------------------------------------";
				crearUsuario(matrizUsuario);
				
			3:
				Escribir "==================================================";
				Escribir "=                    Saliste                     =";
				Escribir "==================================================";
				parametroNum <- 3; // Salir del men�
				
			De Otro Modo:
				Escribir "==================================================";
				Escribir "=               Opci�n inv�lida                  =";
				Escribir "==================================================";
				Escribir " ";
		FinSegun
	FinMientras
	
	
	
	//Escribir isadmin; // esto para verificar si es admin
	//Escribir usuarioEncontrado; 
	
	
	// ---------------------------------------------- MENU ADMINISTRADOR -------------------------------------------------------//// NNICO 
	parametroAdmin <- 0;
	
	Mientras isAdmin = 1 y parametroAdmin <> 4 Hacer
		// Encabezado del men� de administrador
		Escribir "==================================================";
		Escribir "=                MENU ADMINISTRADOR              =";
		Escribir "==================================================";
		Escribir "1. Mostrar los usuarios";
		Escribir "2. Cargar clientes";
		Escribir "3. Mostrar datos de clientes";
		Escribir "4. Morstrar Reserva del cliente";
		Escribir "5. Salir";
		Escribir "--------------------------------------------------";
		Escribir "Digite una opci�n:";
		Leer parametroAuxAdmin;
		
		// Verificar si la opci�n ingresada es v�lida
		Si parametroAuxAdmin = "1" o parametroAuxAdmin = "2" o parametroAuxAdmin = "3" o parametroAuxAdmin = "4" o  parametroAuxAdmin = "5" Entonces
			parametroAdmin <- convertirANumero(parametroAuxAdmin);
		Sino
			Escribir "==================================================";
			Escribir "=               Opci�n inv�lida                  =";
			Escribir "==================================================";
		FinSi
		
		// Procesar la opci�n seleccionada
		Segun parametroAdmin Hacer
			1:
				Escribir "--------------------------------------------------";
				Escribir "=          Mostrar los usuarios                  =";
				Escribir "--------------------------------------------------";
				mostrarMatrizUsuario(matrizUsuario);
				
			2:
				Escribir "--------------------------------------------------";
				Escribir "=                Cargando clientes               =";
				Escribir "--------------------------------------------------";
				cargarNuevoCliente(datosClientes, matrizUsuario);
				
			3:
				Escribir "--------------------------------------------------";
				Escribir "=          Mostrando datos de clientes           =";
				Escribir "--------------------------------------------------";
				mostrarDatosClientes(datosClientes);
				
			4:  Escribir "--------------------------------------------------";
				Escribir "=           Mostrar Reserva del cliente           =";
				Escribir "--------------------------------------------------";
				mostrarreserva(matrizReservas);
				
			5:
				Escribir "==================================================";
				Escribir "=                   Has salido                   =";
				Escribir "==================================================";
				parametroAdmin <- 4; // Salir del men� de administrador
				
		FinSegun
	FinMientras
	
	
	
	// ------------------------------- MENU CLIENTE ---------------------------------/// MER Y WANDA
	variableMenu<-0; //Esta variable sale del subproceso generarReserva para dar ingresar al loop nuevamente de generar reserva en caso que el cliente no encuentre habitacion en la fecha solicitada
	//Esta variable tambien se utiliza para regresar al menu cliente.
	parametroCliente <- 0;
	
	Mientras isAdmin <> 1 y usuarioEncontrado = 1 y parametroCliente <> 4 Hacer
		// Encabezado del men� de cliente
		Escribir "==================================================";
		Escribir "=                 MENU CLIENTE                   =";
		Escribir "==================================================";
		Escribir "1. Ingresar Datos";
		Escribir "2. Generar Reserva";
		Escribir "3. Imprimir Factura";
		Escribir "4. Salir";
		Escribir "--------------------------------------------------";
		Escribir "Digite una opci�n:";
		
		// Leer la opci�n del cliente
		Leer parametroAuxCliente;
		
		// Verificar si la opci�n es v�lida
		Si parametroAuxCliente = "1" o parametroAuxCliente = "2" o parametroAuxCliente = "3" o parametroAuxCliente = "4" Entonces
			parametroCliente <- convertirANumero(parametroAuxCliente);
		Sino
			Escribir "==================================================";
			Escribir "=               Opci�n inv�lida                  =";
			Escribir "==================================================";
		FinSi
		
		// Procesar la opci�n seleccionada
		Segun parametroCliente Hacer
			1:
				Escribir "--------------------------------------------------";
				Escribir "=             Ingresando Datos                   =";
				Escribir "--------------------------------------------------";
				ingresarDatosCliente(datosClientes, Usuario);
				
			2:
				Escribir "--------------------------------------------------";
				Escribir "=            Generando Reserva                   =";
				Escribir "--------------------------------------------------";
				generarReserva(matrizReservas, matrizHabitacion, matrizTipoHabitacion, usuario, variableMenu, datosClientes, tieneDatos);
				parametroCliente <- variableMenu;
				
			3:  
				Escribir "--------------------------------------------------";
				Escribir "=             Generando Factura                  =";
				Escribir "--------------------------------------------------";
				
				ImprimirFactura(matrizUsuario,matrizReservas,Usuario,matrizHabitacion, datosClientes,variableMenu);
				parametroCliente <- variableMenu;
				
				
				
			4:
				Escribir "==================================================";
				Escribir "=                   Has salido                   =";
				Escribir "==================================================";
				parametroCliente <- 4; // Salir del men� cliente
				
				
				
				
				
			De Otro Modo:
				Escribir "==================================================";
				Escribir "=               Opci�n inv�lida                  =";
				Escribir "==================================================";
		FinSegun
	FinMientras
	
	
FinProceso


//----------------------SUBPROCESO INGRESAR USUARIO---------- MENU PRINCIPAL-------------//  MARIANA

SubProceso IngresarUsuario(usuario,contrasea1,matrizusuario,isadmin Por Referencia, usuarioEncontrado Por Referencia)
	
	Definir i Como Entero;
	
	Para i <- 0 Hasta 99 Hacer
		Si MatrizUsuario[i, 0] = usuario Y matrizusuario[i, 1] = contrasea1 Entonces
			usuarioEncontrado<-1;
			Si matrizusuario[i,0]= "admin" Entonces
				
				
				isadmin<-1;
				
			FinSi;
			
		FinSi;
	FinPara
	
	si isadmin = 0 y usuarioEncontrado = 1 Entonces
		Escribir "Bienvenido Cliente";
	FinSi
	Si usuarioEncontrado = 0 Entonces
		Escribir "Usuario o contrasenia incorrectos";
	FinSi;
	
	si isadmin = 1 y usuarioEncontrado = 1 Entonces
		Escribir "Bienvenido administrador";
	FinSi
	
FinSubProceso

//-----------------------SUBPROCESO CREAR USUARIO-----------MENU PRINCIPAL---------------------// MARIANA



SubProceso CrearUsuario(matrizusuario Por Referencia)
	Definir i , posicionFilaVacia Como Entero;
	definir parametro2 Como Entero;
	Definir usuarioIgual como logico;
	Definir NuevoUsuario , NuevaContrasenia Como Caracter;
	Escribir "Digite un nuevo usuario";
	leer NuevoUsuario;
	Escribir "Digite una nueva contrasenia";
	Leer NuevaContrasenia;
	posicionFilaVacia <-0;
	parametro2<-0;
	usuarioIgual <- falso;
	
	Mientras usuarioIgual= falso y parametro2 = 0 Hacer
		
		
		Para i <-0 Hasta 99 Hacer
			si matrizusuario[i,0] = NuevoUsuario Entonces
				Escribir "Ya existe este usuario, digite otro nombre de usuario";
				
				
				usuarioIgual <- Verdadero;
				
				
				
			FinSi
			
		FinPara
		
		
		
		para i <-0 Hasta 99 Hacer
			si matrizusuario[i,0] = " " Entonces
				
				posicionFilaVacia <- i;
				
			FinSi
			
		FinPara
		
		si posicionFilaVacia <> 0 y usuarioIgual = falso Entonces
			matrizusuario[posicionFilaVacia,0] <- NuevoUsuario;
			
			matrizusuario[posicionFilaVacia,1] <- NuevaContrasenia;
			
			parametro2 <-1; 
			
		FinSi
		
	FinMientras
	
	
FinSubProceso


//----------------SUPROCESO  mostrarMatrizUsuario --------MENU ADMINISTRADOR--------// NICO


SubProceso  mostrarMatrizUsuario(matrizusuario) 
	Definir i Como Entero;
	para i <-0 hasta 99 Hacer
		
		Si matrizusuario[i,0] <> " " Entonces
			Escribir Sin Saltar matrizusuario[i,0], " " , matrizusuario[i,1];
			Escribir " ";
		FinSi
		
		
	FinPara
FinSubProceso

//----------------SUPROCESO  cargarNuevoCliente --------MENU ADMINISTRADOR--------// NICO


SubProceso  cargarNuevoCliente(clientes Por Referencia,matrizUsuario Por Referencia)
	Definir nombre, apellido, eMail, telefono, dni Como Caracter;
	definir opcion, indice, i Como Entero;
	definir arroba, puntoCom, valido, telefonoValido, dniValido Como Logico;
	definir simboloArroba, simboloPuntoCom Como Caracter;
	definir posicionFilaVacia_MU Como Entero;
	i <- 0;
	simboloArroba <- "@";
	simboloPuntoCom <- ".com";
	indice <- 0;
	
	Mientras clientes[i,0] <> " " Hacer
		i <- i + 1;
		indice <- i;
		
	FinMientras
	
	Repetir
		
		Escribir "Por favor, ingrese el nombre del cliente: ";
		leer nombre;
		Escribir "Ingrese el apellido: ";
		leer apellido;
		
		arroba <- Falso;
		puntoCom <- Falso;
		Repetir
			Escribir "Ingrese la direccion de correo electronico: ";
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
				Escribir "El correo electronico es valido.";
			Sino
				Escribir "El correo electronico ingresado no es valido. Debe contener ", simboloArroba, " y terminar en ", simboloPuntoCom, ".";
			FinSi
		Hasta Que arroba Y puntoCom
		
		Repetir
			telefonoValido <- Verdadero;
			Escribir "Ingrese el numero de telefono (10 digitos): ";
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
				Escribir "El numero de telefono es valido.";
			Sino
				Escribir "El numero de telefono debe tener 10 d?gitos y solo puede contener n?meros.";
			FinSi
		Hasta Que telefonoValido
		
		
		
		Repetir
			dniValido <- Verdadero;
			Escribir "Ingrese el DNI (8 digitos): ";
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
				Escribir "El DNI es valido.";
			Sino
				Escribir "El DNI debe tener 8 digitos, no puede comenzar con doble 0 y solo puede contener numeros.";
			FinSi
		Hasta Que dniValido
		
		
		
		clientes[indice,0] <- nombre;
		clientes[indice,1] <- apellido;
		clientes[indice,2] <- eMail;
		clientes[indice,3] <- telefono;
		clientes[indice,4] <- dni;
		clientes[indice,5] <- eMail;// Por defecto usuario es el correo 
		
		
		para i <-0 Hasta 99 Hacer
			si matrizusuario[i,0] = " " Entonces
				
				posicionFilaVacia_MU <- i;// MU <- MATRI< USUARIO 
			FinSi
		FinPara
		
		matrizUsuario[posicionFilaVacia_MU,0] <- eMail;
		matrizUsuario[posicionFilaVacia_MU,1] <- dni;
		
		
		
		indice <- indice + 1;
		
		Escribir "INGRESE UNA OPCION: ";
		Escribir "Opcion 1: Ingresar Nuevo Cliente";
		Escribir "Opcion 2: Regresar al menu Admin ";
		leer opcion;
		
	Hasta Que opcion = 2
FinSubProceso


//-------MINI SUBPROCESO MOSTRAR DATOS CLIENTES ----MENU ADMINISTRADOR----// NICO

SubProceso mostrarDatosClientes(datosClientes)
	definir i, j,posicion Como Entero;
	posicion<-0;
	i<-0;
	Mientras datosClientes[i,0]<> " " Hacer
		posicion<- i;
		i<- i+1;
	FinMientras
	Para i <-0 hasta posicion Hacer
		para j <- 0 hasta 5 Hacer
			Escribir Sin Saltar " ",datosClientes[i,j] ," ";
		FinPara
		Escribir " ";
	FinPara
	
FinSubProceso

//-----MINI SUBPROCESO MOSTRAR RESERVA ---- MENU ADMINISTRADOR---// NICO 

SubProceso mostrarreserva(matrizReservas)
	definir i , j Como Entero;
	definir posicionFila Como Entero;
	posicionFila <-0;
	i<-0;
	Mientras matrizReservas[i,0] <> " " Hacer
		
		
		i <- i +1;
		posicionFila <- i;
		
	FinMientras
	Escribir "ID/ FechaIngreso /Fecha Egreso"; 
	para i <- 0 hasta posicionFila Hacer
		para j <- 0 hasta 3 Hacer
			Escribir sin saltar matrizReservas[i,j], " ";
			
			
		FinPara
		Escribir " ";
	FinPara
FinSubProceso



//---------------------------------------SUBPROCESO  INGRESAR DATOS CLIENTES --------------MENU CLIENTE----// MER
SubProceso  ingresarDatosCliente(clientes Por Referencia,Usuario)
	Definir nombre, apellido, eMail, telefono, dni Como Caracter;
	definir opcion, indice, i,j Como Entero;
	definir arroba, puntoCom, valido, telefonoValido, dniValido Como Logico;
	definir simboloArroba, simboloPuntoCom Como Caracter;
	definir posicionFilaVacia_MU Como Entero;
	
	simboloArroba <- "@";
	simboloPuntoCom <- ".com";
	indice <- 0;
	
	
	i<-0;
	
	Mientras clientes[i,0] <> " " Hacer
		
		i <- i + 1;
		indice <- i;
		
	FinMientras
	
	
	
	
	
	Para i <- 0 Hasta 99 Hacer
		Si clientes[i, 5] = Usuario Entonces 
			indice <- i;
		FinSi
	FinPara
	
	Escribir "Por favor, ingrese el nombre del cliente: ";
	leer nombre;
	Escribir "Ingrese el apellido: ";
	leer apellido;
	
	arroba <- Falso;
	puntoCom <- Falso;
	Repetir
		Escribir "Ingrese la direccion de correo electronico: ";
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
			Escribir "El correo electronico es valido.";
		Sino
			Escribir "El correo electronico ingresado no es v?lido. Debe contener ", simboloArroba, " y terminar en ", simboloPuntoCom, ".";
		FinSi
	Hasta Que arroba Y puntoCom
	
	Repetir
		telefonoValido <- Verdadero;
		Escribir "Ingrese el numero de telefono (10 digitos): ";
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
			Escribir "El numero de telefono es valido.";
		Sino
			Escribir "El numero de telefono debe tener 10 d?gitos y solo puede contener n?meros.";
		FinSi
	Hasta Que telefonoValido
	
	
	
	Repetir
		dniValido <- Verdadero;
		Escribir "Ingrese el DNI (8 digitos): ";
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
			Escribir "El DNI es valido.";
		Sino
			Escribir "El DNI debe tener 8 digitos, no puede comenzar con doble 0 y solo puede contener numeros.";
		FinSi
	Hasta Que dniValido
	
	
	//
	clientes[indice,0] <- nombre;
	clientes[indice,1] <- apellido;
	clientes[indice,2] <- eMail;
	clientes[indice,3] <- telefono;
	clientes[indice,4] <- dni;
	clientes[indice,5] <- Usuario;
	
	
	
	
	Escribir  " ";
	
FinSubProceso


//----------------SUPROCESO  generarReserva--------MENU CLIENTE--------// WANDA


SubProceso generarReserva(matrizReservas Por Referencia,matrizHabitacion,matrizTipoHabitacion,usuario,variableMenu Por Referencia,datosClientes,tieneDatos)
	
	
	
	Definir idhabitacion,DiasPorMes,i,j,idHabitacionElegida  Como Entero;
	Definir  fechaingreso ,fechaEgreso,parametro como cadena;
	Dimension DiasPorMes(12);
	Definir disponible Como Logico;
	Definir fechaEgresoNumero , fechaIngresoNumero Como Entero;
	Definir parametroReserva,tipoHabitacionElegida Como Entero;
	Definir noDisponibilidad como logico;
	definir fechaIngresoValida como logico;
	Definir fechaEgresoValida Como Logico;
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
	
	
	fechaIngresoValida <- Falso;
	// Repetir hasta obtener una fecha de ingreso v�lida
	Repetir
		Escribir "Digite fecha de ingreso DD-MM-YYYY";
		Leer fechaIngreso;
		verificarFecha(fechaIngreso, fechaIngresoValida);
		Si fechaIngresoValida Entonces
			Escribir "La fecha de ingreso es v�lida.";
		Sino
			Escribir "La fecha de ingreso no es v�lida. Debe estar en formato DD-MM-YYYY.";
		FinSi
	Hasta Que fechaIngresoValida = Verdadero
	
	fechaEgresoValida <- Falso;
	// Repetir hasta obtener una fecha de egreso v�lida que sea mayor que la fecha de ingreso
	Repetir
		Escribir "Digite fecha de egreso DD-MM-YYYY";
		Leer fechaEgreso;
		verificarFecha(fechaEgreso, fechaEgresoValida);
		// Verificar si la fecha de egreso es mayor que la fecha de ingreso
		Si fechaEgresoValida Entonces
			fechaIngresoNumero <- convertirFecha_aNumero(DiasPorMes,fechaIngreso);
			fechaEgresoNumero <- convertirFecha_aNumero(DiasPorMes,fechaEgreso);
			Si fechaEgresoNumero <= fechaIngresoNumero Entonces
				Escribir "La fecha de egreso debe ser mayor que la fecha de ingreso.";
				fechaEgresoValida <- Falso;
			Sino
				Escribir "La fecha de egreso es v�lida.";
			FinSi
		Sino
			Escribir "La fecha de egreso no es v�lida. Debe estar en formato DD-MM-YYYY.";
		FinSi
	Hasta Que fechaEgresoValida = Verdadero
	
	
	// Se muestran lostipos de habitaciones del hotel 
	Escribir "Digite una opcion:";
	para i<-0 hasta 2 Hacer
		
		Escribir i+1,".","Para el tipo de habitacion " ,matrizTipoHabitacion[i,0] ," el precio es: $",matrizTipoHabitacion[i,1];
		
		
	FinPara
	
	// De acuerdo a la habitacion elegida, se realizara un loop para filtrar habitaciones disponibles de aacuerdo a la habitacion elegida
	
	leer tipoHabitacionElegida ;
	
	Escribir "El tipo de habitacion elegida es: " ,matrizTipoHabitacion[tipoHabitacionElegida-1,0], " usted abona: $",matrizTipoHabitacion[tipoHabitacionElegida-1,1]," por dia"; // Se muestra el tipo de habitacion elegida
	
	
	
	
	
	// Loop de verificacion de habitaciones que coinciden con el tipo de habitacion elegida.
	noDisponibilidad <- Falso;
	
	para i <-0 Hasta 4 Hacer
		disponible <- Verdadero;	
		si matrizHabitacion[i,0] = matrizTipoHabitacion[tipoHabitacionElegida-1,0] Entonces // Tipo de habitacion -1 , por que al digitar la opcion el usuario, elige una opcion desde 1. 
			idhabitacion <- i;
			//Escribir idhabitacion;
			verificarDisponibilidad(DiasPorMes,matrizReservas,idHabitacion,fechaIngreso,fechaEgreso,disponible);
			
			si disponible = Verdadero Entonces
				//Escribir idHabitacion," ", matrizHabitacion[i,0];
				noDisponibilidad <- Verdadero;
			FinSi
			
		FinSi
	FinPara
	Escribir " ";
	si noDisponibilidad = Verdadero Entonces
		Escribir "Las opciones disponibles son:"; // Muestra la disponibilidad de habitaciones de acuerdo a lo que requiere el usuario
		
		para i <-0 Hasta 4 Hacer
			disponible <- Verdadero;	
			si matrizHabitacion[i,0] = matrizTipoHabitacion[tipoHabitacionElegida-1,0] Entonces // Tipo de habitacion -1 , por que al digitar la opcion el usuario, elige una opcion desde 1. 
				idhabitacion <- i;
				//Escribir idhabitacion;
				verificarDisponibilidad(DiasPorMes,matrizReservas,idHabitacion,fechaIngreso,fechaEgreso,disponible);
				Escribir " ";
				si disponible = Verdadero Entonces
					Escribir "El ID de la habitacion es: ",idHabitacion," Tipo: ", matrizHabitacion[i,0];
					noDisponibilidad <- Verdadero;
				FinSi
				
			FinSi
		FinPara
	FinSi
	
	disponible <- Verdadero;
	
	
	Escribir  " ";
	
	//basta con una habitacion que este disponible
	// Verificar disponibilidad de habitaciones
	Si noDisponibilidad = falso Entonces
		Escribir "==================================================";
		Escribir "=          No hay habitaciones disponibles        =";
		Escribir "==================================================";
	SiNo
		Escribir "--------------------------------------------------";
		Escribir "=            Opciones de Reserva                 =";
		Escribir "--------------------------------------------------";
		Escribir "Digite el ID para la habitaci�n elegida:";
		Leer idHabitacionElegida;
		
		parametroReserva <- 0;
		
		Mientras parametroReserva <> 3 Hacer
			Escribir "--------------------------------------------------";
			Escribir "=             Desea usted reservar?              =";
			Escribir "--------------------------------------------------";
			Escribir "1. Si";
			Escribir "2. Regresar a MENU CLIENTE";
			Escribir "--------------------------------------------------";
			Escribir "Digite una opci�n:";
			
			Leer parametro;
			
			// Verificar si la opci�n es v�lida
			Si parametro = "1" o parametro = "2" Entonces
				parametroReserva <- convertirANumero(parametro);
			Sino
				Escribir "==================================================";
				Escribir "=               Opci�n inv�lida                  =";
				Escribir "==================================================";
			FinSi
			
			Escribir "Opci�n seleccionada: ", parametroReserva;
			
			Segun parametroReserva Hacer
				1:
					verificarDatos(datosClientes, Usuario, tieneDatos);
					Si tieneDatos = Verdadero Entonces
						Escribir "--------------------------------------------------";
						Escribir "=      A�adiendo reserva para el usuario...       =";
						Escribir "--------------------------------------------------";
						aniadiendoReserva(matrizReservas, fechaIngreso, fechaEgreso, idHabitacionElegida, usuario);
						parametroReserva <- 3;
					SiNo
						Escribir "==================================================";
						Escribir "=  No tiene datos ingresados, no puede reservar  =";
						Escribir "=  por el momento. Por favor cargue sus datos.   =";
						Escribir "==================================================";
						parametroReserva <- 3; // Salir al men� cliente
					FinSi
					
				2:
					Escribir "--------------------------------------------------";
					Escribir "=         Regresando al MEN� CLIENTE...           =";
					Escribir "--------------------------------------------------";
					parametroReserva <- 3; // Regresar al men� cliente
			FinSegun
		FinMientras
		
		
	FinSi
	Escribir " ";
	
	
	
FinSubProceso



//----------- SUBPROCESO QUE CORRESPONDE A VERIFICAR DISPONIBILIDAD/DENTRO DEL SUBPROCESO GENERAR RESERVA-----MENU CLIENTE----/ WANDA
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

//-----MINI SUBPROCESO VERIFICARDATOS/ DENTRO DEL SUBPROCESO GENERAR RESERVA-----MENU CLIENTE--/ WANDA
SubProceso verificarDatos(datosClientes,Usuario,tieneDatos Por Referencia)
	Definir i Como Entero;
	Definir posicion Como Entero;
	i<-0;
	posicion<-0;
	Mientras datosClientes[i,0]<> " " Hacer
		i<-i+1;
		posicion<- i;
	FinMientras
	
	para i<-0 Hasta posicion -1 Hacer
		si datosClientes[i,5]= Usuario Entonces
			tieneDatos<- Verdadero;
		FinSi
	FinPara
	
	
	
	
FinSubProceso



//-----MINI SUBPROCESO A�ADIENDORESERVA / DENTRO DEL SUBPROCESO GENERAR RESERVA-----MENU CLIENTE---/ WANDA

SubProceso aniadiendoReserva(matrizReservas,fechaIngreso,fechaEgreso,idHabitacionElegida,usuario)
	definir i, posicionFila Como Entero;
	i <-0;
	posicionFila <-0;
	Mientras matrizReservas[i,0] <> " " Hacer
		
		
		i <- i +1;
		posicionFila <- i;
		
	FinMientras
	
	//Escribir posicionFila;//probando si encuentra la fila vacia 
	
	matrizReservas[posicionFila,0] <- ConvertirATexto(idHabitacionElegida);
	matrizReservas[posicionFila,1] <-fechaIngreso;
	matrizReservas[posicionFila,2] <-fechaEgreso;
	matrizReservas[posicionFila,3] <-Usuario;
	
	
	
FinSubProceso








//---- Subproceso de generarReserva----MenuCliente----/  NELSON

SubProceso verificarFecha(fecha, fechaValida Por Referencia) 
    Definir dia, mes, anio Como Entero;
    fechaValida <- Verdadero;
    
    // Verificar que la fecha tenga exactamente 10 caracteres
    Si Longitud(fecha) <> 10 Entonces
        fechaValida <- Falso;
    Sino
        // Verificar que los caracteres en las posiciones 3 y 6 sean guiones
        Si SubCadena(fecha, 2, 2) <> "-" o SubCadena(fecha, 5, 5) <> "-" Entonces
            fechaValida <- Falso;
        Sino
            // Extraer y convertir d�a, mes y a�o a n�meros
            dia <- ConvertirANumero(SubCadena(fecha, 0, 1));
            mes <- ConvertirANumero(SubCadena(fecha, 3, 4));
            anio <- ConvertirANumero(SubCadena(fecha, 6, 9));
            
            // Verificar que d�a, mes y a�o sean n�meros v�lidos
            Si dia < 1 o dia > 31 Entonces
                fechaValida <- Falso;
            FinSi
            Si mes < 1 o mes > 12 Entonces
                fechaValida <- Falso;
            FinSi
            Si anio <> 2024 Entonces // A�o debe ser igual a 2024
                fechaValida <- Falso;
            FinSi
        FinSi
    FinSi
FinSubProceso
//------------------FUNCION DEL SubProceso generarReserva-------------MENU CLIENTE-----------//

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


//-----SUBPROCESO ImprimirFactura----- MENUCLIENTE----//
SubProceso ImprimirFactura(matrizUsuario,matrizReservas,Usuario,matrizHabitacion, datosClientes,variableMenu Por Referencia)
	definir i,j como entero;
	Definir posicionUsuario como entero; 
	Definir fechaIngreso_dia Como Entero;
	Definir fechaEgreso_dia Como Entero;
	definir cantidadDias Como Entero;
	definir costoTotal Como Entero;
	definir tipoHabitacionActual Como Cadena;
	definir diasPorMes Como Entero;
	Dimensionar diasPorMes(12);
	
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
	
	
	
	para i <-0 hasta 99 Hacer
		si Usuario = matrizReservas[i,3] Entonces
			
			para j <- 0 hasta 99 Hacer
				si datosClientes[j,5] = Usuario Entonces
					posicionUsuario <- j; 
					
				FinSi
			FinPara
			fechaIngreso_dia<- convertirFecha_aNumero(diasporMes,matrizReservas[i,1]);
			fechaEgreso_dia <- convertirFecha_aNumero(diasporMes,matrizReservas[i,2]);
			cantidadDias <- fechaEgreso_dia - fechaIngreso_dia;
			
			// el id habitacion  = matrizreservas[i,0]
			
			tipoHabitacionActual <- matrizHabitacion[ConvertirANumero(matrizReservas[i,0]),0];
			// en la matrizHabitacion esta en precio y el tipo Entonces :
			costoTotal <- ConvertirANumero(matrizHabitacion[ConvertirANumero(matrizReservas[i,0]),1] ) * cantidadDias; // el resultado es el precio de los dias que se queda 
			
			
			Escribir "";
			Escribir "--------------------------------------------------------------";
			Escribir "                        FACTURA                               ";
			Escribir "                    Tipo de Factura: B                        ";
			Escribir "                HOTEL: La Posada del Carpincho                ";
			Escribir "--------------------------------------------------------------";
			Escribir "";
			Escribir "RECEPTOR                          EMISOR                       ";
			Escribir "--------------------------------------------------------------";
			Escribir "Nombre: ", datosClientes[posicionUsuario,0], "             Nombre: La Posada del Carpincho ";
			Escribir "DNI: ", datosClientes[posicionUsuario,4], "             Email: laposadadelcarpincho@gmail.com";
			Escribir "Tel�fono: ", datosClientes[posicionUsuario,3], "        Tel�fono: 1152345678              ";
			Escribir "Email: ", datosClientes[posicionUsuario,2], "                                                 ";
			Escribir "--------------------------------------------------------------";
			Escribir "";
			Escribir "--------------------------------------------------------------";
			Escribir "CONCEPTO:                                                      ";
			Escribir "--------------------------------------------------------------";
			Escribir "Precio de la habitaci�n seleccionada:            $", matrizHabitacion[matrizReservas[i,0],1];
			Escribir "";
			Escribir "--------------------------------------------------------------";
			Escribir "CANTIDAD A PAGAR:                                               ";
			Escribir "--------------------------------------------------------------";
			Escribir "Cantidad de noches:                          ", cantidadDias;
			Escribir "Total a pagar:                               $", costoTotal;
			Escribir "--------------------------------------------------------------";
			Escribir "";

		FinSi
	FinPara
	
	variableMenu <- 0 ; 
FinSubProceso

