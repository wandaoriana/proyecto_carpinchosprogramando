Proceso Login_Completo
	
	definir i,j,isadmin Como Entero;
	Definir NuevoUsuario,nuevacontrasenia, usuario, contrasenia1  Como Caracter;
	definir matrizusuario Como Caracter;
	Dimension matrizusuario(100,2);
	definir usuarioEncontrado como entero;
	definir	datosClientes como cadena; 
	Dimension  datosClientes(100,6);
	definir matrizReservas como cadena;
	dimensionar matrizReservas[100,3];
	Definir disponible Como Logico;
	definir matrizHabitacion Como cadena;
	Definir matrizTipoHabitacion Como cadena;
	Dimensionar matrizHabitacion[5,2];
	Dimensionar matriztipoHabitacion[3,2];
	definir variableMenu como entero;
	Definir tieneDatos Como Logico; // Esta variable se utiliza para verificar si el cliente tiene datos por defecto es falso
	//definiendo parametros para menus 
	Definir parametro como cadena;
	definir parametroNum como entero; 
	Definir parametroAuxAdmin como cadena;
	Definir parametroAdmin como entero;
	Definir parametroAuxCliente como cadena;
	Definir parametroCliente como entero;
	
	isadmin<-0;
	tieneDatos<- falso;
	
	matrizusuario[0,0] <- "Liliana97";
	matrizusuario[0,1] <- "1997";
	matrizusuario[1,0] <- "Luis86";
	matrizusuario[1,1] <- "1234";
	matrizusuario[2,0]  <- "admin";
	matrizusuario[2,1] <-"1998";
	
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
	
	// MATRIZ usuario
	para i <-3 hasta 99 Hacer
		para j <-0 hasta 1 hacer
			matrizusuario[i,j] <- " " ;
		FinPara
	FinPara
	
	// Llenar la matriz de reservas con datos de prueba
	matrizReservas[0,0] <- "1";
	matrizReservas[0,1] <- "01-01-2024";
	matrizReservas[0,2] <- "05-01-2024";
	matrizReservas[1,0] <- "1";
	matrizReservas[1,1] <- "10-01-2024";
	matrizReservas[1,2] <- "15-01-2024";
	
	
	// matirz reserva llenado
	
	Para i<- 2 Hasta 99 Hacer
		para j<-0 hasta 2 Hacer
			matrizReservas[i,j] <- " ";
		FinPara
	FinPara
	
	//Matriz Tipo caracteristicas  de la habitacion
	matrizTipoHabitacion[0,0] <- "SUITE";
	matrizTipoHabitacion[1,0] <- "INDIVIDUAL";
	matrizTipoHabitacion[2,0] <- "PRESIDENCIAL";
	matrizTipoHabitacion[0,1] <- "300";
	matrizTipoHabitacion[1,1] <- "150";
	matrizTipoHabitacion[2,1] <- "500";
	
	
	//Matriz Tde  habitaciones
	
	matrizHabitacion[0,0] <- "SUITE";
	matrizHabitacion[1,0] <- "INDIVIDUAL";
	matrizHabitacion[2,0] <- "PRESIDENCIAL";
	matrizHabitacion[3,0] <- "PRESIDENCIAL";
	matrizHabitacion[4,0] <- "PRESIDENCIAL";
	matrizHabitacion[0,1] <- "300";
	matrizHabitacion[1,1] <- "150";
	matrizHabitacion[2,1] <- "150";
	matrizHabitacion[3,1] <- "500";
	matrizHabitacion[4,1] <- "500";
	
	
	
	
	// ---------------------------------- MENU PRINCIPAL -----------------------------------------///////////
	parametroNum <- 0;
	
	Mientras parametroNum <> 3 Hacer
		// Encabezado del menú
		Escribir "==================================================";
		Escribir "=                    MENU                        =";
		Escribir "==================================================";
		Escribir "1. Ingresar usuario";
		Escribir "2. Crear usuario";
		Escribir "3. Salir";
		Escribir "--------------------------------------------------";
		Escribir "Digite una opción:";
		Leer parametro;
		
		// Verificar si la opción ingresada es válida
		Si parametro = "1" o parametro = "2" o parametro = "3" Entonces
			parametroNum <- convertirANumero(parametro);
		Sino
			Escribir "==================================================";
			Escribir "=               Opción inválida                  =";
			Escribir "==================================================";
			parametroNum <- 0;
		FinSi
		
		// Procesar la opción seleccionada
		Segun parametroNum Hacer
			1:
				Escribir "--------------------------------------------------";
				Escribir "=               Ingresar usuario                 =";
				Escribir "--------------------------------------------------";
				Escribir "Ingrese su nombre de usuario:";
				Leer usuario;
				usuarioEncontrado <- 0;
				Escribir "Ingrese su contraseña:";
				Leer contrasenia1;
				ingresarUsuario(usuario, contrasenia1, matrizUsuario, isAdmin, usuarioEncontrado);
				
				Si usuarioEncontrado = 1 Entonces
					Escribir "==================================================";
					Escribir "=         Usuario encontrado, ingresando         =";
					Escribir "==================================================";
					parametroNum <- 3; // Salir del menú
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
				parametroNum <- 3; // Salir del menú
				
			De Otro Modo:
				Escribir "==================================================";
				Escribir "=               Opción inválida                  =";
				Escribir "==================================================";
				Escribir " ";
		FinSegun
FinMientras

	
	
	//Escribir isadmin; // esto para verificar si es admin
	//Escribir usuarioEncontrado; 
	
	
	// ---------------------------------------------- MENU ADMINISTRADOR -------------------------------------------------------////
	parametroAdmin <- 0;
	
	Mientras isAdmin = 1 y parametroAdmin <> 4 Hacer
		// Encabezado del menú de administrador
		Escribir "==================================================";
		Escribir "=                MENU ADMINISTRADOR              =";
		Escribir "==================================================";
		Escribir "1. Mostrar matriz de usuarios";
		Escribir "2. Cargar clientes";
		Escribir "3. Mostrar datos de clientes";
		Escribir "4. Salir";
		Escribir "--------------------------------------------------";
		Escribir "Digite una opción:";
		Leer parametroAuxAdmin;
		
		// Verificar si la opción ingresada es válida
		Si parametroAuxAdmin = "1" o parametroAuxAdmin = "2" o parametroAuxAdmin = "3" o parametroAuxAdmin = "4" Entonces
			parametroAdmin <- convertirANumero(parametroAuxAdmin);
		Sino
			Escribir "==================================================";
			Escribir "=               Opción inválida                  =";
			Escribir "==================================================";
		FinSi
		
		// Procesar la opción seleccionada
		Segun parametroAdmin Hacer
			1:
				Escribir "--------------------------------------------------";
				Escribir "=          Mostrando matriz de usuarios          =";
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
				
			4:
				Escribir "==================================================";
				Escribir "=                   Has salido                   =";
				Escribir "==================================================";
				parametroAdmin <- 4; // Salir del menú de administrador
				
		FinSegun
	FinMientras

	
	
	// ------------------------------- MENU CLIENTE ---------------------------------///
	variableMenu<-0; //Esta variable sale del subproceso generarReserva para dar ingresar al loop nuevamente de generar reserva en caso que el cliente no encuentre habitacion en la fecha solicitada
	//Esta variable tambien se utiliza para regresar al menu cliente.
	parametroCliente <- 0;
	
	Mientras isAdmin <> 1 y usuarioEncontrado = 1 y parametroCliente <> 3 Hacer
		// Encabezado del menú de cliente
		Escribir "==================================================";
		Escribir "=                 MENU CLIENTE                   =";
		Escribir "==================================================";
		Escribir "1. Ingresar Datos";
		Escribir "2. Generar Reserva";
		Escribir "3. Salir";
		Escribir "--------------------------------------------------";
		Escribir "Digite una opción:";
		
		// Leer la opción del cliente
		Leer parametroAuxCliente;
		
		// Verificar si la opción es válida
		Si parametroAuxCliente = "1" o parametroAuxCliente = "2" o parametroAuxCliente = "3" Entonces
			parametroCliente <- convertirANumero(parametroAuxCliente);
		Sino
			Escribir "==================================================";
			Escribir "=               Opción inválida                  =";
			Escribir "==================================================";
		FinSi
		
		// Procesar la opción seleccionada
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
				Escribir "==================================================";
				Escribir "=                   Has salido                   =";
				Escribir "==================================================";
				parametroCliente <- 3; // Salir del menú cliente
				
			De Otro Modo:
				Escribir "==================================================";
				Escribir "=               Opción inválida                  =";
				Escribir "==================================================";
		FinSegun
	FinMientras

	
FinProceso

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


SubProceso CrearUsuario(matrizusuario Por Referencia)
	Definir i , posicionFilaVacia Como Entero;
	definir parametro2 Como Entero;
	Definir NuevoUsuario , NuevaContrasenia Como Caracter;
	Escribir "Digite un nuevo usuario";
	leer NuevoUsuario;
	Escribir "Digite una nueva Contrania";
	Leer NuevaContrasenia;
	posicionFilaVacia <-0;
	parametro2<-0;
	
	Mientras parametro2 = 0 Hacer
		
		
		Para i <-0 Hasta 99 Hacer
			si matrizusuario[i,0] = NuevoUsuario Entonces
				Escribir "Ya existe este usuario, digite otro nombre de usuario";
				
			SiNo 
				parametro2 <- 1 ;
				para i <-0 Hasta 99 Hacer
					si matrizusuario[i,0] = " " Entonces
						
						posicionFilaVacia <- i;
					FinSi
				FinPara
				
				
				
			FinSi
		FinPara
		
		si posicionFilaVacia <> 0 Entonces
			matrizusuario[posicionFilaVacia,0] <- NuevoUsuario;
			
			matrizusuario[posicionFilaVacia,1] <- NuevaContrasenia;
			
			
		FinSi
	FinMientras
	
	
FinSubProceso


SubProceso  mostrarMatrizUsuario(matrizusuario) 
	Definir i Como Entero;
	para i <-0 hasta 99 Hacer
		
		Si matrizusuario[i,0] <> " " Entonces
			Escribir Sin Saltar matrizusuario[i,0], " " , matrizusuario[i,1];
			Escribir " ";
		FinSi
		
		
	FinPara
FinSubProceso

SubProceso  cargarNuevoCliente(clientes Por Referencia,matrizUsuario Por Referencia)
	Definir nombre, apellido, eMail, telefono, dni Como Caracter;
	definir opcion, indice, i Como Entero;
	definir arroba, puntoCom, valido, telefonoValido, dniValido Como Logico;
	definir simboloArroba, simboloPuntoCom Como Caracter;
	definir posicionFilaVacia_MU Como Entero;
	
	simboloArroba <- "@";
	simboloPuntoCom <- ".com";
	indice <- 0;
	
	
	
	Repetir
		Para i <- 0 Hasta 99 Hacer
			Si clientes[i, 0] = " " Entonces
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
				Escribir "El numero de tel?fono debe tener 10 d?gitos y solo puede contener n?meros.";
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
		Escribir "Opci?n 1: Ingresar Nuevo Cliente";
		Escribir "Opci?n 2: Regresar al menu Admin ";
		leer opcion;
		
	Hasta Que opcion = 2
FinSubProceso

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
	// Repetir hasta obtener una fecha de ingreso válida
	Repetir
		Escribir "Digite fecha de ingreso DD-MM-YYYY";
		Leer fechaIngreso;
		verificarFecha(fechaIngreso, fechaIngresoValida);
		Si fechaIngresoValida Entonces
			Escribir "La fecha de ingreso es válida.";
		Sino
			Escribir "La fecha de ingreso no es válida. Debe estar en formato DD-MM-YYYY.";
		FinSi
	Hasta Que fechaIngresoValida = Verdadero
	
	fechaEgresoValida <- Falso;
	// Repetir hasta obtener una fecha de egreso válida que sea mayor que la fecha de ingreso
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
				Escribir "La fecha de egreso es válida.";
			FinSi
		Sino
			Escribir "La fecha de egreso no es válida. Debe estar en formato DD-MM-YYYY.";
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
	
	si noDisponibilidad = Verdadero Entonces
		Escribir "Las opciones disponibles son:"; // Muestra la disponibilidad de habitaciones de acuerdo a lo que requiere el usuario
		para i <-0 Hasta 4 Hacer
			disponible <- Verdadero;	
			si matrizHabitacion[i,0] = matrizTipoHabitacion[tipoHabitacionElegida-1,0] Entonces // Tipo de habitacion -1 , por que al digitar la opcion el usuario, elige una opcion desde 1. 
				idhabitacion <- i;
				//Escribir idhabitacion;
				verificarDisponibilidad(DiasPorMes,matrizReservas,idHabitacion,fechaIngreso,fechaEgreso,disponible);
				
				si disponible = Verdadero Entonces
					Escribir idHabitacion," ", matrizHabitacion[i,0];
					noDisponibilidad <- Verdadero;
				FinSi
				
			FinSi
		FinPara
	FinSi
	
	disponible <- Verdadero;
	
	
	
	
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
		Escribir "Digite una opción para la habitación elegida:";
		Leer idHabitacionElegida;
		
		parametroReserva <- 0;
		
		Mientras parametroReserva <> 3 Hacer
			Escribir "--------------------------------------------------";
			Escribir "=             Desea usted reservar?              =";
			Escribir "--------------------------------------------------";
			Escribir "1. Si";
			Escribir "2. Regresar a MENU CLIENTE";
			Escribir "--------------------------------------------------";
			Escribir "Digite una opción:";
			
			Leer parametro;
			
			// Verificar si la opción es válida
			Si parametro = "1" o parametro = "2" Entonces
				parametroReserva <- convertirANumero(parametro);
			Sino
				Escribir "==================================================";
				Escribir "=               Opción inválida                  =";
				Escribir "==================================================";
			FinSi
			
			Escribir "Opción seleccionada: ", parametroReserva;
			
			Segun parametroReserva Hacer
				1:
					verificarDatos(datosClientes, Usuario, tieneDatos);
					Si tieneDatos = Verdadero Entonces
						Escribir "--------------------------------------------------";
						Escribir "=      Añadiendo reserva para el usuario...       =";
						Escribir "--------------------------------------------------";
						aniadiendoReserva(matrizReservas, fechaIngreso, fechaEgreso, idHabitacionElegida, usuario);
						parametroReserva <- 3;
					SiNo
						Escribir "==================================================";
						Escribir "=  No tiene datos ingresados, no puede reservar  =";
						Escribir "=  por el momento. Por favor cargue sus datos.   =";
						Escribir "==================================================";
						parametroReserva <- 3; // Salir al menú cliente
					FinSi
					
				2:
					Escribir "--------------------------------------------------";
					Escribir "=         Regresando al MENÚ CLIENTE...           =";
					Escribir "--------------------------------------------------";
					parametroReserva <- 3; // Regresar al menú cliente
			FinSegun
		FinMientras
		
		
	FinSi
	Escribir " ";
	
	
	
FinSubProceso


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
	
	//Escribir posicionFila;//probando si encuentra la fila vacia 
	
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
	
	
	
	Escribir indice;
	
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

SubProceso mostrarDatosClientes(datosClientes)
	definir i, j Como Entero;
	
	Para i <-0 hasta 6 Hacer
		para j <- 0 hasta 5 Hacer
			Escribir Sin Saltar " ",datosClientes[i,j] ," ";
		FinPara
		Escribir " ";
	FinPara
	
FinSubProceso


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
            // Extraer y convertir día, mes y año a números
            dia <- ConvertirANumero(SubCadena(fecha, 0, 1));
            mes <- ConvertirANumero(SubCadena(fecha, 3, 4));
            anio <- ConvertirANumero(SubCadena(fecha, 6, 9));
            
            // Verificar que día, mes y año sean números válidos
            Si dia < 1 o dia > 31 Entonces
                fechaValida <- Falso;
            FinSi
            Si mes < 1 o mes > 12 Entonces
                fechaValida <- Falso;
            FinSi
            Si anio <> 2024 Entonces // Año debe ser igual a 2024
                fechaValida <- Falso;
            FinSi
        FinSi
    FinSi
FinSubProceso
