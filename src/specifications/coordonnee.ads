package Coordonnee is

   type Type_Coordonnee is private;

   -- construit une coordonnee
   -- retourne la valeur d'une Coordonnee
   -- ligne et colonne sont les paramètres entrées de nombre entier
   function ConstruireCoordonnees
     (Ligne, Colonne : in Integer) return Type_Coordonnee;

   -- permet d'obtenir la ligne d'une coordonnee
   -- retourne le numero de la ligne dans lequel se trouve la coordonnee c
   -- retourne un nombre entier
   -- c'est un paramètre entrée de Type_Coordonee
   function ObtenirLigne (C : in Type_Coordonnee) return Integer;

   -- permet d'obtenir la colonne d'une coordonnee
   -- retourne le numero de la colonne dans lequel se trouve la coordonnee c
   -- retourne un nombre entier
   -- c est un paramètre entrée de Type_Coordonnee
   function ObtenirColonne (C : in Type_Coordonnee) return Integer;

   -- permet d'obtenir la coordonnee en haut d'une coordonnee
   -- retourne l'indice de la case au dessus de la coordonnée c
   -- c est un paramètre entrée de type_Coordonnee
   function Haut (C : in Type_Coordonnee) return Type_Coordonnee;

   -- permet d'obtenir la coordonnee en bas d'une coordonnee
   -- retourne l'indice de la case au dessous de la coordonnée c
   -- c est un paramètre entrée de type_Coordonnee
   function Bas (C : in Type_Coordonnee) return Type_Coordonnee;

   -- permet d'obtenir la coordonnee au droite d'une coordonnee
   -- retourne l'indice de la case de droite de la coordonnée c
   -- c est un paramètre entrée de type_Coordonnee
   function droite (C : in Type_Coordonnee) return Type_Coordonnee;

   -- permet d'obtenir la coordonnee au gauche d'une coordonnee
   -- retourne l'indice de la case au gauche de la coordonnée c
   -- c est un paramètre entrée de type_Coordonnee
   function gauche (C : in Type_Coordonnee) return Type_Coordonnee;

private
   type Type_Coordonnee is record
      Ligne   : Integer;
      Colonne : Integer;
   end record;

end Coordonnee;
