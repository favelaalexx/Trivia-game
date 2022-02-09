Funcion results <- comprobar_score (a)  // Funcion que comprueba el porcentaje del score obtenido
	Definir porcent_answared Como Entero
	
	Si a = 400 Entonces // Checa que el score sea igual al de la condicion para poder poner un msj
		Escribir "Tu puntaje es de: ", a, " ¡Felicidades eres un genio!"
	SiNo
		Si a = 300 Entonces
			Escribir "Tu puntaje es de: ", a, " esta muy bien sigue asi!"
		SiNo
			Si a = 200 Entonces
				Escribir "Tu puntaje es de: ", a, " esta bien puedes mejorar"
			SiNo
				Si a = 100 Entonces
					Escribir "Tu puntaje es de: ", a, " okay solo ezfuerzate un poco mas"
				SiNo
					Si a = 0 Entonces
						Escribir "Tu puntaje es de: ", a, " ¿Eres o te haces?, estudia mas :)"
					FinSi
				FinSi
			FinSi
		FinSi	
	FinSi
	
	// Imprimir por pantalla el porcentaje
	Escribir ""
	porcent_answared = a /4
	Escribir "Obtuviste un ", porcent_answared, "%", " del preguntas correctas"
	
Fin Funcion

Funcion rules_accept <- Rules_verification () // Funcion, que no retorna ningun valor solamente ejecuta el codigo.
	Definir rules_validation Como Caracter
	Repetir // Se abre un do-while, para asegurar que el usuario cheque las reglas 
		Escribir "========================================="
		Escribir "                Reglas"
		Escribir "========================================="
		Escribir "La Trivia es un juego de habilidad donde el jugador debe contestar preguntas sobre conocimientos generales."
		Escribir ""
		Escribir "Cada pregunta tiene un valor en puntos dependiendo de su dificultad, con distintas opciones para elegir como respuesta."
		Escribir ""
		Escribir "El objetivo del juego es conseguir el máximo número de puntos respondiendo correctamente las preguntas."
		Escribir ""
		Escribir "El puntaje mas alto es 400 pts"
		Escribir ""
		Escribir "Escribe (s/n) aceptas las reglas'
		Leer rules_validation
		
		Limpiar Pantalla
		
		Si rules_validation <> "s" // Si la variable no es igual a "s" se va a seguir ejecutando el codigo
		FinSi
		
	Hasta Que rules_validation = "s" // Hasta que rules_validation sea igual a "s" se rompe el ciclo
	
Fin Funcion

Algoritmo Trivia_game_mejorado
	
	// Se definen todas las variables como enteras y caracteres
	Definir name, question_1_easy, question_2_easy, question_3_easy, question_4_easy, question_1_medium, question_2_medium, question_3_medium, question_4_medium, question_1_hard, question_2_hard, question_3_hard, question_4_hard, exit_op, menu_option_exit Como Caracter
	Definir score, user_op, useroption_levels Como Entero
	
	// Se le pide el nombre al usuario para hacer la expericia mas personalizada
	Escribir "========================================="
	Escribir "       Trivia de cultura general"
	Escribir "========================================="
	Escribir "Ingresa tu nombre: "
	leer name
	
	Limpiar Pantalla // Entre cada bloque esta la funcion de limpiar pantalla
	
	Escribir ""
	Escribir "¡Hola ", name, " bienvenid@, este es el menu de opciones, porfavor selecciona una opción de las que aparecen en el menú!"
	Escribir ""
	Escribir "========================================="
	Escribir "           Menú de opciones"
	Escribir "========================================="
	Escribir "[1] Jugar"
	Escribir "[2] Consultar puntuación" // Esta opcion no tiene mucho sentido ya que se nesesita una base de datos, porque las variables almacenan datos volatiles en la memoria RAM.
	Escribir "[3] Salir"
	Leer user_op
	
	Limpiar Pantalla
	
	Repetir
		Si user_op = 1 Entonces
			Escribir rules_verification() // Se le llama a la función para poder hacer el check de las reglas
			
			Limpiar Pantalla
			
			Repetir
				
				score = 0 // Se define la variable en 0 "score" para poder trakear los aciertos del usuario
				
				Escribir ""
				Escribir name, " escoje un nivel de dificultad"
				Escribir ""
				Escribir "========================================="
				Escribir "                Niveles"
				Escribir "========================================="
				Escribir "[1] Facíl"
				Escribir "[2] Intermedio"
				Escribir "[3] Difícil"
				Leer useroption_levels
				
				Limpiar Pantalla
				
				Segun useroption_levels Hacer
					1: // Easy
						// Question 1
						Escribir "¿Cual es el país mas grande del mundo?" // Se imprimen por pantalla la pregunta y la respuestas 
						Escribir "a) China"
						Escribir "b) Reino Unido"
						Escribir "c) Rusia"
						Leer question_1_easy // Se abre un input para que el usuario pueda insertar la respuesta.
						
						Si question_1_easy = "c" Entonces // Checa que la repuesta que esta en la variable, sea igual y si es igual imprime por pantalla la expresion
							Escribir ""
							Escribir "¡Correcta!"
							Escribir ""
							score = score  +100 // Si la respuesta es correcta se le suma el valor actual del score + 100 puntos cada vez que la pregunta sea correcta, y todo este proceso se repite en todas las preguntas.
		
						SiNo
							Escribir ""
							Escribir "¡Incorrecta!"
							Escribir ""
						Fin Si
						
						Esperar 1 Segundos
						Limpiar Pantalla // Entre cada pregunta hay un intervalo de 1 segundo despues de eso se limpia la pantalla.
						
						
						// Question 2
						Escribir "¿Cuantos huesos tiene el cuerpo humano?"
						Escribir "a) 207"
						Escribir "b) 206"
						Escribir "c) 245"
						Leer question_2_easy
						
						Si question_2_easy = "b" Entonces
							Escribir "'
							Escribir "¡Correcta!"
							Escribir ""
							score = score +100
						SiNo
							Escribir ""
							Escribir "¡Incorrecta!"
							Escribir ""
						FinSi
						
						Esperar 1 Segundos
						Limpiar Pantalla
						
						// Question 3
						Escribir "¿En que se especializa la cartografía?"
						Escribir "a) Ciencia que estudia los mapas"
						Escribir "b) Ciencia que estudia todos los procesos relacionados con la vida"
						Escribir "c) Estudia los suelos"
						Leer question_3_easy
						
						Si question_3_easy = "a" Entonces
							Escribir "'
							Escribir "¡Correcta!"
							Escribir ""
							score = score +100
						SiNo
							Escribir ""
							Escribir "¡Incorrecta!"
							Escribir ""
						FinSi
						
						Esperar 1 Segundos
						Limpiar Pantalla
						
						// Question 4
						Escribir "¿Cual es el océano mas grande del mundo?"
						Escribir "a) Atlantico"
						Escribir "b) Mar negro"
						Escribir "c) Pacifíco"
						Leer question_4_easy
						
						Si question_4_easy = "c" Entonces
							Escribir "'
							Escribir "¡Correcta!"
							Escribir ""
							score = score +100
						SiNo
							Escribir ""
							Escribir "¡Incorrecta!"
							Escribir ""
						FinSi
						
						Esperar 1 Segundos
						Limpiar Pantalla
						Esperar 1 Segundos
						
						Escribir comprobar_score(score) // Se le llama a la funcion para poder comprobar el score dandole como parametros la variable score que es la que contiene los puntos. 
						
					2: // Medium
						// Question 1
						Escribir "¿Cual es el edificio mas alto del mundo?"
						Escribir "a) Burj Khalifa"
						Escribir "b) Merdeka 118"
						Escribir "c) Torre de Shanghái"
						Leer question_1_medium
						
						Si question_1_medium = "a" Entonces
							Escribir "'
							Escribir "¡Correcta!"
							Escribir ""
							score = score +100
						SiNo
							Escribir "'
							Escribir "¡Incorrecta!"
							Escribir ""
						FinSi
						
						Esperar 1 Segundos
						Limpiar Pantalla
						
						// Question 2
						Escribir "¿Cual es el país con menos habitantes en el mundo?"
						Escribir "a) Nauru"
						Escribir "b) El Vaticano"
						Escribir "c) Mónaco"
						Leer question_2_medium
						
						Si question_2_medium = "b" Entonces
							Escribir ""
							Escribir "¡Correcta!"
							Escribir ""
							score = score +100
						SiNo
							Escribir ""
							Escribir "¡Incorrecta!"
							Escribir ""
						FinSi
						
						Esperar 1 Segundos
						Limpiar Pantalla
						
						// Question 3
						Escribir "¿Cuál es la pelicula más taquillera del mundo?"
						Escribir "a) Titanic"
						Escribir "b) Avatar"
						Escribir "c) Avengers: Endgame"
						Leer question_3_medium
						
						Si question_3_medium = "c" Entonces
							Escribir ""
							Escribir "¡Correcta!"
							Escribir ""
							score = score +100
						SiNo
							Escribir ""
							Escribir "¡Incorrecta!"
							Escribir ""
						FinSi
						
						Esperar 1 Segundos
						Limpiar Pantalla
						
						// Question 4
						Escribir "¿Cuántas estrellas tiene la bandera de estados unidos?"
						Escribir "a) 47"
						Escribir "b) 50"
						Escribir "c) 51"
						Leer question_4_medium
						
						Si question_4_medium = "b" Entonces
							Escribir ""
							Escribir "¡Correcta!"
							Escribir ""
							score = score +100
						SiNo
							Escribir ""
							Escribir "¡Incorrecta!"
							Escribir ""
						FinSi
						
						Esperar 1 Segundos
						Limpiar Pantalla
						Esperar 1 Segundos
						
						Escribir comprobar_score(score)
						
					3: // Hard
						// Question 1
						Escribir "¿Cuál es la capital de Eslovenia?"
						Escribir "a) Piran"
						Escribir "b) Máribor"
						Escribir "c) Liubliana"
						Leer question_1_hard
						
						Si question_1_hard = "Liubliana" Entonces
							Escribir ""
							Escribir "¡Correcta!"
							Escribir ""
							score = score +100
						SiNo
							Escribir ""
							Escribir "¡Incorrecta!"
							Escribir ""
						FinSi
						
						Esperar 1 Segundos
						Limpiar Pantalla
						
						// Question 2
						Escribir "¿Cúantas teclas tiene un piano?"
						Leer question_2_hard
						
						Si question_2_hard = "88" Entonces
							Escribir ""
							Escribir "¡Correcta!"
							Escribir ""
							score = score +100
						SiNo
							Escribir ""
							Escribir "¡Incorrecta!"
							Escribir ""
						FinSi
						
						Esperar 1 Segundos
						Limpiar Pantalla
						
						// Question 3
						Escribir "¿En qué año se hundio el Titanic?"
						Leer question_3_hard
						
						Si question_3_hard = "1912" Entonces
							Escribir ""
							Escribir "¡Correcta!"
							Escribir ""
							score = score +100
						SiNo
							Escribir ""
							Escribir "¡Incorrecta!"
							Escribir ""
						FinSi
						
						Esperar 1 Segundos
						Limpiar Pantalla
						
						// Question 4
						Escribir "¿Como murió Arquímedes?"
						Escribir "a) Cuando un soldado lo atravesó con una espada"
						Escribir "b) Cuando ingirió un mejunje conocido como cantárida"
						Escribir "c) Cuando un águila dejó caer una tortuga que cayó sobre él, matándolo"
						Leer question_4_hard
						
						Si question_4_hard = "a" Entonces
							Escribir ""
							Escribir "¡Correcta!"
							Escribir ""
							score = score +100
						SiNo
							Escribir ""
							Escribir "¡Incorrecta!"
							Escribir ""
						FinSi
						
						Esperar 1 Segundos
						Limpiar Pantalla
						Esperar 1 Segundos
						
						Escribir comprobar_score(score)
						
					De Otro Modo:
						Escribir "Porfavor, selecciona un nivel de los que aparecen en el menú"
						Leer useroption_levels
						
				Fin Segun // end level option 
				
				//  Comprueba que el usuario si quiere seguir jugando
				Esperar 1 Segundos
				Escribir "¿Desea continuar jugando? (s/n)"
				Leer exit_op
				Si exit_op = "s"
					Limpiar Pantalla
				FinSi
			Hasta Que exit_op = "n"
			
			Limpiar Pantalla
			Escribir "Gracias ", name " por jugar, ¡Nos vemos pronto!"
			
			Esperar 1 Segundos
			Limpiar Pantalla
			
			Escribir "Atte:"
			Escribir "Anna Victoria Urrea Márquez"
			Escribir "Alejandro Favela Gómez"
			Escribir "Ana Lucía Camarena Campos"
			Escribir "Ali Duarte Gaxiola"
			Escribir "Graciassss!"
			
			Esperar 2 segundo
			Limpiar Pantalla
			
		FinSi
		
		// Checar score
		Si user_op = 2
			Escribir name " tu puntaje es de " score // Toma la variable name y la varible score para imprimirla  por pantalla
			Escribir ""
		FinSi
		
		// Checar si desea regresar al menu principal
		Escribir "¿Desea volver al menú principal? (s/n)"
		leer menu_option_exit
		
		Si menu_option_exit = "s" // Si la expresion es verdadera imprime el bloque de codigo que es el menú
			Limpiar Pantalla
			Escribir "========================================="
			Escribir "           Menú de opciones"
			Escribir "========================================="
			Escribir "[1] Jugar"
			Escribir "[2] Consultar puntuación"
			Escribir "[3] Salir"
			Leer user_op
			Limpiar Pantalla
		FinSi
		
	Hasta Que menu_option_exit = "n"
	
	Limpiar Pantalla
	Escribir "Gracias ", name " por jugar, ¡nos vemos pronto!"
	
	Esperar 1 Segundos
	Limpiar Pantalla
	
	// Cierra el programa
	Si user_op = 3
		Limpiar Pantalla
		Escribir "Gracias ", name " por jugar, ¡nos vemos pronto!"
		
		Esperar 1 Segundos
		Limpiar Pantalla
		
		Escribir ""
		Escribir "Atte:"
		Escribir "Anna Victoria Urrea Márquez"
		Escribir "Alejandro Favela Gómez"
		Escribir "Ana Lucía Camarena Campos"
		Escribir "Ali Duarte Gaxiola"
		Escribir "Graciassss!"
		
		Esperar 3 segundos
		Limpiar Pantalla
	FinSi
FinAlgoritmo