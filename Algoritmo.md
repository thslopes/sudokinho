```
Sudoku()
	Leia dificuldade //Inteiro
	Faça
		MontaTabuleiro(dificuldade);
		Se Resolve(0, clone(Tabuleiro), 0) = 1
			Retorna
	Faça Novamente

Linha(posição)
	Retorna posição MOD 9

Coluna(posição)
	Retorna posição / 9

Quadrante(posição)
	Retorna Linha(posição) / 3 + (Coluna(posição) / 3 ) 3
	
MontaTabuleiro(dificuldade)
	CarregaValoresAleatóreos(0)
	Remove(dificuldade)

CarregaValoresAleatóreos(posição)
	Se posição = 81
		Retorna
	Faça
		valor = Random(0 < Random < 10)
		Se NaoTemNaLinha(valor, posição, Tabuleiro) E NaoTemNaColuna(valor, posição, Tabuleiro) E NaoTemNoQuadrante(valor, posição, Tabuleiro)
			Tabuleiro[posição] = valor
			CarregaValoresAleatóreos(posição + 1)
	Faça Novamente
	
Remove(dificuldade)
	Se dificuldade > 0
		Faça
			posição = Random(-1 < Random < 81)
			Se Tabuleiro[posição] > 0
				Tabuleiro[posição] = 0
				Remove(dificuldade - 1)
		Faça Novamente

Resolve(posição, clone, solução)
	Se posição = 81 // Cheguei ao fim do tabuleiro
		Retorna solução + 1

	Se Tabuleiro[posição] > 0 //Preenchido no tabuleiro
		clone[posição] = Tabuleiro[posição]
		Retorna Resolve(posição + 1, clone, solução)

	valor = 1
	enquanto valor < 10
		Se NaoTemNaLinha(valor, posição, clone) E NaoTemNaColuna(valor, posição, clone) E NaoTemNoQuadrante(valor, posição, clone)
			clone[posição] = valor
			solução = solução + Resolve(posição + 1, clone, solução)
		valor++;
	Retorna solução;
```
