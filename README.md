<h1 align="center">MinimalSumRepresentation.jl</h1>

[![Build Status](https://github.com/jakewilliami/MinimalSumRepresentation.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/jakewilliami/MinimalSumRepresentation.jl/actions/workflows/CI.yml?query=branch%3Amaster)

Find the most succinct/efficient way to represent an integer as a sum of single digits.  That is,

$$n = x_1 + x_2 + \ldots + x_i \quad \text{where} \quad x_j < 10, \quad \forall j \in [1, i]$$

The inspiration for this was [The Password Game](https://neal.fun/password-game/); specifically, the instruction &ldquo;the digits in your password must add up to $[n]$.&rdquo;  After seeing this instruction, I was curious to know how you can write it minimally.

We will start with [a naïve solution](https://github.com/jakewilliami/MinimalSumRepresentation.jl/releases/tag/v1.0.0) and build up from there.

This has [BestApproximation.jl](https://github.com/jakewilliami/BestApproximation.jl/) energy&mdash;interesting for a fleeting moment, but quite useless.

## Quick Start

```julia-repl
julia> using MinimalSumRepresentation

julia> solve(25)
3-element Vector{Int64}:
 7
 9
 9
```
