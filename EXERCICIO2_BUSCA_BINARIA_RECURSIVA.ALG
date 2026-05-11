Algoritmo "busca_binaria_recursiva"
// Disciplina  : [Lógica de Programação]
// Descrição   : Implementa busca binária recursiva em um vetor ordenado.

Const
   TAM = 10

Var
   v: Vetor[1..TAM] de Inteiro
   i, valor, posi: Inteiro

// No VisualG, não precisamos passar o vetor como parâmetro se ele for global.
// Isso evita erros de sintaxe na assinatura da função.
funcao busca_recursiva(ini, fim, val: Inteiro): Inteiro
Var
   meio: Inteiro
Inicio
   // Caso base: o intervalo de busca é inválido (valor não encontrado)
   Se (ini > fim) Entao
      retorne -1
   FimSe

   // Cálculo do ponto médio
   meio <- (ini + fim) \ 2

   // Verificação do valor
   Se (v[meio] = val) Entao
      retorne meio
   Senao
      Se (val < v[meio]) Entao
         // Busca na metade esquerda
         retorne busca_recursiva(ini, meio - 1, val)
      Senao
         // Busca na metade direita
         retorne busca_recursiva(meio + 1, fim, val)
      FimSe
   FimSe
FimFuncao

Inicio
   // Preenchimento do vetor com valores ordenados (essencial para busca binária)
   Para i <- 1 Ate TAM faca
      v[i] <- i * 3 // Gera: 3, 6, 9, 12, 15, 18, 21, 24, 27, 30
   FimPara

   Escreva("Digite o valor a buscar: ")
   Leia(valor)

   // Chamada da função passando apenas os índices e o valor
   posi <- busca_recursiva(1, TAM, valor)

   Se (posi <> -1) Entao
      Escreval("Valor encontrado na posição: ", posi)
   Senao
      Escreval("Valor não encontrado.")
   FimSe
FimAlgoritmo