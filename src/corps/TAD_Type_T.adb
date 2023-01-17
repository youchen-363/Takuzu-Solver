package body TAD_Type_T is

   -----------------
   -- construireT --
   -----------------

   procedure construireT
     (Te : in out type_T; C : in Type_Coordonnee; V : in Type_Chiffre)
   is
   begin
      Te.C := C;
      Te.V := V;
   end construireT;

   ------------------------
   -- obtenirCoordonneeT --
   ------------------------

   function obtenirCoordonneeT
     (Te : in type_T) return Type_Coordonnee
   is
   begin
      return Te.C;
   end obtenirCoordonneeT;

   ---------------------
   -- obtenirChiffreT --
   ---------------------

   function obtenirChiffreT
     (Te : in type_T) return Type_Chiffre
   is
   begin
      return Te.V;
   end obtenirChiffreT;

end TAD_Type_T;
