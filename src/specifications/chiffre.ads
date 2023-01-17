package Chiffre is
   
   -- encapsulation de Type_Chiffre
   type Type_Chiffre is private;

   VALEUR_INCONNUE : exception; -- l'exception levé lorsqu'une valeur est inconnu

   -- crée le chiffre UN
   -- UN est un type_chiffre constant
   UN : constant Type_Chiffre;

   -- crée le chiffre ZERO
   -- ZERO est un type_chiffre constant
   ZERO : constant Type_Chiffre;

   -- crée le chiffre INCONNU
   -- INCONNU est un type_chiffre constant
   INCONNU : constant Type_Chiffre;

   -- permet d'obtenir la valeur d'une chiffre 
   -- retourne la valeur du chiffre c, un nombre entier
   -- c est un paramètre entrée de type_Chiffre
   function ValeurChiffre (C : in Type_Chiffre) return Integer;
  
   -- permet de verifier si une chiffre est INCONNU 
   -- retourne VRAI si la valeur du chiffre c est inconnu
   -- retourne FAUX sinon 
   -- c est un paramètre entrée de type_Chiffre
   function EstInconnue (C : in Type_Chiffre) return Boolean;

   -- permet d'obtenir le complement d'un type_chiffre
   -- retourne le complément du chiffre c
   -- retourne type_chiffre
   -- necessite la valeur de c est connue
   -- leve l'exception VALEUR_INCONNUE si la valeur de c est inconnue
   -- c est un paramètre entrée de type_Chiffre
   function Complement (C : in Type_Chiffre) return Type_Chiffre;
   
   -- permet de verifier si deux chiffres sont egaux 
   -- retourne VRAI si le chiffre c1 est égal au chiffre c2
   -- FAUX sinon
   -- c1 et c2 sont les paramètres entrées de type_Chiffre
   function "=" (c1 : in Type_Chiffre; c2: in Type_Chiffre) return Boolean;

private
   type Type_Chiffre is range -1 .. 1;
   UN      : constant Type_Chiffre := 1;
   ZERO    : constant Type_Chiffre := 0; 
   INCONNU : constant Type_Chiffre := -1; 
   
end Chiffre;
