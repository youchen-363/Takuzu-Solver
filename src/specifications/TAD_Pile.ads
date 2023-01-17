generic
   type T is private;

package TAD_Pile is

   TAILLE_MAX : constant := 255;
   type Type_Pile is private ;

   PILE_VIDE : exception;
   PILE_PLEINE : exception;

   -- construit une pile vide
   -- retourne Type_Pile
   function construirePile return Type_Pile;

   -- permet de verifier si une pile est vide
   -- retourne VRAI si une pile est vide
   -- retourne FAUX sinon
   -- pile est un paramètre entrée de type_pile
   function estVide (pile : in Type_Pile) return Boolean;

   -- permet d'obtenir l'element le plus récent d'une pile
   -- retourne l'element le plus récent de la pile
   -- retourne type T
   -- pile est un paramètre entrée de type_pile
   -- necessite la pile n'est pas vide cad estVide(pile)=FAUX
   -- leve l'exception PILE_VIDE si la pile est vide càd estVide(pile)=VRAI
   function dernier (pile : in Type_Pile) return T;

   -- ajoute un élément à la pile
   -- retourne Type_Pile
   -- pile est un paramètre entrée de type_pile
   -- e est l'element ajouté, un paramètre entrée de Type_Pile
   -- necessite la pile n'est pas pleine cad les nombre elements de la pile /= TAILLE_MAX
   -- leve l'exception PILE_PLEINE si la pile est vide càd estVide(pile)=VRAI
   function empiler (pile : in Type_Pile ; e : in T) return Type_Pile;

   -- supprime l'element le plus recent de la pile
   -- retourne Type_Pile
   -- pile est un paramètre entrée de type_pile
   -- necessite la pile n'est pas vide cad estVide(pile)=FAUX
   -- leve l'exception PILE_VIDE si la pile est vide càd estVide(pile)=VRAI
   function depiler (pile : in Type_Pile) return Type_Pile;

private
   type Tableau is array (1 .. TAILLE_MAX) of T;
   type Type_Pile is record
      elements          : Tableau;
      nb_elements       : Integer   := 0;
   end record;

end TAD_Pile;
