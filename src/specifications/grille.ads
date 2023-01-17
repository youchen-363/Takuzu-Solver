with Coordonnee; use Coordonnee;
with Chiffre;    use Chiffre;
with Rangee;     use Rangee;

package Grille is

   type Type_Grille is private;

   TAILLE_GRILLE_INVALIDE : exception;
   CASE_VIDE              : exception;
   VIDER_CASE_VIDE        : exception;
   FIXER_CHIFFRE_NON_NUL  : exception;

   -- cree une grille vide de taille t
   -- retourne Type_Grille
   -- T est un paramètre entrée de nombre entier
   -- necessite 4 <= t <= TAILLE_MAX et t pair
   -- leve l'exception TAILLE_GRILLE_INVALIDE sinon
   function ConstruireGrille (T : Integer) return Type_Grille;

   -- permet d'obtenir la taille d'une grille
   -- retourne la taille de la grille g
   -- retourne un nomrbe entier
   -- G est un paramètre entrée de type_grille
   function Taille (G : in Type_Grille) return Integer;

   -- permet de verifier si une case d'une grille est vide
   -- retourne VRAI si la case de coordonnee c de la grille g est vide
   -- FAUX sinon
   -- G est un paramètre entrée de type_grille
   -- C est un paramètre entrée de type_coordonnee
   function estCaseVide
     (G : in Type_Grille; C : in Type_Coordonnee) return Boolean;

   -- permet d'obtenir le chiffre d'une coordonnee d'une grille
   -- retourne la valeur de la case de coordonnee c de la grille g
   -- retourne type_chiffre
   -- G est un paramètre entrée de type_grille
   -- C est un paramètre entrée de type_coordonnee
   -- necessite que la case c ne soit pas vide
   -- leve l'exception CASE_VIDE si la case c est vide
   function ObtenirChiffre
     (G : in Type_Grille; C : in Type_Coordonnee) return Type_Chiffre;

   -- permet d'obtenir le nombre de cases remplies d'une grille
   -- retourne le nombre de cases remplies dans la grille g
   -- retourne un nombre entier
   -- G est un paramètre entrée de type_grille
   function NombreChiffresConnus (G : in Type_Grille) return Integer;

   -- permet de verifier si une grille est totalement remplie
   -- retourne VRAI si la grille g est totalement remplie et FAUX sinon
   -- G est un paramètre entrée de type_grille
   function EstRemplie (G : in Type_Grille) return Boolean;

   -- construit une rangee a partir de la ligne l de la grille g
   -- retourne Type_rangee
   -- G est un paramètre entrée de type_grille
   -- L est un paramètre entrée de nombre entier
   function extraireLigne
     (G : in Type_Grille; L : in Integer) return Type_Rangee;

   -- construit une rangee a partir de la colonne c de la grille g
   -- retourne Type_Rangee
   -- G est un paramètre entrée de type_grille
   -- C est un paramètre d'une colonne de nombre entier
   function extraireColonne
     (G : in Type_Grille; C : in Integer) return Type_Rangee;

   -- construit une nouvelle grille dont les valeurs sont celles de g
   -- SAUF la case de coordonnee c qui prend la valeur v
   -- retourne Type_Grille
   -- G est un paramètre entrée de type_grille
   -- C est un paramètre entrée de type_coordonnee
   -- V est un paramètre entrée de type_Chiffre
   -- necessite que la case c de la grille g soit vide
   -- leve l'exception FIXER_NON_NUL si la case est vide
   function FixerChiffre
     (G : in Type_Grille; C : in Type_Coordonnee; V : in Type_Chiffre)
      return Type_Grille;

   -- construit une nouvelle grille dont les valeurs sont celles de g
   -- SAUF la case de coordonnées c qui prend la valeur INCONNU
   -- retourne Type_Grille
   -- G est un paramètre entrée de type_grille
   -- C est un paramètre entrée de type_coordonnee
   -- nécessite que la case c de la grille g ne soit pas vide
   -- leve l'exception VIDER_CASE_VIDE si c est vide
   function ViderCase
     (G : in Type_Grille; C : in Type_Coordonnee) return Type_Grille;

private
   TAILLE_MAX : constant Integer := 100;
   type Type_Tableau_Grille is
     array (1 .. TAILLE_MAX, 1 .. TAILLE_MAX) of Type_Chiffre;
   type Type_Grille is record
      G      : Type_Tableau_Grille;
      Taille : Integer;
   end record;

end Grille;
