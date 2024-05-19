Proceso Login_Completo
	
	definir parametro,parametroAdmin,i,j,isadmin , parametroCliente Como Entero;
	Definir NuevoUsuario,nuevacontrasenia, usuario, contrasea1  Como Caracter;
	definir matrizusuario Como Caracter;
	Dimension matrizusuario(100,2);
	definir usuarioEncontrado como entero;
	isadmin<-0;
	parametroAdmin<-0;
	parametroCliente <-0;
	matrizusuario[0,0] <- "Wanda";
	matrizusuario[0,1] <- "1997";
	matrizusuario[1,0] <- "Mercedes";
	matrizusuario[1,1] <- "1234";
	
	
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
				Escribir "Ingresar contraseña";
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
		leer parametroAdmin;
		Segun parametroAdmin Hacer
				
	
				1:
					mostrarMatrizUsuario(matrizusuario) ;
				3:
					Escribir "Saliste";
					parametroAdmin<- 3;
				De Otro Modo:
					Escribir "Opcion invalida";
			
		FinSegun
	FinMientras
	Mientras isadmin <> 1 y usuarioEncontrado = 1 y parametroCliente <> 3 Hacer
		
		Escribir "Menu cliente";
		Escribir  "1.";
		leer parametroCliente;
		Segun parametroCliente Hacer
			
			
			1:
				Escribir "Opcion1 ";
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
		Escribir "Usuario o contraseña incorrectos";
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
	Escribir "Digite una nueva Contraña";
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
	