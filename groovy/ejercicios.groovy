/*Hacer tablas de multiplicar
def TablaMultiplicar (){
    for (i in 1..10){
        println "Tabla del $i: "
        for (j in 1..10){
            println "$i x $j = ${i * j}"
        }
    }
}
TablaMultiplicar ()

Calcular el factorial
def Factorial(int n) {
    def resultado = 1
    for (i in 1..n) {
        resultado *= i
    }
    return resultado
}
Factorial (3)

//Números primos del 1 al 100

def PrimosAl100() {
    def primo = []
    for (int i = 2; i <= 100; i++) {
        if (esPrimo(i)) {
            primo << i
        }
    }
    return primo
}

def esPrimo(int n) {
    if (n <= 1) {
        return false
    }
    for (int i = 2; i <= Math.sqrt(n); i++) {
        if (n % i == 0) {
            return false
        }
    }
    return true
}

println PrimosAl100()

//Texto y vocal mas veces se repita
def vocalMasRepetida(String texto) {
    texto = texto.toLowerCase().replaceAll(/[áA]/, 'a')
                             .replaceAll(/[éE]/, 'e')
                             .replaceAll(/[íI]/, 'i')
                             .replaceAll(/[óO]/, 'o')
                             .replaceAll(/[úU]/, 'u')
    def conteoVocales = ['a': 0, 'e': 0, 'i': 0, 'o': 0, 'u': 0]
    for (int i = 0; i < texto.length(); i++) {
        char c = texto.charAt(i)
        if (conteoVocales.containsKey(c.toString())) {
            conteoVocales[c.toString()]++
        }
    }
    char vocalMax = 'a'
    int maxCount = 0
    for (vocal in conteoVocales.keySet()) {
        if (conteoVocales[vocal] > maxCount) {
            maxCount = conteoVocales[vocal]
            vocalMax = vocal
        }
    }

    return vocalMax
}
def texto = "Hola soy María, quisi michi tixti, coso, tonto"
println "La vocal que más se repite es: ${vocalMasRepetida(texto)}"

//Máximo común divisor y mínimo común múltiplo
def mcd(int a, int b){
    if (b == 0)
        return a
    return mcd(b, a%b)
}
mcd (30,100)
def mcm(int a, int b) {
    def mcd = mcd(a, b)
    return (a * b) / mcd
}
mcm (30,100)

//Juego piedra, papel o tijera
import java.util.Random
def eleccionComputadora() {
    def opciones = ['piedra', 'papel', 'tijera']
    def random = new Random()
    return opciones[random.nextInt(opciones.size())]
}

// Función para determinar el resultado del juego
def determinarGanador(String eleccionJugador, String eleccionComputadora) {
    if (eleccionJugador == eleccionComputadora) {
        return "Empate"
    }

    switch (eleccionJugador) {
        case 'piedra':
            return (eleccionComputadora == 'tijera') ? "Ganaste" : "Perdiste"
        case 'papel':
            return (eleccionComputadora == 'piedra') ? "Ganaste" : "Perdiste"
        case 'tijera':
            return (eleccionComputadora == 'papel') ? "Ganaste" : "Perdiste"
        default:
            return "Elección inválida"
    }
}

// Función principal del juego
def jugar() {
    def opcionesValidas = ['piedra', 'papel', 'tijera']
    println "Bienvenido al juego de Piedra, Papel o Tijera!"
    println "Elige piedra, papel o tijera:"

    def entradaJugador = System.console().readLine().toLowerCase()

    if (!opcionesValidas.contains(entradaJugador)) {
        println "Elección inválida. Por favor elige piedra, papel o tijera."
        return
    }

    def eleccionPC = eleccionComputadora()
    println "La computadora eligió: $eleccionPC"

    def resultado = determinarGanador(entradaJugador, eleccionPC)
    println "Resultado: $resultado"
}

// Ejecutar el juego
jugar()

// Adivina el numero que estoy pensando del 1 al 100
import javax.swing.JOptionPane

def cad = JOptionPane.showInputDialog("Pide en GroovyConsole:")
println "Entrada: $cad"

import java.util.Random
import java.util.Scanner

def jugar (){
    def random = new Random()
    def numeroPensado = random.nextInt(100) + 1 // Número aleatorio entre 1 y 100
    def intentos = 10
    def scanner = new Scanner(System.in)

    println "Estoy pensando en un número entre 1 y 100."
    println "Tienes 10 intentos para adivinarlo."

    while (intentos > 0) {
        println "Introduce tu adivinanza: "
        def adivinanza = scanner.nextInt()
        
        if (adivinanza < 1 || adivinanza > 100) {
            println "Por favor, elige un número entre 1 y 100."
            continue
        }

        if (adivinanza < numeroPensado) {
            println "El número que estoy pensando es mayor."
        } else if (adivinanza > numeroPensado) {
            println "El número que estoy pensando es menor."
        } else {
            println "¡Felicidades! Adivinaste el número. Era $numeroPensado."
            return
        }

        intentos--
        println "Te quedan $intentos intentos."

        if (intentos == 0) {
            println "¡Se acabaron los intentos! El número que estaba pensando era $numeroPensado."
        }
    }
}

// Ejecutar el juego
jugar()
*/
//Validar NIF
def DNI = []
