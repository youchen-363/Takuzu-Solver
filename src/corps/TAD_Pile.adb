package body TAD_Pile is

   --------------------
   -- construirePile --
   --------------------

   function construirePile return Type_Pile is
      p:Type_Pile;
   begin
      p.nb_elements:=0;
      return p;
   end construirePile;

   -------------
   -- estVide --
   -------------

   function estVide (pile : in Type_Pile) return Boolean is
   begin
      return pile.nb_elements=0;
   end estVide;

   -------------
   -- dernier --
   -------------

   function dernier (pile : in Type_Pile) return T is
   begin
      if estVide(pile) then
         raise PILE_VIDE;
      end if;
      return pile.elements(pile.nb_elements);
   end dernier;

   -------------
   -- empiler --
   -------------

   function empiler (pile : in Type_Pile; e : in T) return Type_Pile is
      p:Type_Pile;
   begin
      if pile.nb_elements=TAILLE_MAX then
         raise PILE_PLEINE;
      end if;
      p:=pile;
      p.nb_elements:=p.nb_elements+1;
      p.elements(p.nb_elements):=e;
      return p;
   end empiler;

   -------------
   -- depiler --
   -------------

   function depiler (pile : in Type_Pile) return Type_Pile is
      p:Type_Pile;
   begin
      if estVide(pile) then
         raise PILE_VIDE;
      end if;
      p:=pile;
      p.nb_elements:=p.nb_elements-1;
      return P;
   end depiler;

end TAD_Pile;
