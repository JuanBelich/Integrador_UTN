SubProceso recorrerPalabra(palabra,letra Por Referencia) //buscamos saber si la letra que ingresa el usuario está dentro de la palabra secreta
	Definir i Como Entero;
	
	Para i<-0 Hasta (Longitud(palabra)-1) con paso 1 hacer
		si Subcadena(palabra,i,i) = letra Entonces
			Escribir "la letra está en la palabra, ubicada en la posicion ", i; //indicamos la posicion/es en la que se encuentra la letra dentro de la palabra
		Sino 
			Escribir "Tu letra no está en la posicion", i;
		FinSi 
	FinPara
FinSubProceso

Funcion vof <- retorno(palabra,letra) //buscamos saber si la letra que ingresa el usuario está dentro de la palabra secreta
	Definir i,j,k Como Entero;
	Definir vof Como Logico;
	
	j <- 0;
	k <- 0; 
	Para i<-0 Hasta (Longitud(palabra)-1) con paso 1 hacer
		si Subcadena(palabra,i,i) = letra Entonces
			j <- 0; //esta es la parte positiva donde si encuentra la letra 
		Sino
			k <- 1; //esta es la parte que no encuentra la letra
		FinSi 
	FinPara
	Si j + k = 1 Entonces //esto quiere decir que la letra esta en alguna posicion de la palabra aunque no sepamos en cual.
		vof <- verdadero;
	FinSi
FinSubProceso

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Este es el proceso PRINCIPAL
Proceso PRINCIPAL
	Definir palabra,letra Como Caracter;
	Definir i, a Como Entero;
	Definir j Como Logico;
    Definir intento Como Entero;
	
	
	a <- 6; //la variable a es la vida
	
	//j 
	
	Escribir "Bienvenidos al juego del ahorcadoooo!!";
	Escribir "Tenés que adivinar la palabra, sino estas morido brooo!";
	Escribir "Tu palabra es chan chan chaaaaaaan";
	leer palabra;
	Mientras a > 0 Hacer
		leer letra;
		j <- falso; //la j tiene que estar en cero cuando el ciclo vuelva a inicializarse para que no salten errores explicar 
		Escribir "La palabra tiene ", Longitud(palabra), " letras";
		
		//borramos el ciclo para, y solo queda el proceso 
		recorrerPalabra(palabra,letra); //subproceso1
		
		j <- retorno(palabra,letra);
		
		Si j = falso Entonces
			a <- a - 1; 
		SiNo
			a <- a; 
		FinSi
		
		Si a = 5 Entonces
			Escribir "==========";
			Escribir "+---+";
			Escribir "|   |";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "==========";
			Escribir "Te quedan 4 intentos";
		FinSi
		si a = 4 Entonces //el usuario ya se equivoco dos veces
			Escribir " ==========";
			Escribir "+---+";
			Escribir "|   |";
			Escribir "|   O";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "==========";
			Escribir "Te quedan 3 intentos";
		FinSi
		Si a = 3 Entonces
			Escribir "==========";
			Escribir "+---+";
			Escribir "|   |";
			Escribir "|   O";
			Escribir "|  /| ";
			Escribir "|";
			Escribir "|";
			Escribir "==========";
			Escribir "Te quedan 2 intentos";
		FinSi
		Si a = 2 Entonces
			Escribir "==========";
			Escribir "+---+";
			Escribir "|   |";
			Escribir "|   O";
			Escribir "|  /|\";
			Escribir "|";
			Escribir "|";
			Escribir "==========";
			Escribir "Te quedan 1 intentos";
		FinSi
		Si a = 1 Entonces
			Escribir "==========";
			Escribir "+---+";
			Escribir "|   |";
			Escribir "|   O";
			Escribir "|  /|\";
			Escribir "|  / \";
			Escribir "|";
			Escribir "==========";
			Escribir "ESTAS AHORCADO";
			Escribir "P E R D I S T E !!!!";
			Escribir "La palabra secreta era: ", palabra;
		FinSi
	FinMientras
	
	


	
FinProceso
//TAREA estudiar ESTUPIDASSSSSSSSSSSSSSSSSSSSSSSSSS salir y volver a entrar cuando la palabra esta, y que salga del ciclo para.
//poner: que te pida otra letra, con un ciclo 

