SubProceso juego(letra,intentos,j,i,palabra Por Valor)
	repetir
		leer letra;
		si Subcadena(palabra,j,j)==letra Entonces
			Escribir "La letra esta dentro de la palabra en la posicion ",j+1;
			j<-j+1;
			si j==Longitud(palabra) Entonces
				intentos<-3;
			FinSi
		SiNo
			intentos<-intentos+1;
		finsi
	Hasta Que intentos==3
	
FinSubProceso

Proceso Ahorcado
	Definir palabra,letra Como Caracter;
	Definir i,j,intentos Como Entero;
	Definir bandera Como Logico;
	letra<-" ";
	i<-0;
	j<-0;
	intentos<-0;
	leer palabra;
	juego(letra,intentos,j,i,palabra);
	
FinProceso
