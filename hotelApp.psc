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
		Escribir "Ingrese la direcci�n de correo electr�nico: ";
		leer eMail;
		Escribir "Ingrese el n�mero de tel�fono: ";
		leer telefono;
		Escribir "Ingrese el g�nero: ";
		leer genero;
		Escribir "Ingrese el DNI: ";
		leer dni;
		
		Escribir "INGRESE UNA OPCI�N: ";
		Escribir "Opci�n 1: Ingresar Nuevo Cliente";
		Escribir "Opci�n 2: Salir del men�";
		leer opcion;
		
	Hasta Que opcion = 2
	
	
FinSubAlgoritmo

//SubAlgoritmo mostrarMatriz(clientes)
	
//FinSubAlgoritmo
