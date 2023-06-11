//MOSTRAMOS LA INTERFAZ DE INICIO DEL MENU DE JUEGOS
Funcion menuPrincipal()
	Escribir " ";
    Escribir ("Bienvenidos a la Juegoteca!");
    Escribir ("Elegi como queres perder tu tiempo");
    Escribir ("1- Suerte");
	Escribir ("2- Busqueda del Tesoro");
	Escribir ("3- 5mil");
	Escribir ("4- Salir");
FinFuncion
///SubProceso PARA JUEGO DE SUERTE CARA/CRUZ
SubProceso suerte(moneda,tipeado Por Valor)
	Definir num,cara Como Entero;
	Escribir ("Elegi: 1=Cara o 2=Cruz");
	Leer  tipeado;
	mientras (tipeado <> 1) y (tipeado <> 2) Hacer
		Escribir ("Opcion no valida por favor elegi de nuevo");
		Escribir ("Elegi: 1=Cara o 2=Cruz");
		Leer  tipeado;
	FinMientras
	cara<-azar(1);
	si cara==0 Entonces
		moneda<-1;
	SiNo
		si cara==1 Entonces
			moneda<-2;
		FinSi
		moneda<-2;
	FinSi
	si moneda==1 Entonces
		Escribir "El resulrado del azar es: Cara";
	SiNo
		si  moneda==2 Entonces
			Escribir "El resulrado del azar es: Cruz";
		FinSi
	FinSi
	si moneda==tipeado Entonces
		Escribir ("Felicidades ganaste!!!");
		num<-4;
	sino		
		Escribir ("Perdiste! Proba de nuevo");
		num<-4;
	FinSi
FinSubProceso

///Juego Busqueda del tesoro
//ASIGNAR "0" (TESORO) A UNA POSICION ALEATORIA USANDO LA FUNCION AZAR() 
SubProceso llenarMat(mat Por Referencia)
	mat[azar(3),azar(3)]<-"0";
FinSubProceso
//SE MUERTRA LA MATRIZ AL FINAL DEL JUEGO GANADO
SubProceso mostrarMatGanadora(mat Por Referencia,pos Por Valor)
	Definir i,j Como Entero;
	Escribir "Felicidades Ganaste!!, en la posicion ",pos," Esta el tesoro!!";
	para i<-0 Hasta 2 Con Paso 1 Hacer
		para j<-0 hasta 2 con paso 1 Hacer
			Escribir Sin Saltar "[",mat[i,j],"]"," ";
		FinPara
		Escribir " ";
	FinPara
FinSubProceso
//SE COMPARA LA MATRIZ DEL JUEGO BUSQUEDA DEL TESORO PARA SABER EL RESULTADO
SubProceso comparar(mat,pos,intentos)
	Repetir		
		Si pos ==1 y mat[0,0] == "0" entonces
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
											
											Escribir "Ingresa una posicion del 1 al 9, intenta encontrar el tesoro perdido";
											leer pos;
											mientras (pos <1) o ( pos>9 ) Hacer
												Escribir " ";
												Escribir "La opcion ingresada no es valida, por favor";
												Escribir "Ingresa una posicion del 1 al 9, intenta encontrar el tesoro perdido";
												leer pos;
											FinMientras
											intentos<-intentos+1;
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

//Encabezado del juego
SubProceso tesoro(mat,intentos)
	Definir i,j,pos,posTablero como entero;
	posTablero<-1;
	Escribir "Busqueda Del Tesoro";
	Escribir "Tenes 4 intentos!";
	//Cargar la matriz con " " y el tesoro en una posicion aleatoria
	para i<-0 Hasta 2 Con Paso 1 Hacer
		para j<-0 hasta 2 con paso 1 Hacer
			mat[i,j]<-" ";
		FinPara
	FinPara
	llenarMat(mat);
	//Mostrar el tablero con las opciones de pósicion
	para i<-0 Hasta 2 Con Paso 1 Hacer
		para j<-0 hasta 2 con paso 1 Hacer
			Escribir Sin Saltar "[",posTablero,"]"," ";
			posTablero<-posTablero+1;
		FinPara
		Escribir " ";
	FinPara
	Escribir "Ingresa una posicion del 1 al 9, intenta encontrar el tesoro perdido";
	leer pos;
	//control de datos ingresados entre 1 y 9
	mientras (pos <1) o ( pos>9 ) Hacer
		Escribir " ";
		Escribir "La opcion ingresada no es valida, por favor";
		Escribir "Ingresa una posicion del 1 al 9, intenta encontrar el tesoro perdido";
		leer pos;
	FinMientras
	
	//Comparamos si hay 0 o " " en la posicion ingresada y mostramos la matriz si pos="0"
	comparar(mat,pos,intentos);	
FinSubProceso
///Funciones 5mil


/////////////////////////////// PROCESO PRINCIPAL ////////////////////////////////////////////////////
Proceso juego
	Definir num,random,pos,intentos,i,j,tipeado,moneda Como Entero;
	Definir mat Como Caracter;
	
	Definir dado1, dado2, aux como entero;
	Definir puntosj, puntosc,cont5,cont1,contE,contT,puntos,contEsc,puntosTC,puntosTJ,enter como entero;
	Definir arranca,trio Como Logico;
	Definir vectorD como entero;
	Dimension vectorD[5];
	puntosTC <- 0;
	puntosTJ <- 0;
	puntosj <- 0;
	puntosc <- 0;
	dimension mat[3,3];
	intentos<-0;
	moneda<-0;
	tipeado<-0;
	num<-0;
	Mientras (num<>4) Hacer
	menuPrincipal();	
	Escribir ("Elegi una de las 3 opciones o elegi 4 para salir del juego: ");
	Leer num;
		segun (num) hacer
				1:
					suerte(moneda,tipeado);
					
				2:
					
					Escribir "**********************************************************";
					Escribir "Reglas:";
					Escribir "Ingresa valores entre 1 y 9";
					Escribir "para encontrar el tesoro perdido";
					Escribir "**********************************************************";
					Escribir "";
					tesoro(mat,intentos);
				3:
					
					Escribir "**********************************************************";
					Escribir "*Reglas:                                                 *";
					Escribir "*Unos sueltos:20p c/u                                    *";
					Escribir "*Cincos sueltos:10p c/u                                  *";
					Escribir "*Cualquier terna de dados:200p                           *";
					Escribir "*Escalera:500p                                           *";
					Escribir "*El primer jugador en llegar a los 1000p gana la partida *";
					Escribir "**********************************************************";
					Escribir "";
					Escribir "Presione enter para continuar";
					Leer enter;
					Escribir "Arrojen un dado para saber quien comienza (dado mas alto)";
					Escribir "Jugador";
					dado1 <- Azar(6)+1;
					Escribir "[",dado1,"]";
					Escribir "Ordenador";
					dado2 <- Azar(6)+1;
					Escribir "[",dado2,"]";
					Mientras dado1 == dado2 Hacer
						Escribir "Tiren los dados nuevamente";
						Escribir "Jugador";
						dado1 <- Azar(6)+1;
						Escribir "[",dado1,"]";
						Escribir "Ordenador";
						dado2 <- Azar(6)+1;
						Escribir "[",dado2,"]";
					FinMientras
					Si dado1 > dado2 Entonces
						Escribir "Arranca el jugador";
						arranca <- Verdadero;
					SiNo
						Escribir "Arranca el ordenador";
						arranca <- Falso;
					FinSi
					Escribir "Presione enter para continuar";
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
					Escribir "El ordenador lleva:",puntosTC," puntos";
					Repetir
						Escribir "Presione enter para avanzar a la siguiente ronda";
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
						
					FinSi
				
				
		FinSegun
	FinMientras
	escribir ("Gracias por jugar! Vuelva pronto!");
	Escribir " ";
FinProceso

