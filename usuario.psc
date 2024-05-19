Proceso usuario
	Definir  parametro,i Como Entero;
	Definir  usuario1,contrasenia1,matrizusuario Como Caracter;
	Dimensionar matrizusuario[10,2];
	
	
	matrizusuario[0, 0] <- "cliente1";
	matrizusuario[0, 1] <- "123";
	matrizusuario[1, 0] <- "cliente2";
	matrizusuario[1, 1] <- "456";
	
	
	para i <- 2 Hasta 9 Hacer
		matrizusuario[i, 0] <- " ";
		matrizusuario[i, 1] <- " ";
	FinPara
	parametro <- 0;
	
	Mientras parametro <> 1 Hacer
		Escribir "1. Ingresar";
		Escribir "2. Salir";
		Escribir "Seleccione una opción:";
		Leer parametro;
		
		
		Segun parametro Hacer
			1:
				Escribir "Ingrese su usuario:";
				Leer usuario1;
				Escribir "Ingrese su contraseña:";
				Leer contrasenia1;
				IngresarUsuario(usuario1, contrasenia1, MatrizUsuario);
			2:
				parametro <- 1;
			De Otro Modo:
				Escribir "Opción no válida";
		FinSegun;
		
		Si parametro <> 1 Entonces
			Escribir "¿Desea salir? (1.Si, 0.No):";
			Leer parametro;
		FinSi;
	FinMientras;
FinProceso

	SubProceso IngresarUsuario(usuario1, contrasenia1, MatrizUsuario)
		Definir i Como Entero;
		Definir usuarioEncontrado Como Entero;
		
		usuarioEncontrado<-0;
		Para i <- 0 Hasta 9 Hacer
			Si MatrizUsuario[i, 0] = usuario1 Y MatrizUsuario[i, 1] == contrasenia1 Entonces
				usuarioEncontrado<-1;
				Escribir "Bienvenido ", usuario1;
			
			FinSi;
		FinPara
		Si usuarioEncontrado = 0 Entonces
			Escribir "Usuario o contraseña incorrectos";
		FinSi;
FinSubProceso
	
