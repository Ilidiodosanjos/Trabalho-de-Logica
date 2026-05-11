Algoritmo "sistema_busca"
Const
   TAM = 10
Var
   v: Vetor[1..TAM] de Inteiro
   i, opcao, valor, posi: Inteiro
   ordenado: Logico

procedimento ordenar()
Var
   i, j, temp: Inteiro
Inicio
   Para i <- 1 Ate TAM-1 faca
      Para j <- 1 Ate TAM-i faca
         Se (v[j] > v[j+1]) Entao
            temp <- v[j]
            v[j] <- v[j+1]
            v[j+1] <- temp
         FimSe
      FimPara
   FimPara
FimProcedimento

funcao buscar(val: Inteiro): Inteiro
Var
   ini, fim, meio: Inteiro
Inicio
   ini <- 1
   fim <- TAM

   Enquanto (ini <= fim) faca
      meio <- (ini + fim) \ 2

      Se (v[meio] = val) Entao
         retorne meio
      Senao
         Se (val < v[meio]) Entao
            fim <- meio - 1
         Senao
            ini <- meio + 1
         FimSe
      FimSe
   FimEnquanto

   retorne -1
FimFuncao

Inicio
   // Leitura inicial
   Escreval("Digite 10 números:")
   Para i <- 1 Ate TAM faca
      Leia(v[i])
   FimPara

   ordenado <- Falso

   Repita
      Escreval("")
      Escreval("=== MENU ===")
      Escreval("1 - Ordenar vetor")
      Escreval("2 - Buscar valor")
      Escreval("3 - Exibir vetor")
      Escreval("4 - Sair")
      Escreva("Opção: ")
      Leia(opcao)

      Escolha (opcao)
      Caso 1
         ordenar()
         ordenado <- Verdadeiro
         Escreval("Vetor ordenado com sucesso!")
      Caso 2
         Se (ordenado) Entao
            Escreva("Valor a buscar: ")
            Leia(valor)
            posi <- buscar(valor)
            Se (posi <> -1) Entao
               Escreval("Valor encontrado na posição ", posi)
            Senao
               Escreval("Valor não encontrado")
            FimSe
         Senao
            Escreval("Vetor não está ordenado! Ordene primeiro.")
         FimSe
      Caso 3
         Escreva("Vetor: ")
         Para i <- 1 Ate TAM faca
            Escreva(v[i], " ")
         FimPara
         Escreval("")
         Se (ordenado) Entao
            Escreval("Status: Ordenado")
         Senao
            Escreval("Status: Não ordenado")
         FimSe
      Caso 4
         Escreval("Encerrando...")
      OutroCaso
         Escreval("Opção inválida!")
      FimEscolha
   Ate (opcao = 4)
FimAlgoritmo