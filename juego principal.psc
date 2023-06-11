Funcion cuadrados()
    Escribir ("--------   --------   --------");
    Escribir ("|  1   |   |   2   |  |  3   |");
    Escribir ("--------   --------   --------");
FinFuncion

Proceso juego
	Definir num,cara,random,mat,pos,intentos,i,j Como Entero;
	Definir moneda,tipeado Como Caracter;
	dimension mat[3,3];
	intentos<-0;
	cuadrados();	
	Escribir ("Elegi una de las 3 opciones o elegi 4 para salir del juego: ");
	Leer num;
	Mientras (num<>4) Hacer
		segun (num) hacer
				1:
					Escribir ("Elegi: Cara o Cruz");
					Leer tipeado;
					cara<-azar(1);
					si cara==0 Entonces
						moneda<-"cara";
					SiNo
						moneda<-"cruz";
					FinSi
					si moneda==tipeado Entonces
						Escribir ("Felicidades ganaste!!!");
						num<-4;
						
					sino		
						Escribir ("Estas al horno volve a empezar");
						num<-4;
					FinSi
				2:
					Escribir "****BuscaUnos**** ";
					Escribir "Tenes 3 intentos!";
					
					//Cargar la matriz con 0 y en posiciones aleatorias con 1
					para i<-0 Hasta 2 Con Paso 1 Hacer
						para j<-0 hasta 2 con paso 1 Hacer
							mat[i,j]<-0;
						FinPara
					FinPara
					mat[azar(3),azar(3)]<-1;
					mat[azar(3),azar(3)]<-1;
					mat[azar(3),azar(3)]<-1;
					mat[azar(3),azar(3)]<-1;
					
					//Mostrar el tablero con las opciones de pósicion
					para i<-0 Hasta 2 Con Paso 1 Hacer
						para j<-0 hasta 2 con paso 1 Hacer
							Escribir Sin Saltar "[","*","]"," ";
							
						FinPara
						Escribir " ";
					FinPara
					Escribir "Ingresa una posicion del 1 al 9 y reza que sea distinta a -1-";
					leer pos;
					
					//Comparamos si hay 0 o 1 en la posicion ingresada y mostramos la matriz si pos=0
					repetir
						Si pos ==1 y mat[0,0] == 0 entonces
							Escribir "Felicidades Ganaste!!, en la posicion ",pos," hay un 0!";
							para i<-0 Hasta 2 Con Paso 1 Hacer
								para j<-0 hasta 2 con paso 1 Hacer
									Escribir Sin Saltar "[",mat[i,j],"]"," ";
								FinPara
								Escribir " ";
							FinPara
							intentos<-3;
							Si pos ==2 y mat[0,1] == 0 entonces
								Escribir "Felicidades Ganaste!!, en la posicion ",pos," hay un 0!";
								para i<-0 Hasta 2 Con Paso 1 Hacer
									para j<-0 hasta 2 con paso 1 Hacer
										Escribir Sin Saltar "[",mat[i,j],"]"," ";
									FinPara
									Escribir " ";
								FinPara
								intentos<-3;
								Si pos ==3 y mat[0,2] == 0 entonces
									Escribir "Felicidades Ganaste!!, en la posicion ",pos," hay un 0!";
									para i<-0 Hasta 2 Con Paso 1 Hacer
										para j<-0 hasta 2 con paso 1 Hacer
											Escribir Sin Saltar "[",mat[i,j],"]"," ";
										FinPara
										Escribir " ";
									FinPara
									intentos<-3;
									Si pos ==4 y mat[1,0] == 0 entonces
										Escribir "Felicidades Ganaste!!, en la posicion ",pos," hay un 0!";
										para i<-0 Hasta 2 Con Paso 1 Hacer
											para j<-0 hasta 2 con paso 1 Hacer
												Escribir Sin Saltar "[",mat[i,j],"]"," ";
											FinPara
											Escribir " ";
										FinPara
										intentos<-3;
										Si pos ==5 y mat[1,1] == 0 entonces
											Escribir "Felicidades Ganaste!!, en la posicion ",pos," hay un 0!";
											para i<-0 Hasta 2 Con Paso 1 Hacer
												para j<-0 hasta 2 con paso 1 Hacer
													Escribir Sin Saltar "[",mat[i,j],"]"," ";
												FinPara
												Escribir " ";
											FinPara
											intentos<-3;
											Si pos ==6 y mat[1,2] == 0 entonces
												Escribir "Felicidades Ganaste!!, en la posicion ",pos," hay un 0!";
												para i<-0 Hasta 2 Con Paso 1 Hacer
													para j<-0 hasta 2 con paso 1 Hacer
														Escribir Sin Saltar "[",mat[i,j],"]"," ";
													FinPara
													Escribir " ";
												FinPara
												intentos<-3;
												Si pos ==7 y mat[2,0] == 0 entonces
													Escribir "Felicidades Ganaste!!, en la posicion ",pos," hay un 0!";
													para i<-0 Hasta 2 Con Paso 1 Hacer
														para j<-0 hasta 2 con paso 1 Hacer
															Escribir Sin Saltar "[",mat[i,j],"]"," ";
														FinPara
														Escribir " ";
													FinPara
													intentos<-3;
													Si pos ==8 y mat[2,1] == 0 entonces
														Escribir "Felicidades Ganaste!!, en la posicion ",pos," hay un 0!";
														para i<-0 Hasta 2 Con Paso 1 Hacer
															para j<-0 hasta 2 con paso 1 Hacer
																Escribir Sin Saltar "[",mat[i,j],"]"," ";
															FinPara
															Escribir " ";
														FinPara
														intentos<-3;
														Si pos ==9 y mat[2,2] == 0 entonces
															Escribir "Felicidades Ganaste!!, en la posicion ",pos," hay un 0!";
															para i<-0 Hasta 2 Con Paso 1 Hacer
																para j<-0 hasta 2 con paso 1 Hacer
																	Escribir Sin Saltar "[",mat[i,j],"]"," ";
																FinPara
																Escribir " ";
															FinPara
															intentos<-3;
														FinSi
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						SiNo
							Escribir "Perdiste un intento proba de nuevo";
							Escribir "Ingresa una posicion del 1 al 9 y si dentro hay un 1 perdiste!";
							leer pos;
							intentos<-intentos+1;
						FinSi
					Hasta Que intentos=3
					num<-4;
		FinSegun
	FinMientras
		escribir ("Gracias por jugar! Vuelva prontos!");
FinProceso

