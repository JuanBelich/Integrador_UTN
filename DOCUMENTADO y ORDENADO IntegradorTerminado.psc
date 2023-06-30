//MOSTRAMOS LA INTERFAZ DE INICIO DEL MENU DE JUEGOS
Funcion menuPrincipal()
	Escribir " ***********************************************";
	Escribir " *                                             *";
    Escribir (" *       Bienvenidos a la Juegoteca!           *");
	Escribir " *                                             *";
    Escribir (" *   Elegi como queres perder tu tiempo        *");
	Escribir " *                                             *";
    Escribir (" * 1- Suerte                                   *");
	Escribir " *                                             *";
	Escribir (" * 2- Busqueda del Tesoro                      *");
	Escribir " *                                             *";
	Escribir (" * 3- 5mil                                     *"); //esta es la funcion donde colocamos el menu principal para elegir un juego
	Escribir " *                                             *";
	Escribir (" * 4- Ahorcado                                 *");
	Escribir " *                                             *";
	Escribir (" * 5- Salir                                    *");
	Escribir " *                                             *";
	Escribir " ***********************************************";
FinFuncion
///SubProceso PARA JUEGO DE SUERTE CARA/CRUZ
SubProceso suerte(moneda,tipeado Por Valor)   //explicar la teoria de modularidad, donde dice por valor y referencia, como se pasan los parametros, explicar parametros y argumentos y diferencia de cada uno
	Definir num,cara Como Entero;   //definimos variables enteras dentro del subproceso  
	Escribir "";
	Escribir ("Elegi: 1 = Cara o 2 = Cruz");		//damos a elegir cara o cruz
	Leer  tipeado;
	//control de datos ingresados que sean 1 o 2 solamente                
	mientras (tipeado <> 1) y (tipeado <> 2) Hacer   //esto es un control para que si o si se coloque un 1 o un 2, sino es asi vuelve a pedirlo hasta que se ingrese eso
		Escribir "";
		Escribir ("Opcion no valida por favor elegi de nuevo");
		Escribir ("Elegi: 1=Cara o 2=Cruz");
		Leer  tipeado;
	FinMientras
	//funcion AZAR para determinar de que cara cae la moneda
	cara<-azar(2);   //la funcion azar guarda los numeros entre el cero y el nro que esta entre parentesis en la variable cara
	si cara==0 Entonces    //si es cero, moneda vale uno 
		moneda<-1;
	SiNo 								//explicar condicionales si y sino, palabras reservadas, el si, sino, azar, leer, escribir. etc
		si cara==1 Entonces    //y si cara vale uno moneda vale 2
			moneda<-2;
		FinSi
		moneda<-2;
	FinSi
	// mostramos la cara de la moneda
	si moneda==1 Entonces 
		Escribir "";
		Escribir "El resultado del azar es: Cara";
	SiNo
		si  moneda==2 Entonces
			Escribir "";
			Escribir "El resultado del azar es: Cruz";
		FinSi
	FinSi
	//comparamos la opcion ingresada con el resultado de la funcion azar para saber si el usuario adivino de que lado cayo la moneda
	si moneda==tipeado Entonces    //si estos valores son igual a los que asignaste te dice si ganaste o no, a su vez, el numero 4 es para que vuelva al menu principal
		Escribir ("FELICIDADES, GANASTE!!!");
		num<-4;
		Escribir "   x ~~~~~~~~ x";
		Escribir "  x    1°      x";
		Escribir "  x   LUGAR    x";
		Escribir "  x  GANADOR  x";
		Escribir "   x         x";
		Escribir "    x       x";
		Escribir "     ¦     ¦";
		Escribir "     ¦     ¦";
		Escribir "    /       \";
		Escribir "   /_________\";
	sino		
		Escribir ("PERDISTE! Proba de nuevo");
		num<-4;
		Escribir "  xx      xx      xx       xx      xx      xx   ";
		Escribir "    xx  xx          xx   xx          xx  xx   ";
		Escribir "      xx              xx               xx     ";
		Escribir "    xx  xx          xx   xx          xx  xx   ";
		Escribir "  xx       xx     xx       xx      xx      xx   ";

	FinSi
	Escribir "";
FinSubProceso

//////////////////////////////Juego Busqueda del tesoro//////////////////////////////////
//Encabezado del juego tesoro
SubProceso tesoro(mat,intentos)
	Definir i,j,pos,posTablero como entero;
	posTablero<-1;
	Escribir " B I E N V E N I D O  A  L A   B U S Q U E D A   D E L   T E S O R O";
	Escribir "";
	Escribir "   Tenes 4 intentos!";
	Escribir "";
	Escribir "   Suerte!!";
	Escribir "";
	//Cargar la matriz con " " y el tesoro en una posicion aleatoria
	para i<-0 Hasta 2 Con Paso 1 Hacer
		para j<-0 hasta 2 con paso 1 Hacer     //carga la matriz con espacios en blanco al resto de la matriz  
			mat[i,j]<-" ";
		FinPara
	FinPara
	llenarMat(mat); //se llama a la funcion llenarMat para ingresar el tesoro en una posicion aleatoria, se le asigna el cero en una posicion al azar, llamamos la funcion llenar a la funcion aleatoria. 
	//Mostrar el tablero con las opciones de pósiciones
	para i<-0 Hasta 2 Con Paso 1 Hacer    //muestra las posiciones del tablero, del 1 al 9, o sea el tablero 
		para j<-0 hasta 2 con paso 1 Hacer
			Escribir Sin Saltar "   [",posTablero,"]"," ";
			posTablero<-posTablero+1;
		FinPara
		Escribir " ";
	FinPara
	Escribir "";
	Escribir "Ingresa una posicion del 1 al 9, intenta encontrar el tesoro perdido";
	leer pos;
	//control de datos ingresados entre 1 y 9
	mientras (pos <1) o ( pos>9 ) Hacer  //este ciclo control ,es para que no se ingrese un numero fuera del rango que tienen las matrices
		Escribir " ";
		Escribir "La opcion ingresada no es valida";
		Escribir "Ingresa una posicion del 1 al 9, intenta encontrar el tesoro perdido";
		leer pos;
	FinMientras
	
	//Comparamos si hay 0 o " " en la posicion ingresada y mostramos la matriz si pos="0"
	comparar(mat,pos,intentos);	
FinSubProceso

//ASIGNAR "0" (TESORO) A UNA POSICION ALEATORIA USANDO LA FUNCION AZAR() 
SubProceso llenarMat(mat Por Referencia)   //este proceso es para llenar la matriz. 
	mat[azar(3),azar(3)]<-"0";				//teoria de matrices
FinSubProceso

//SE COMPARA LA MATRIZ DEL JUEGO BUSQUEDA DEL TESORO PARA SABER EL RESULTADO
//recorremos la matriz Hasta Que en cierta posicion se encuentre el tesoro y si se encuentra y es la posicion ingresada por el usuario
//sale por Verdadero con un mensaje que le avisa al usuario que encontro el tesoro, sino se descuenta un intento
SubProceso comparar(mat,pos,intentos) 
	Repetir		//comparamos posicion por posicion, en busca del cero, en cada posicion de la matriz de 3x3
		Si pos ==1 y mat[0,0] == "0" entonces//se asigna la posicion que vos pones del 1 al 9, se asigna un numero para cada posicion de la matriz o sea del 1 al 9 
			mostrarMatGanadora(mat,pos);
			intentos<-3;
		SiNo			
			Si pos ==2 y mat[0,1] == "0" entonces
				mostrarMatGanadora(mat,pos);
				intentos<-3;
			SiNo				
				Si pos ==3 y mat[0,2] == "0" entonces
					mostrarMatGanadora(mat,pos);
					intentos<-3;
				SiNo
					Si pos ==4 y mat[1,0] == "0" entonces
						mostrarMatGanadora(mat,pos);
						intentos<-3;
					SiNo
						Si pos ==5 y mat[1,1] == "0" entonces
							mostrarMatGanadora(mat,pos);
							intentos<-3;
						SiNo
							Si pos ==6 y mat[1,2] == "0" entonces
								mostrarMatGanadora(mat,pos);
								intentos<-3;
							SiNo
								Si pos ==7 y mat[2,0] == "0" entonces
									mostrarMatGanadora(mat,pos);
									intentos<-3;
								SiNo									
									Si pos ==8 y mat[2,1] == "0" entonces
										mostrarMatGanadora(mat,pos);
										intentos<-3;
									SiNo
										Si pos ==9 y mat[2,2] == "0" entonces
											mostrarMatGanadora(mat,pos);
											intentos<-3;
										SiNo
											Escribir "Perdiste un intento proba de nuevo";
											Escribir "";
											Escribir "Ingresa una posicion del 1 al 9, intenta encontrar el tesoro perdido";
											leer pos;
											mientras (pos <1) o ( pos>9 ) Hacer 
												Escribir " ";
												Escribir "La opcion ingresada no es valida, por favor";
												Escribir "Ingresa una posicion del 1 al 9, intenta encontrar el tesoro perdido";
												leer pos;
											FinMientras
											intentos<-intentos+1;
											si intentos == 3 Entonces
												Escribir "¡¡ P E R D I S T E !!"; //poner un copado de perdiste 
											FinSi
										FinSi	
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Hasta Que intentos=3   
FinSubProceso

SubProceso mostrarMatGanadora(mat Por Referencia,pos Por Valor)    //muestra la matriz con el tesoro en su lugar, 
	Definir i,j Como Entero;
	Escribir "FELICIDADES, GANASTE!!, en la posicion ",pos," Esta el tesoro!!";
	
	para i<-0 Hasta 2 Con Paso 1 Hacer
		para j<-0 hasta 2 con paso 1 Hacer
			Escribir Sin Saltar "[",mat[i,j],"]"," ";
		FinPara
		Escribir " ";
	FinPara
	Escribir "";
	Escribir "   x ~~~~~~~~ x";
	Escribir "  x    1°      x";
	Escribir "  x   LUGAR    x";
	Escribir "  x  GANADOR  x";
	Escribir "   x         x";
	Escribir "    x       x";
	Escribir "     ¦     ¦";
	Escribir "     ¦     ¦";
	Escribir "    /       \";
	Escribir "   /_________\";
	Escribir "";
FinSubProceso

///Ahorcado
SubProceso recorrerPalabra(palabra,letra Por Referencia) //buscamos saber si la letra que ingresa el usuario está dentro de la palabra secreta
	Definir i Como Entero;
	Para i<-0 Hasta (Longitud(palabra)-1) con paso 1 hacer
		si Subcadena(palabra,i,i) = letra Entonces
			Escribir "la letra está en la palabra, ubicada en la posicion ", i+1; //indicamos la posicion/es en la que se encuentra la letra dentro de la palabra
			
		FinSi 
	FinPara
FinSubProceso

funcion j<-ganaste(palabra,letra)
	Definir i,j Como Entero;
	j<- 0;
	Para i<-0 Hasta (Longitud(palabra)-1) con paso 1 hacer
		si Subcadena(palabra,i,i) = letra Entonces
			j<-j+1;
		FinSi
	FinPara
FinFuncion




Funcion vof <- retorno(palabra,letra) //buscamos saber si la letra que ingresa el usuario está dentro de la palabra secreta
	Definir i,j,suma Como Entero;
	Definir vof Como Logico;
	suma <- 0;
	
	Para i<-0 Hasta (Longitud(palabra)-1) con paso 1 hacer
		j <- 0;;
		si Subcadena(palabra,i,i) = letra Entonces
			j <- 1; //esta es la parte positiva donde si encuentra la letra dos veces
			suma <- suma + j;
		FinSi 
	FinPara
	
	Si suma <> 0   Entonces //esto quiere decir que la letra esta en alguna posicion de la palabra aunque no sepamos en cual.
		vof <- verdadero;
	SiNo
		vof <- falso;
	FinSi
FinSubProceso


/////////////////////////////// PROCESO PRINCIPAL ////////////////////////////////////////////////////
Proceso juego  //aca definimos todas las variables que se usan para el juego y el menu principal 
	//Definimos variables, arreglos y matrices
	Definir num,random,pos,intentos,i,j,tipeado,moneda,a,intento,sum1,sum2 Como Entero;   
	Definir mat,palabra,letra Como Caracter;
	Definir dado1, dado2, aux como entero;
	Definir puntosj, puntosc,cont5,cont1,contE,contT,puntos,contEsc,puntosTC,puntosTJ,enter como entero;
	Definir arranca,trio,h Como Logico;
	Definir vectorD como entero;
	Dimension vectorD[5]; //son los 5 dados que se tiran
	puntosTC <- 0;  //son los puntos totales de la computadora porque es jugador vs compu
	puntosTJ <- 0;   //ountos totales del jugador
	puntosj <- 0;    //puntos jugador por ronda
	puntosc <- 0;    //idem arriba pero de la compu
	dimension mat[3,3]; //
	intentos<-0;
	moneda<-0;
	tipeado<-0;
	num<-0;
	//ciclo mientras para mostrar el menu del juego al finalizar cada partida
	//hasta presionar la opcion 4 para salir del programa
	Escribir " ";
	Escribir "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
	Escribir "~~~          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~            ~~~";
	Escribir "***   *********************************************************************************************************************************************************************************   ***";
	Escribir "***   ****              **   ****   ***         *******   *****   ****      ****   **   ****   ***      ****   ****        *****   **********   **     *****   ***          ***********   ***";
	Escribir "***   *********    *******   ****   ***   *************   *****   ****   *  ****   **   ***   ****   *  ****   ***    ***    ***   **********   **   *  ****   **   *******************   ***";
	Escribir "***   *********    *******   ****   ***   *************   *****   ****   *    **   **   **   *****   *   ***   ***   *****   ***   **********   **   *   ***   **   *******************   ***";
	Escribir "***   *********    *******          ***         *******   *****   ****   **    *   **     ********   **   **   ***   *****   ***   ***    ***   **   **    *   ***          ***********   ***";
	Escribir "***   *********    *******   ****   ***    ************   *****   ****   ***   *   **   **   *****   ***   *   ***   *****   ***   **  **  **   **   ***   *   **********    **********   ***";
	Escribir "***   *********    *******   ****   ***    ************   ***+*   ****   *****     **   ****   ***   ****      ***    ***    ***  *  ****  *    **   ****      **********    **********   ***";
	Escribir "***   *********    *******   ****   ***         *******           ****   ******    **   ******   *   *****     ****        ******    *****     ***   *****     ***          ***********   ***";
	Escribir "***   *********************************************************************************************************************************************************************************   ***";
    Escribir "~~~          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~           ~~~";
	Escribir "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
	Escribir "";
	
	Mientras (num<>5) Hacer 
	menuPrincipal(); //llamamos la funcion menuPrincipal para mostrar el menu	
	Escribir "";
	Escribir ("Elegi una de las 4 opciones o elegi 5 para salir del juego: ");
	Escribir "";
	Leer num;
		// ultilizamos el ciclo segun para que el usuario ingrese a que juego desea entrar
		segun (num) hacer
				1:
					suerte(moneda,tipeado);
					
				2:
					
					Escribir "******************************************************";
					Escribir "*                                                    *";
					Escribir "*        - Reglas:                                   *";
					Escribir "*        - Ingresa valores entre 1 y 9               *";
					Escribir "*        - Para encontrar el tesoro perdido          *";
					Escribir "*                                                    *";
					Escribir "******************************************************";
					Escribir "";
					tesoro(mat,intentos);
				3: //entra a la generala o 5 mil y te lee las reglas 
					Escribir "";
					Escribir " B I E N V E N I D O S  A L  5 M I L !!";
					Escribir "";
					Escribir "***************************************************************";
					Escribir "*                                                             *";
					Escribir "*         - Reglas:                                           *";
					Escribir "*         - Unos sueltos:20p c/u                              *";
					Escribir "*         - Cincos sueltos:10p c/u                            *";
					Escribir "*         - Cualquier terna de dados:200p                     *";
					Escribir "*         - Escalera:500p                                     *";
					Escribir "*   El primer jugador en llegar a los 1000p gana la partida   *";
					Escribir "*                                                             *"; 
					Escribir "***************************************************************";
					Escribir "";
					Escribir "Presione enter para continuar";
					Leer enter;
					Escribir "Arrojen un dado para saber quien comienza (dado mas alto)";
					Escribir "Jugador";
					dado1 <- Azar(6)+1;
					Escribir "[",dado1,"]"; //se tira un dado para ver quien empieza
					Escribir "Ordenador"; 
					dado2 <- Azar(6)+1;
					Escribir "[",dado2,"]";
					Mientras dado1 == dado2 Hacer    //primero, los puntos se acumulan particularmente por un lado la compu y a parte los del jugador, esto es para luego poder darle un valor de inicio
						Escribir "Tiren los dados nuevamente"; //esto es por si los dados que se tiraron fueron iguales, se repita y que uno solo arranque
						Escribir "Jugador";
						dado1 <- Azar(6)+1;
						Escribir "[",dado1,"]";
						Escribir "Ordenador";
						dado2 <- Azar(6)+1;
						Escribir "[",dado2,"]";
					FinMientras
					Si dado1 > dado2 Entonces  //aca ya empieza el jugador
						Escribir "Arranca el jugador";
						arranca <- Verdadero;    //el jugador arroja los dados
					SiNo
						Escribir "Arranca el ordenador";  //compu
						arranca <- Falso;
					FinSi
					Escribir "Presione enter para continuar";
					Leer enter;   //este es una entrada de informacion vacia, que funciona para crear un espacio y pausar el programa, porque sino juega "solo" 
					Si arranca == Verdadero Entonces    //arroja los dados el jugador y el ciclo para rellena el vector para "tirar los dados", entonces cada posicion del vectorD se le asigna un valor al azar del 1 al 6, caras de los dados
						Escribir "Jugador arroja los dados";  
						para i <- 0 Hasta 4 con paso 1 Hacer
							vectorD[i] <- Azar(6)+1;
						FinPara
						//ORDENAMIENTO
						para i <-0 Hasta 3 con paso 1 Hacer   //se fija que tiene el vectorD en la posicion j, busca ordenar los numeros del dado de menor a mayor, para saber la escalera
							para j<-0 hasta 3 con paso 1 Hacer
								si vectorD[j]>vectorD[j+1] Entonces
									aux <- vectorD[j];
									vectorD[j]<-vectorD[j+1];
									vectorD[j+1]<- aux;
								FinSi
							FinPara
						FinPara
						para i <- 0 Hasta 4 con paso 1 Hacer //muestra lo que tienen los dados 
							Escribir Sin Saltar "[",vectorD[i],"]";
						FinPara
						Escribir "";
						cont5 <- 0; //esto es para contar la cantidad de 5, 1, ternas y escaleras que te salieron, para  ir sabiendo lo que te sale en la ronda
						cont1 <- 0;
						contT <- 0;
						trio <- Falso;
						contEsc <- 0;
						contE <- 0;
						para i <- 0 hasta 4 con paso 1 Hacer 
							Si vectorD[i] == 5 Entonces
								cont5 <- cont5 +1;
							FinSi
							Si vectorD[i] == 1 Entonces
								cont1 <- cont1 +1;    //este es el contador, donde va sumando la cantidad de ese puntaje que salio, porque los 5 y los 1 se cuentan a parte 
							FinSi
						FinPara
						si cont5 <> 0 Entonces  //si la cantidad de 5 es distinta a 0 te muestra cuantos encontraste
							Escribir cont5," cincos!";
						FinSi
						si cont1 <> 0 Entonces
							Escribir cont1," unos!";
						FinSi
						para i <-0 Hasta 2 con paso 1 Hacer
							si vectorD[i]==vectorD[i+1] y vectorD[i+1]==vectorD[i+2] Entonces  //verifica si hay 3 dados del mismo valor para la pierna (pierna=3 dados iguales)
								trio <- Verdadero; //entonces si hubo un trio, se empiezan a contar, como son 5 dados solo puede haber un dado, por eso a ese contador solo se le asigna un uno, y no se suma
							FinSi
							si trio == Verdadero Entonces
								contT <- 1; //este es el contador
							FinSi
						FinPara
						si contT == 1 Entonces //si te dio una terna/pierna, entonces es una terna
							Escribir "Terna!";
						FinSi
						para i<-0 hasta 3 con paso 1 Hacer //este es un ciclo de control, donde el vectorD en la posicion 1 es igual al vector + una posicion, para saber si esta formado en escalera, si tenes un numero, por ej una 1 en la posicion i, te tiene que dar el siguiente, en el dado y en la posicion 
							si vectorD[i]+1 ==vectorD[i+1] Entonces //te suma un dado y una posicion, porque un 1 esta fuera del [] y el otro dentro. 
								contEsc <- contEsc +1; 
							FinSi
						FinPara
						si contEsc ==4 Entonces //si eso se cumple, se va sumando un contador y te da la escalera
							Escribir "Escalera!";
							contE <- 1;
						FinSi
						puntosj <- ((cont5 * 10)+(cont1*20)+(contT*200)+(contE*500)); //aca se muestran los puntos acumulados hasta el momento 
						Escribir puntosj," puntos";
					SiNo
						Escribir "Ordenador arroja los dados"; //ahora, se hace lo mismo para la computadora
						para i <- 0 Hasta 4 con paso 1 Hacer
							vectorD[i] <- Azar(6)+1;
						FinPara
						para i <-0 Hasta 3 con paso 1 Hacer
							para j<-0 hasta 3 con paso 1 Hacer
								si vectorD[j]>vectorD[j+1] Entonces
									aux <- vectorD[j];
									vectorD[j]<-vectorD[j+1];
									vectorD[j+1]<- aux;
								FinSi
							FinPara
						FinPara
						para i <- 0 Hasta 4 con paso 1 Hacer
							Escribir Sin Saltar "[",vectorD[i],"]";
						FinPara
						Escribir "";
						cont5 <- 0;
						cont1 <- 0;
						contT <- 0;
						trio <- Falso;
						contEsc <- 0;
						contE <- 0;
						para i <- 0 hasta 4 con paso 1 Hacer
							Si vectorD[i] == 5 Entonces
								cont5 <- cont5 +1;
							FinSi
							Si vectorD[i] == 1 Entonces
								cont1 <- cont1 +1;
							FinSi
						FinPara
						si cont5 <> 0 Entonces
							Escribir cont5," cincos!";
						FinSi
						si cont1 <> 0 Entonces
							Escribir cont1," unos!";
						FinSi
						para i <-0 Hasta 2 con paso 1 Hacer
							si vectorD[i]==vectorD[i+1] y vectorD[i+1]==vectorD[i+2] Entonces
								trio <- Verdadero;
							FinSi
							si trio == Verdadero Entonces
								contT <- 1;
							FinSi
						FinPara
						si contT == 1 Entonces
							Escribir "Terna!";
						FinSi
						para i<-0 hasta 3 con paso 1 Hacer
							si vectorD[i]+1 ==vectorD[i+1] Entonces
								contEsc <- contEsc +1;
							FinSi
						FinPara
						si contEsc ==4 Entonces
							Escribir "Escalera!";
							contE <- 1;
						FinSi
						puntosc <- ((cont5 * 10)+(cont1*20)+(contT*200)+(contE*500)); //puntos de la computadora
						Escribir puntosc," puntos";
					FinSi
					si arranca	==	Verdadero Entonces //se realiza el mismo proceso, pero en el caso que la computadora hubiese arrojado el dado mas grande desde un principio
						Escribir "Ordenador arroja los dados";
						para i <- 0 Hasta 4 con paso 1 Hacer
							vectorD[i] <- Azar(6)+1;
						FinPara
						para i <-0 Hasta 3 con paso 1 Hacer
							para j<-0 hasta 3 con paso 1 Hacer
								si vectorD[j]>vectorD[j+1] Entonces
									aux <- vectorD[j];
									vectorD[j]<-vectorD[j+1];
									vectorD[j+1]<- aux;
								FinSi
							FinPara
						FinPara
						para i <- 0 Hasta 4 con paso 1 Hacer
							Escribir Sin Saltar "[",vectorD[i],"]";
						FinPara
						Escribir "";
						cont5 <- 0;
						cont1 <- 0;
						contT <- 0;
						trio <- Falso;
						contEsc <- 0;
						contE <- 0;
						para i <- 0 hasta 4 con paso 1 Hacer
							Si vectorD[i] == 5 Entonces
								cont5 <- cont5 +1;
							FinSi
							Si vectorD[i] == 1 Entonces
								cont1 <- cont1 +1;
							FinSi
						FinPara
						si cont5 <> 0 Entonces
							Escribir cont5," cincos!";
						FinSi
						si cont1 <> 0 Entonces
							Escribir cont1," unos!";
						FinSi
						para i <-0 Hasta 2 con paso 1 Hacer
							si vectorD[i]==vectorD[i+1] y vectorD[i+1]==vectorD[i+2] Entonces
								trio <- Verdadero;
							FinSi
							si trio == Verdadero Entonces
								contT <- 1;
							FinSi
						FinPara
						si contT == 1 Entonces
							Escribir "Terna!";
						FinSi
						para i<-0 hasta 3 con paso 1 Hacer
							si vectorD[i]+1 ==vectorD[i+1] Entonces
								contEsc <- contEsc +1;
							FinSi
						FinPara
						si contEsc ==4 Entonces
							Escribir "Escalera!";
							contE <- 1;
						FinSi
						puntosc <- ((cont5 * 10)+(cont1*20)+(contT*200)+(contE*500));
						Escribir puntosc," puntos";
					SiNo
						Escribir "Jugador arroja los dados";
						para i <- 0 Hasta 4 con paso 1 Hacer
							vectorD[i] <- Azar(6)+1;
						FinPara
						para i <-0 Hasta 3 con paso 1 Hacer
							para j<-0 hasta 3 con paso 1 Hacer
								si vectorD[j]>vectorD[j+1] Entonces
									aux <- vectorD[j];
									vectorD[j]<-vectorD[j+1];
									vectorD[j+1]<- aux;
								FinSi
							FinPara
						FinPara
						para i <- 0 Hasta 4 con paso 1 Hacer
							Escribir Sin Saltar "[",vectorD[i],"]";
						FinPara
						Escribir "";
						cont5 <- 0;
						cont1 <- 0;
						contT <- 0;
						trio <- Falso;
						contEsc <- 0;
						contE <- 0;
						para i <- 0 hasta 4 con paso 1 Hacer
							Si vectorD[i] == 5 Entonces
								cont5 <- cont5 +1;
							FinSi
							Si vectorD[i] == 1 Entonces
								cont1 <- cont1 +1;
							FinSi
						FinPara
						si cont5 <> 0 Entonces
							Escribir cont5," cincos!";
						FinSi
						si cont1 <> 0 Entonces
							Escribir cont1," unos!";
						FinSi
						para i <-0 Hasta 2 con paso 1 Hacer
							si vectorD[i]==vectorD[i+1] y vectorD[i+1]==vectorD[i+2] Entonces
								trio <- Verdadero;
							FinSi
							si trio == Verdadero Entonces
								contT <- 1;
							FinSi
						FinPara
						si contT == 1 Entonces
							Escribir "Terna!";
						FinSi
						para i<-0 hasta 3 con paso 1 Hacer
							si vectorD[i]+1 ==vectorD[i+1] Entonces
								contEsc <- contEsc +1;
							FinSi
						FinPara
						si contEsc ==4 Entonces
							Escribir "Escalera!";
							contE <- 1;
						FinSi
						puntosj <- ((cont5 * 10)+(cont1*20)+(contT*200)+(contE*500));
						Escribir puntosj," puntos";
					FinSi
					puntosTJ<- puntosTJ + puntosj;
					Escribir "El jugador lleva: ",puntosTJ," puntos"; //se muestran los puntos del jugador
					puntosTC <- puntosTC + puntosc;
					Escribir "El ordenador lleva:",puntosTC," puntos"; //se muestran los puntos de la computadora 
					Repetir  
						Escribir "Presione enter para avanzar a la siguiente ronda";  //el repetir se rompe cuando o la compu o el jugador llega a los 1000 puntos
						Leer enter;
						Si arranca == Verdadero Entonces
							Escribir "Jugador arroja los dados";
							para i <- 0 Hasta 4 con paso 1 Hacer
								vectorD[i] <- Azar(6)+1;
							FinPara
							para i <-0 Hasta 3 con paso 1 Hacer
								para j<-0 hasta 3 con paso 1 Hacer
									si vectorD[j]>vectorD[j+1] Entonces
										aux <- vectorD[j];
										vectorD[j]<-vectorD[j+1];
										vectorD[j+1]<- aux;
									FinSi
								FinPara
							FinPara
							para i <- 0 Hasta 4 con paso 1 Hacer
								Escribir Sin Saltar "[",vectorD[i],"]";
							FinPara
							Escribir "";
							cont5 <- 0;
							cont1 <- 0;
							contT <- 0;
							trio <- Falso;
							contEsc <- 0;
							contE <- 0;
							para i <- 0 hasta 4 con paso 1 Hacer
								Si vectorD[i] == 5 Entonces
									cont5 <- cont5 +1;
								FinSi
								Si vectorD[i] == 1 Entonces
									cont1 <- cont1 +1;
								FinSi
							FinPara
							si cont5 <> 0 Entonces
								Escribir cont5," cincos!";
							FinSi
							si cont1 <> 0 Entonces
								Escribir cont1," unos!";
							FinSi
							para i <-0 Hasta 2 con paso 1 Hacer
								si vectorD[i]==vectorD[i+1] y vectorD[i+1]==vectorD[i+2] Entonces
									trio <- Verdadero;
								FinSi
								si trio == Verdadero Entonces
									contT <- 1;
								FinSi
							FinPara
							si contT == 1 Entonces
								Escribir "Terna!";
							FinSi
							para i<-0 hasta 3 con paso 1 Hacer
								si vectorD[i]+1 ==vectorD[i+1] Entonces
									contEsc <- contEsc +1;
								FinSi
							FinPara
							si contEsc ==4 Entonces
								Escribir "Escalera!";
								contE <- 1;
							FinSi
							puntosj <- ((cont5 * 10)+(cont1*20)+(contT*200)+(contE*500));
							Escribir puntosj," puntos";
						SiNo
							Escribir "Ordenador arroja los dados";
							para i <- 0 Hasta 4 con paso 1 Hacer
								vectorD[i] <- Azar(6)+1;
							FinPara
							para i <-0 Hasta 3 con paso 1 Hacer
								para j<-0 hasta 3 con paso 1 Hacer
									si vectorD[j]>vectorD[j+1] Entonces
										aux <- vectorD[j];
										vectorD[j]<-vectorD[j+1];
										vectorD[j+1]<- aux;
									FinSi
								FinPara
							FinPara
							para i <- 0 Hasta 4 con paso 1 Hacer
								Escribir Sin Saltar "[",vectorD[i],"]";
							FinPara
							Escribir "";
							cont5 <- 0;
							cont1 <- 0;
							contT <- 0;
							trio <- Falso;
							contEsc <- 0;
							contE <- 0;
							para i <- 0 hasta 4 con paso 1 Hacer
								Si vectorD[i] == 5 Entonces
									cont5 <- cont5 +1;
								FinSi
								Si vectorD[i] == 1 Entonces
									cont1 <- cont1 +1;
								FinSi
							FinPara
							si cont5 <> 0 Entonces
								Escribir cont5," cincos!";
							FinSi
							si cont1 <> 0 Entonces
								Escribir cont1," unos!";
							FinSi
							para i <-0 Hasta 2 con paso 1 Hacer
								si vectorD[i]==vectorD[i+1] y vectorD[i+1]==vectorD[i+2] Entonces
									trio <- Verdadero;
								FinSi
								si trio == Verdadero Entonces
									contT <- 1;
								FinSi
							FinPara
							si contT == 1 Entonces
								Escribir "Terna!";
							FinSi
							para i<-0 hasta 3 con paso 1 Hacer
								si vectorD[i]+1 ==vectorD[i+1] Entonces
									contEsc <- contEsc +1;
								FinSi
							FinPara
							si contEsc ==4 Entonces
								Escribir "Escalera!";
								contE <- 1;
							FinSi
							puntosc <- ((cont5 * 10)+(cont1*20)+(contT*200)+(contE*500));
							Escribir puntosc," puntos";
						FinSi
						si arranca	==	Verdadero Entonces
							Escribir "Ordenador arroja los dados";
							para i <- 0 Hasta 4 con paso 1 Hacer
								vectorD[i] <- Azar(6)+1;
							FinPara
							para i <-0 Hasta 3 con paso 1 Hacer
								para j<-0 hasta 3 con paso 1 Hacer
									si vectorD[j]>vectorD[j+1] Entonces
										aux <- vectorD[j];
										vectorD[j]<-vectorD[j+1];
										vectorD[j+1]<- aux;
									FinSi
								FinPara
							FinPara
							para i <- 0 Hasta 4 con paso 1 Hacer
								Escribir Sin Saltar "[",vectorD[i],"]";
							FinPara
							Escribir "";
							cont5 <- 0;
							cont1 <- 0;
							contT <- 0;
							trio <- Falso;
							contEsc <- 0;
							contE <- 0;
							para i <- 0 hasta 4 con paso 1 Hacer
								Si vectorD[i] == 5 Entonces
									cont5 <- cont5 +1;
								FinSi
								Si vectorD[i] == 1 Entonces
									cont1 <- cont1 +1;
								FinSi
							FinPara
							si cont5 <> 0 Entonces
								Escribir cont5," cincos!";
							FinSi
							si cont1 <> 0 Entonces
								Escribir cont1," unos!";
							FinSi
							para i <-0 Hasta 2 con paso 1 Hacer
								si vectorD[i]==vectorD[i+1] y vectorD[i+1]==vectorD[i+2] Entonces
									trio <- Verdadero;
								FinSi
								si trio == Verdadero Entonces
									contT <- 1;
								FinSi
							FinPara
							si contT == 1 Entonces
								Escribir "Terna!";
							FinSi
							para i<-0 hasta 3 con paso 1 Hacer
								si vectorD[i]+1 ==vectorD[i+1] Entonces
									contEsc <- contEsc +1;
								FinSi
							FinPara
							si contEsc ==4 Entonces
								Escribir "Escalera!";
								contE <- 1;
							FinSi
							puntosc <- ((cont5 * 10)+(cont1*20)+(contT*200)+(contE*500));
							Escribir puntosc," puntos";
						SiNo
							Escribir "Jugador arroja los dados";
							para i <- 0 Hasta 4 con paso 1 Hacer
								vectorD[i] <- Azar(6)+1;
							FinPara
							para i <-0 Hasta 3 con paso 1 Hacer
								para j<-0 hasta 3 con paso 1 Hacer
									si vectorD[j]>vectorD[j+1] Entonces
										aux <- vectorD[j];
										vectorD[j]<-vectorD[j+1];
										vectorD[j+1]<- aux;
									FinSi
								FinPara
							FinPara
							para i <- 0 Hasta 4 con paso 1 Hacer
								Escribir Sin Saltar "[",vectorD[i],"]";
							FinPara
							Escribir "";
							cont5 <- 0;
							cont1 <- 0;
							contT <- 0;
							trio <- Falso;
							contEsc <- 0;
							contE <- 0;
							para i <- 0 hasta 4 con paso 1 Hacer
								Si vectorD[i] == 5 Entonces
									cont5 <- cont5 +1;
								FinSi
								Si vectorD[i] == 1 Entonces
									cont1 <- cont1 +1;
								FinSi
							FinPara
							si cont5 <> 0 Entonces
								Escribir cont5," cincos!";
							FinSi
							si cont1 <> 0 Entonces
								Escribir cont1," unos!";
							FinSi
							para i <-0 Hasta 2 con paso 1 Hacer
								si vectorD[i]==vectorD[i+1] y vectorD[i+1]==vectorD[i+2] Entonces
									trio <- Verdadero;
								FinSi
								si trio == Verdadero Entonces
									contT <- 1;
								FinSi
							FinPara
							si contT == 1 Entonces
								Escribir "Terna!";
							FinSi
							para i<-0 hasta 3 con paso 1 Hacer
								si vectorD[i]+1 ==vectorD[i+1] Entonces
									contEsc <- contEsc +1;
								FinSi
							FinPara
							si contEsc ==4 Entonces
								Escribir "Escalera!";
								contE <- 1;
							FinSi
							puntosj <- ((cont5 * 10)+(cont1*20)+(contT*200)+(contE*500));
							Escribir puntosj," puntos";
						FinSi
						puntosTJ<- puntosTJ + puntosj;
						Escribir "El jugador lleva: ",puntosTJ," puntos";
						puntosTC <- puntosTC + puntosc;
						Escribir "El ordenador lleva: ",puntosTC," puntos";
					Hasta Que PuntosTC >= 1000 o PuntosTJ >= 1000 
					Si PuntosTC > PuntosTJ Entonces
						Escribir "El ordenador es el ganador! con un total de: ",PuntosTC," puntos";
						
					SiNo
						Escribir "El jugador es el ganador! con un total de: ",PuntosTJ," puntos";
						Escribir "";
						Escribir "   x ~~~~~~~~ x";
						Escribir "  x    1°      x";
						Escribir "  x   LUGAR    x";
						Escribir "  x  GANADOR  x";
						Escribir "   x         x";
						Escribir "    x       x";
						Escribir "     ¦     ¦";
						Escribir "     ¦     ¦";
						Escribir "    /       \";
						Escribir "   /_________\";
						Escribir "";
					FinSi
				4:
					a <- 6; //la variable a es la vida
					Escribir "";
					Escribir " B I E N V E N I D O S  A L  J U E G O  D E L  A H O R C A D O!!";
					Escribir "";
					Escribir "*****************************************************************************";
					Escribir "*                                                                           *";
					Escribir "*  Tus vidas dependeran del destino.....                                    *";
					Escribir "*  Debes adivinar la palabra secreta, de lo contrario iras perdiendo vidas  *";
					Escribir "*  Tenes 4 intentos, aprovechalos!!                                         *";
					Escribir "*                                                                           *";
					Escribir "*****************************************************************************";
					Escribir "";
					Escribir "  Escribí una palabra para que tu amigo la adivine"; //le pedumos al usuario que ingrese una palabra para que el otro adivine
					Escribir "";
					leer palabra;
					Escribir" _/\/\_____  ";
					Escribir " =======    ";
					Escribir " *** o o    ";
					Escribir " =======    ";
					Escribir "	   =       ";  //tipito caminando
					Escribir "  ===      ";
					Escribir "=  =  ===/  ";
					Escribir "	   =       ";
					Escribir "	   =       ";
					Escribir "	 =   =     ";
					Escribir"===	  ===";
					
					
					
					Escribir"                            _/\/\_____  ";
					Escribir "                            =======    ";
					Escribir "                            *** o o    ";
					Escribir "                            =======    ";
					Escribir "                               =       ";
					Escribir "                              ===      ";
					Escribir "                            =  =  ===/  ";
					Escribir "                               =       ";
					Escribir "                               =       ";
					Escribir "                             =   =     ";
					Escribir "                            ===	  ===";
					
					
					
					escribir"                                                              _/\/\_____  ";
					Escribir "                                                              =======    ";
					Escribir "                                                              *** o o    ";
					Escribir "                                                              =======    ";
					Escribir "                                                                 =       ";
					Escribir "                                                                ===      ";
					Escribir "                                                              =  =  ===/  ";
					Escribir "                                                                 =       ";
					Escribir "                                                                 =       ";
					Escribir "                                                               =   =     ";
					Escribir "                                                              ===	  ===";
					Escribir " ";
					Escribir " ";
					Escribir " ";
					Escribir " ";
					Escribir " ";
					Escribir "Ahora empecemos a adivinar la palabra!!";
					Escribir "La palabra tiene ", Longitud(palabra), " letras";
					sum2 <-0;
					Repetir
						Escribir "Ingresá una letra";
						leer letra;
						Escribir "";
						h <- falso; //la variable h es para descontar las vidas 
						
						
						recorrerPalabra(palabra,letra); //subproceso1
						
						h <- retorno(palabra,letra);
						
						Si h == falso Entonces
							a <- a - 1; 
						SiNo
							a <- a; 
						FinSi
						Escribir "";
						sum1 <- ganaste(palabra,letra);
						sum2 <- sum2 + sum1; //Acumulador
						si sum2 == Longitud(palabra) y a<>1 Entonces
							Escribir "  G A N A S T E !! FELICITACIONES!! ";
							a<-0;
							Escribir "   x ~~~~~~~~ x";
							Escribir "  x    1°      x";
							Escribir "  x   LUGAR    x";
							Escribir "  x  GANADOR  x";
							Escribir "   x         x";
							Escribir "    x       x";
							Escribir "     ¦     ¦";
							Escribir "     ¦     ¦";
							Escribir "    /       \";
							Escribir "   /_________\";
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
							Escribir "";
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
							Escribir "";
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
							Escribir "";
							Si a = 2 Entonces
								Escribir "==========";
								Escribir "+---+";
								Escribir "|   |";
								Escribir "|   O";
								Escribir "|  /|\";
								Escribir "|";
								Escribir "|";
								Escribir "==========";
								Escribir "Te queda 1 intento !!!!";
							FinSi
							Escribir "";
							Si a = 1 Entonces
								Escribir "==========";
								Escribir "+---+";
								Escribir "|   |";
								Escribir "|   O";
								Escribir "|  /|\";
								Escribir "|  / \";
								Escribir "|";
								Escribir "==========";
								Escribir "";
								Escribir "ESTAS AHORCADO";
								Escribir "P E R D I S T E !!!!";
								Escribir "";
								Escribir "La palabra secreta era: ", palabra;
								Escribir "";
							FinSi
							si a = 0 Entonces
								Escribir "";
							FinSi
					Hasta Que a=1 o a=0
						
					
				
				
		FinSegun
	FinMientras
	Escribir "";
	escribir ("Gracias por jugar! Vuelva pronto!");
	Escribir " ";
FinProceso
// SE AGREGA AL FINAL DEL PROYECTO LA DIRECCION DEL REPOSITORIO EN GITHUB
// https://github.com/JuanBelich/Integrador_UTN/tree/master



