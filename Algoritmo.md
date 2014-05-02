[Testes de cálculo de quadrante](https://docs.google.com/spreadsheets/d/1tlF4BNkj7VfMI-iV9SDIwhFMlQIAQeZUJCYibvUXC_E/edit?usp=sharing)

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
	CarregaValoresAleatórios(0)
	Remove(dificuldade)

CarregaValoresAleatórios(posição)
	Se posição = 81
		Retorna
	Faça
		valor = Random(0 < Random < 10)
		Se NaoTemNaLinha(valor, posição, Tabuleiro) E NaoTemNaColuna(valor, posição, Tabuleiro) E NaoTemNoQuadrante(valor, posição, Tabuleiro)
			Tabuleiro[posição] = valor
			CarregaValoresAleatórios(posição + 1)
	Faça Novamente
	
Remove(dificuldade)
	Se dificuldade > 0
		Faça
			posição = Random(-1 < Random < 81)
			Se Tabuleiro[posição] > 0
				Tabuleiro[posição] = 0
				Retorna Remove(dificuldade - 1)
		Faça Novamente

Resolve(posição, clone, solução)
	Se posição = 81 // Cheguei ao fim do tabuleiro
		Retorna solução + 1

	Se Tabuleiro[posição] > 0 //Preenchido no tabuleiro
		Retorna Resolve(posição + 1, clone, solução)

	valor = 1
	enquanto valor < 10
		Se NaoTemNaLinha(valor, posição, clone) E NaoTemNaColuna(valor, posição, clone) E NaoTemNoQuadrante(valor, posição, clone)
			clone[posição] = valor
			solução = solução + Resolve(posição + 1, clone, solução)
		valor++;
	Retorna solução;
```
