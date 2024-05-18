Proceso hotelApp
	Definir clientes como caracter;
	Dimension clientes[200, 6];
	cargarNuevoCliente(clientes);
FinProceso

SubAlgoritmo cargarNuevoCliente(clientes)
	Definir nombre, apellido, eMail, telefono, genero, dni Como Caracter;
	definir opcion Como Entero;
	
	Repetir
		Escribir "Por favor, ingrese el nombre del cliente: ";
		leer nombre;
		Escribir "Ingrese el apellido: ";
		leer apellido;
		Escribir "Ingrese la dirección de correo electrónico: ";
		leer eMail;
		Escribir "Ingrese el número de teléfono: ";
		leer telefono;
		Escribir "Ingrese el género: ";
		leer genero;
		Escribir "Ingrese el DNI: ";
		leer dni;
		
		Escribir "INGRESE UNA OPCIÓN: ";
		Escribir "Opción 1: Ingresar Nuevo Cliente";
		Escribir "Opción 2: Salir del menú";
		leer opcion;
		
	Hasta Que opcion = 2
	
	
FinSubAlgoritmo

//SubAlgoritmo mostrarMatriz(clientes)
	
//FinSubAlgoritmo
