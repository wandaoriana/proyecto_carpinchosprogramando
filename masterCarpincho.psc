Proceso Login_Completo
	
	definir parametro,parametroAdmin,i,j,isadmin , parametroCliente Como Entero;
	Definir NuevoUsuario,nuevacontrasenia, usuario, contrasea1  Como Caracter;
	definir matrizusuario Como Caracter;
	Dimension matrizusuario(100,2);
	definir usuarioEncontrado como entero;
	definir	datosClientes como cadena; 
	Dimension  datosClientes(100,6);
	
	isadmin<-0;
	parametroAdmin<-0;
	parametroCliente <-0;
	matrizusuario[0,0] <- "Wanda";
	matrizusuario[0,1] <- "1997";
	matrizusuario[1,0] <- "Mercedes";
	matrizusuario[1,1] <- "1234";
	
	//matriz datosClientes llenanado...
	Para i <- 0 Hasta 99 Hacer
        Para j <- 0 Hasta 5 Hacer
            datosclientes[i, j] <- " ";
        FinPara
    FinPara
	
	para i <-2 hasta 99 Hacer
		
		
		
		para j <-0 hasta 1 hacer
			
			
			matrizusuario[i,j] <- " " ;
			
			
		FinPara
	FinPara
	
	
	
	parametro <- 0 ;
	
	Mientras parametro <> 3 Hacer
		Escribir "Menu";
		Escribir "1.Ingresar usuario";
		Escribir "2.Crear usuario";
		Escribir "3.Salir";
		leer parametro;
		
		Segun parametro hacer
			1: Escribir "Ingresar uruario";
				leer usuario;
				 usuarioEncontrado <-0;
				Escribir "Ingresar contrase�a";
				Leer contrasea1;			
				IngresarUsuario(usuario,contrasea1,matrizusuario,isadmin ,usuarioEncontrado);
				si usuarioEncontrado = 1 Entonces
					parametro <-3; 
					
				FinSi
				
			2:
				CrearUsuario(matrizusuario);
				
				
			3: 
				Escribir"Saliste";
				
				parametro <-3;
			De Otro Modo:
					Escribir "Opcion invalida";
					
					
		FinSegun
	FinMientras
	
	//Escribir isadmin; // esto para verificar si es admin
	//Escribir usuarioEncontrado; 
	
	
	
	Mientras isadmin = 1 y parametroAdmin <>3 Hacer
		
		Escribir "Menu admin";
		Escribir  "1. Mostrar matriz usuarios";
		Escribir  "2.Cargar Clientes";
		leer parametroAdmin;
		Segun parametroAdmin Hacer
				
	
				1:
					mostrarMatrizUsuario(matrizusuario) ;
				2:
					cargarNuevoCliente(datosClientes,matrizUsuario);
				3:
					Escribir "Saliste";
					parametroAdmin<- 3;
				De Otro Modo:
					Escribir "Opcion invalida";
			
		FinSegun
	FinMientras
	Mientras isadmin <> 1 y usuarioEncontrado = 1 y parametroCliente <> 3 Hacer
		
		Escribir "Menu cliente";
		Escribir  "1.Ingresar Datos";
		Escribir  "2. Generar Reserva ";
		leer parametroCliente;
		Segun parametroCliente Hacer
			
			
			1:
				Escribir "Ingresar Datos ";
				
			2:   
				
			3: 
				Escribir "Salir";
				parametroCliente<-3;
				
			De Otro Modo:
				Escribir "Opcion Invalida";
				
				
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
		Escribir "Usuario o contrase�a incorrectos";
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
	Escribir "Digite una nueva Contra�a";
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
			Escribir "Ingrese la direcci?n de correo electr?nico: ";
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
				Escribir "El correo electr?nico es v?lido.";
			Sino
				Escribir "El correo electr?nico ingresado no es v?lido. Debe contener ", simboloArroba, " y terminar en ", simboloPuntoCom, ".";
			FinSi
		Hasta Que arroba Y puntoCom
		
		Repetir
			telefonoValido <- Verdadero;
			Escribir "Ingrese el n?mero de tel?fono (10 d?gitos): ";
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
				Escribir "El n?mero de tel?fono es v?lido.";
			Sino
				Escribir "El n?mero de tel?fono debe tener 10 d?gitos y solo puede contener n?meros.";
			FinSi
		Hasta Que telefonoValido
		
		
		
		Repetir
			dniValido <- Verdadero;
			Escribir "Ingrese el DNI (8 d?gitos): ";
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
				Escribir "El DNI es v?lido.";
			Sino
				Escribir "El DNI debe tener 8 d?gitos, no puede comenzar con doble 0 y solo puede contener n?meros.";
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
		
		Escribir "INGRESE UNA OPCI?N: ";
		Escribir "Opci?n 1: Ingresar Nuevo Cliente";
		Escribir "Opci?n 2: Regresar al menu Admin ";
		leer opcion;
		
	Hasta Que opcion = 2
FinSubProceso