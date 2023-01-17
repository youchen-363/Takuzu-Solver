package body Chiffre is

   -------------------
   -- ValeurChiffre --
   -------------------

   function ValeurChiffre (C : in Type_Chiffre) return Integer is
   begin
      return Integer(C);
   end ValeurChiffre;

   -----------------
   -- EstInconnue --
   -----------------

   function EstInconnue (C : in Type_Chiffre) return Boolean is
   begin
      return C = INCONNU;
   end EstInconnue;

   ----------------
   -- Complement --
   ----------------

   function Complement (C : in Type_Chiffre) return Type_Chiffre is
   begin
      if c = UN then
         return ZERO;
      elsif c = ZERO then
         return UN;
      else
         raise VALEUR_INCONNUE;
      end if;
   end Complement;

   ---------
   -- "=" --
   ---------

   function "=" (c1 : in Type_Chiffre; c2 : in Type_Chiffre) return Boolean is
   begin
      return ValeurChiffre(c1) = ValeurChiffre(c2);
   end "=";

end Chiffre;
