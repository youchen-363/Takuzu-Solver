# Takuzu Solver

Bienvenue dans le projet Takuzu Solver! Ce programme résout les grilles de Takuzu, un jeu de logique également connu sous le nom de Binero ou Binary Puzzle.

## Description

Le Takuzu est un jeu de puzzle logique où vous remplissez une grille ayant même lignes et colonnes avec des 0 et des 1 selon certaines règles:
- Il ne peut pas y avoir plus de deux chiffres identiques consécutifs dans une ligne ou une colonne.
- Chaque ligne et chaque colonne doit contenir un nombre égal de 0 et de 1.
- 2 lignes ou 2 colonnes ne peuvent être identiques.

Ce solveur de Takuzu est écrit en Ada et conçu pour résoudre automatiquement ces grilles en respectant les règles du jeu.

## Fonctionnalités

- Résolution automatique des grilles Takuzu.
- Interface simple en ligne de commande.

## Prérequis

- GNAT Studio installé.

## Comment utiliser

1. Clonez le repo:

   `git clone https://github.com/youchen-363/Takuzu-Solver.git`
   `cd TakuzuSolver`

2. Ouvrez le projet avec GNAT Studio.

3. Compilez et exécutez le projet en utilisant le point d'entrée situé dans src/corps/resolution_takuzu.adb.

## License
Ce projet est sous licence MIT.

