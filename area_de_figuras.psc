Algoritmo area_de_figuras
	Definir opcion, totalFiguras Como Entero
	Definir i, j, idBuscar, tipo Como Entero
	Definir encontrado Como Logico
	Definir sumaAreas, promedioAreas Como Real
	Definir mayorArea, menorArea Como Real
	Definir cuadrados, rectangulos, triangulos, circulos Como Entero
	Definir id Como Entero
	Definir lado, base, altura, radio, area Como Real
	Definir descripcion, tipoFigura, estado Como Caracter
	Dimension id[100]
	Dimension descripcion[100]
	Dimension tipoFigura[100]
	Dimension lado[100]
	Dimension base[100]
	Dimension altura[100]
	Dimension radio[100]
	Dimension area[100]
	Dimension estado[100]
	totalFiguras <- 0
	//------------------------------------//
	//--|menu_principal_area_de_figuras|--//
	//------------------------------------//
	Repetir
		Escribir "menu principal area de figuras"
		Escribir "1) registrar figura"
		Escribir "2) editar figura"
		Escribir "3) eliminar figura"
		Escribir "4) buscar figura"
		Escribir "5) listar figuras"
		Escribir "6) ver detalles de la figura"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//---------------------------------//
			//--|registrar_figura_geometrica|--//
			//---------------------------------//
			1:
				Si totalFiguras < 100 Entonces
					totalFiguras <- totalFiguras + 1
					id[totalFiguras] <- totalFiguras
					Escribir "ingrese una descripcion:"
					Leer descripcion[totalFiguras]
					Escribir "tipo de figura"
					Escribir "1) cuadrado"
					Escribir "2) rectangulo"
					Escribir "3) triangulo"
					Escribir "4) circulo"
					Leer tipo
					lado[totalFiguras] <- 0
					base[totalFiguras] <- 0
					altura[totalFiguras] <- 0
					radio[totalFiguras] <- 0
					Segun tipo Hacer
						1:
							tipoFigura[totalFiguras] <- "cuadrado"
							Escribir "ingrese el lado:"
							Leer lado[totalFiguras]
							area[totalFiguras] <- lado[totalFiguras] * lado[totalFiguras]
						2:
							tipoFigura[totalFiguras] <- "rectangulo"
							Escribir "ingrese la base:"
							Leer base[totalFiguras]
							Escribir "ingrese la altura:"
							Leer altura[totalFiguras]
							area[totalFiguras] <- base[totalFiguras] * altura[totalFiguras]
						3:
							tipoFigura[totalFiguras] <- "triangulo"
							Escribir "ingrese la base:"
							Leer base[totalFiguras]
							Escribir "ingrese la altura:"
							Leer altura[totalFiguras]
							area[totalFiguras] <- (base[totalFiguras] * altura[totalFiguras]) / 2
						4:
							tipoFigura[totalFiguras] <- "circulo"
							Escribir "ingrese el radio:"
							Leer radio[totalFiguras]
							area[totalFiguras] <- PI * radio[totalFiguras] * radio[totalFiguras]
						De Otro Modo:
							Escribir "tipo de figura no valido."
							totalFiguras <- totalFiguras - 1
					FinSegun
					Si tipo >= 1 Y tipo <= 4 Entonces
						estado[totalFiguras] <- "calculado"
						Escribir "figura registrada correctamente."
					FinSi
				SiNo
					Escribir "no hay espacio para registrar mas figuras."
				FinSi
			//-------------------//
			//--|editar_figura|--//
			//-------------------//
			2:
				Escribir "editar figura"
				Si totalFiguras = 0 Entonces
					Escribir "no hay figuras registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalFiguras Hacer
						Escribir id[i], " | ", descripcion[i], " | ", tipoFigura[i], " | ", area[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la figura:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalFiguras Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese la nueva descripcion:"
							Leer descripcion[i]
							Escribir "seleccione el nuevo tipo de figura:"
							Escribir "1) cuadrado"
							Escribir "2) rectangulo"
							Escribir "3) triangulo"
							Escribir "4) circulo"
							Leer tipo
							lado[i] <- 0
							base[i] <- 0
							altura[i] <- 0
							radio[i] <- 0
							Segun tipo Hacer
								1:
									tipoFigura[i] <- "cuadrado"
									Escribir "ingrese el lado:"
									Leer lado[i]
									area[i] <- lado[i] * lado[i]
								2:
									tipoFigura[i] <- "rectangulo"
									Escribir "ingrese la base:"
									Leer base[i]
									Escribir "ingrese la altura:"
									Leer altura[i]
									area[i] <- base[i] * altura[i]
								3:
									tipoFigura[i] <- "triangulo"
									Escribir "ingrese la base:"
									Leer base[i]
									Escribir "ingrese la altura:"
									Leer altura[i]
									area[i] <- (base[i] * altura[i]) / 2
								4:
									tipoFigura[i] <- "circulo"
									Escribir "ingrese el radio:"
									Leer radio[i]
									area[i] <- PI * radio[i] * radio[i]
								De Otro Modo:
									Escribir "tipo de figura no valido."
							FinSegun
							Si tipo >= 1 Y tipo <= 4 Entonces
								estado[i] <- "calculado"
								Escribir "figura editada correctamente."
							FinSi
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una figura con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|eliminar_figura|--//
			//---------------------//
			3:
				Escribir "eliminar figura"
				Si totalFiguras = 0 Entonces
					Escribir "no hay figuras registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalFiguras Hacer
						Escribir id[i], " | ", descripcion[i], " | ", tipoFigura[i], " | ", area[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la figura:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalFiguras Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalFiguras Entonces
								Para j <- i Hasta totalFiguras - 1 Hacer
									id[j] <- id[j + 1]
									descripcion[j] <- descripcion[j + 1]
									tipoFigura[j] <- tipoFigura[j + 1]
									lado[j] <- lado[j + 1]
									base[j] <- base[j + 1]
									altura[j] <- altura[j + 1]
									radio[j] <- radio[j + 1]
									area[j] <- area[j + 1]
									estado[j] <- estado[j + 1]
								FinPara
							FinSi
							totalFiguras <- totalFiguras - 1
							Escribir "figura eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una figura con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|buscar_figura|--//
			//-------------------//
			4:
				Escribir "buscar figura"
				Si totalFiguras = 0 Entonces
					Escribir "no hay figuras registradas."
				SiNo
					Escribir "ingrese el id de la figura:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalFiguras Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir "id: ", id[i]
							Escribir "descripcion: ", descripcion[i]
							Escribir "tipo de figura: ", tipoFigura[i]
							Si tipoFigura[i] = "cuadrado" Entonces
								Escribir "lado: ", lado[i]
							FinSi
							Si tipoFigura[i] = "rectangulo" Entonces
								Escribir "base: ", base[i]
								Escribir "altura: ", altura[i]
							FinSi
							Si tipoFigura[i] = "triangulo" Entonces
								Escribir "base: ", base[i]
								Escribir "altura: ", altura[i]
							FinSi
							Si tipoFigura[i] = "circulo" Entonces
								Escribir "radio: ", radio[i]
							FinSi
							Escribir "area: ", area[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una figura con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|listar_figuras|--//
			//--------------------//
			5:
				Escribir "listar figuras"
				Si totalFiguras = 0 Entonces
					Escribir "no hay figuras registradas."
				SiNo
					Escribir "lista de fiuras"
					Para i <- 1 Hasta totalFiguras Hacer
						Escribir "id: ", id[i]
						Escribir "descripcion: ", descripcion[i]
						Escribir "tipo de figura: ", tipoFigura[i]
						Si tipoFigura[i] = "cuadrado" Entonces
							Escribir "lado: ", lado[i]
						FinSi
						Si tipoFigura[i] = "rectangulo" Entonces
							Escribir "base: ", base[i]
							Escribir "altura: ", altura[i]
						FinSi
						Si tipoFigura[i] = "triangulo" Entonces
							Escribir "base: ", base[i]
							Escribir "altura: ", altura[i]
						FinSi
						Si tipoFigura[i] = "circulo" Entonces
							Escribir "radio: ", radio[i]
						FinSi
						Escribir "area: ", area[i]
						Escribir "estado: ", estado[i]
					FinPara
					Escribir "total de figuras: ", totalFiguras
				FinSi
			//-------------------------//
			//--|ver_detalles_figura|--//
			//-------------------------//
			6:
				Escribir "ver detalles de la figura"
				Si totalFiguras = 0 Entonces
					Escribir "no hay figuras registradas."
				SiNo
					Escribir "ingrese el id de la figura:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalFiguras Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir " detalles de la figura"
							Escribir "id: ", id[i]
							Escribir "descripcion: ", descripcion[i]
							Escribir "tipo de figura: ", tipoFigura[i]
							Si tipoFigura[i] = "cuadrado" Entonces
								Escribir "lado: ", lado[i]
							FinSi
							Si tipoFigura[i] = "rectangulo" Entonces
								Escribir "base: ", base[i]
								Escribir "altura: ", altura[i]
							FinSi
							Si tipoFigura[i] = "triangulo" Entonces
								Escribir "base: ", base[i]
								Escribir "altura: ", altura[i]
							FinSi
							Si tipoFigura[i] = "circulo" Entonces
								Escribir "radio: ", radio[i]
							FinSi
							Escribir "area calculada: ", area[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una figura con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalFiguras = 0 Entonces
					Escribir "no hay figuras registradas."
				SiNo
					sumaAreas <- 0
					mayorArea <- area[1]
					menorArea <- area[1]
					cuadrados <- 0
					rectangulos <- 0
					triangulos <- 0
					circulos <- 0
					Para i <- 1 Hasta totalFiguras Hacer
						sumaAreas <- sumaAreas + area[i]
						Si area[i] > mayorArea Entonces
							mayorArea <- area[i]
						FinSi
						Si area[i] < menorArea Entonces
							menorArea <- area[i]
						FinSi
						Segun tipoFigura[i] Hacer
							"cuadrado":
								cuadrados <- cuadrados + 1
							"rectangulo":
								rectangulos <- rectangulos + 1
							"triangulo":
								triangulos <- triangulos + 1
							"circulo":
								circulos <- circulos + 1
						FinSegun
					FinPara
					promedioAreas <- sumaAreas / totalFiguras
					Escribir "estadisticas generales"
					Escribir "total de figuras: ", totalFiguras
					Escribir "figuras registradas:"
					Escribir "cuadrados: ", cuadrados
					Escribir "rectangulos: ", rectangulos
					Escribir "triangulos: ", triangulos
					Escribir "circulos: ", circulos
					Escribir "suma de areas: ", sumaAreas
					Escribir "promedio de areas: ", promedioAreas
					Escribir "area mayor: ", mayorArea
					Escribir "area menor: ", menorArea
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar area de figuras."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo