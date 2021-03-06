// Site: marcelosimoesdev.com
// Instagram: @marcelosimoesdev

// Apple Swift Tutorial - Do básico ao avançado (Parte 13)
// Functions (Funções 2/2)


// Tipos das funções
func somar(numero1: Int, numero2: Int) -> Int {
    
    return numero1 + numero2
}

func multiplicar(numero1: Int, numero2: Int) -> Int {
    
    return numero1 * numero2
}

var contaMatematica1: (Int, Int) -> Int

contaMatematica1 = somar
contaMatematica1(5, 5)

contaMatematica1 = multiplicar
contaMatematica1(5, 5)


var contaMatematica2 = somar // Tipo inferido
contaMatematica2(2, 3)



// Funções como parâmetros
func imprimirResultadoConta(_ funcaoMatematica: (Int, Int) -> Int, _ numero1: Int, _ numero2: Int) {
    
    print("Resultado da operação: \(funcaoMatematica(numero1, numero2))")
}

imprimirResultadoConta(multiplicar, 5, 5)
imprimirResultadoConta(somar, 5, 5)



// Funções como retorno e funções aninhadas
func escolherFuncao(_ valorAtual: Int) -> (Int) -> Int {
    
    func aumentar(numero: Int) -> Int {
        return numero + 1
    }
    
    func diminuir(numero: Int) -> Int {
        return numero - 1
    }

    return valorAtual < 0 ? aumentar : diminuir
}

var valor = 5
let moverParaZero = escolherFuncao(valor)

moverParaZero(valor)


print("Contando até zero:")
while valor != 0 {
    print("\(valor)... ")
    valor = moverParaZero(valor)
}
print("Zero!")
