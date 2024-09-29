# Café com Código (Grupo de Estudos; Enforce)

## Desafios

- Implementar uma API HTTP para realizar testes de benchmarking
- Implementar algoritmos para solucionar os seguintes problemas:
  - https://projecteuler.net/problem=3

## How to get the API running

- Web framework: https://hackage.haskell.org/package/scotty
- Execute:
  - `cd haskell-benchmarking-api`
  - `cabal update`
  - `cabal install --only-dependencies`
  - `cabal build`
  - `cabal run haskell-benchmarking-api`

## Run haskell-course/main.hs (initializes a new GHCi prompt with the code injected into it)

```
ghci main.hs
```
