with Chiffre; use Chiffre;

package Rangee is

   type Type_Rangee is private;

   TRANCHE_INVALIDE     : exception;

   -- construit une rangee vide
   -- retourne une rangee vide de t elements
   -- retourne Type_Rangee
   -- T est un paramètre entrée de nombre entier
   function ConstruireRangee (T : in Integer) return Type_Rangee;

   -- permet de verifier si une rangee est vide
   -- retourne VRAI si la rangee r est vide ; FAUX sinon
   -- R est un paramètre entrée de Type_Rangee
   function EstVide (R : in Type_Rangee) return Boolean;

   -- permet de verifier si une rangee n'a aucune case vide
   -- retourne VRAI si aucune case de la rangee r n'est vide ; FAUX sinon
   -- R est un paramètre entrée de Type_Rangee
   function EstRemplie (R : in Type_Rangee) return Boolean;

   -- permet d'obtenir la taille d'une rangee
   -- retourne la taille de la rangee r
   -- retourne un nombre entier
   -- R est un paramètre entrée de Type_Rangee
   function Taille (R : in Type_Rangee) return Integer;

   -- permet d'obtenir une chiffre d'un rang d'une rangee
   -- retourne le chiffre place a l'indice i de la rangee r
   -- retourne Type_Chiffre
   -- R est un paramètre entrée de Type_Rangee
   -- I est un paramètre entrée de nombre entier
   -- necessite 0 < i <= taille(r)
   -- leve l'exception TRANCHE_INVALIDE si i < 1 ou i > taille(r)
   function ObtenirChiffre
     (R : in Type_Rangee; I : in Integer) return Type_Chiffre;

   -- permet d'obtenir le nombre de chiffres non nuls d'une rangee
   -- retourne le nombre de chiffres non nuls de la rangee r
   -- retourne un nombre entier
   -- R est un paramètre entrée de Type_Rangee
   function nombreChiffresConnus (R : in Type_Rangee) return Integer;

   -- retourne le nombre de chiffres de valeur v de la rangee r
   -- retourne un nombre entier
   -- R est un paramètre entrée de Type_Rangee
   -- V est un paramèter entrée de Type_Chiffre
   function nombreChiffresDeValeur
     (R : in Type_Rangee; V : in Type_Chiffre) return Integer;

   -- permet d'obtenir le chiffre de droite d'une coordonnée d'une rangee
   -- retourne le chiffre de droite de coordonnée c de la Rangee e
   -- retourne Type_Chiffre
   -- R est un paramètre entrée de Type_Rangee
   -- I est un paramètre entrée de nombre entier
   -- necessite 0 < i <= taille(r)
   -- leve l'exception TRANCHE_INVALIDE si i < 1 ou i > taille(r)
   function chiffreDeDroite
     (E : in Type_Rangee; I : in Integer) return Type_Chiffre;

   -- permet d'obtenir le chiffre de gauche d'une coordonnée d'une rangee
   -- retourne le chiffre de gauche de coordonnée c de la Rangee e
   -- retourne Type_Chiffre
   -- R est un paramètre entrée de Type_Rangee
   -- I est un paramètre entrée de nombre entier
   -- necessite 0 < i <= taille(r)
   -- leve l'exception TRANCHE_INVALIDE si i < 1 ou i > taille(r)
   function chiffreDeGauche
     (E : in Type_Rangee; I : in Integer) return Type_Chiffre;

   -- permet de verifier si les deux chiffres de droite d'une coordonnee
   -- d'une rangee sont egaux
   -- retourne VRAI si les chiffre de droite de coordonnée c
   -- de la Rangee e sont égaux et FAUX sinon
   -- E est un paramètre entrée de Type_Rangee
   -- I est le rang, un paramètre entrée de nombre entier
   -- necessite 0 < i <= taille(r)
   -- leve l'exception TRANCHE_INVALIDE si i < 1 ou i > taille(r)
  function SontDeuxChiffresDeDroiteEgaux
     (E : in Type_Rangee; I : in Integer) return Boolean;

   -- permet de verifier si les deux chiffres de gauche d'une coordonnee
   -- d'une rangee sont egaux
   -- retourne VRAI si les chiffre de gauche de coordonnée c
   -- de la Rangee e sont égaux et FAUX sinon
   -- E est un paramètre entrée de Type_Rangee
   -- I est le rang, un paramètre entrée de nombre entier
   -- necessite 0 < i <= taille(r)
   -- leve l'exception TRANCHE_INVALIDE si i < 1 ou i > taille(r)
   function SontDeuxChiffresDeGaucheEgaux
     (E : in Type_Rangee; I : in Integer) return Boolean;

   -- remplit la case i de la rangee r avec le chiffre c
   -- retourne Type_Rangee
   -- R est un paramètre entrée de Type_Rangee
   -- I est le rang, un paramètre entrée de nombre entier
   -- C est un paramètre entrée de Type_chiffre
   -- necessite 0 < i <= taille(r)
   -- leve l'exception TRANCHE_INVALIDE si i < 1 ou i > taille(r)
   function AjouterChiffre
     (R : in Type_Rangee; I : in Integer; C : in Type_Chiffre)
      return Type_Rangee;

   -- positionne la case i de la rangee r avec le chiffre INCONNU
   -- retourne Type_Rangee
   -- R est un paramètre entrée de Type_Rangee
   -- I est le rang, un paramètre entrée de nombre entier
   -- necessite 0 < i <= taille(r)
   -- leve l'exception TRANCHE_INVALIDE si i < 1 ou i > taille(r)
  function RetirerChiffre
     (R : in Type_Rangee; I : in Integer) return Type_Rangee;

private
   TAILLE_MAX_GRILLE : constant Integer := 100;
   type Type_Tableau_Rangee is array (1 .. TAILLE_MAX_GRILLE) of Type_Chiffre;
   type Type_Rangee is record
      R      : Type_Tableau_Rangee;
      Taille : Integer;
   end record;

end Rangee;
