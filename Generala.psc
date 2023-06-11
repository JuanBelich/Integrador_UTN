Proceso Generala
	Definir dado1, dado2, i, j, aux como entero;
	Definir puntosj, puntosc,cont5,cont1,contE,contT,puntos,contEsc,puntosTC,puntosTJ,enter como entero;
	Definir arranca,trio Como Logico;
	Definir vectorD como entero;
	Dimension vectorD[5];
	puntosTC <- 0;
	puntosTJ <- 0;
	puntosj <- 0;
	puntosc <- 0;
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
FinProceso
