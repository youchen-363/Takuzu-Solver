package body Coordonnee is

   ---------------------------
   -- ConstruireCoordonnees --
   ---------------------------

   function ConstruireCoordonnees
     (Ligne, Colonne : in Integer) return Type_Coordonnee
   is
      c:Type_Coordonnee;
   begin
      c.Ligne:=Ligne;
      c.Colonne:=Colonne;
      return c;
   end ConstruireCoordonnees;

   ------------------
   -- ObtenirLigne --
   ------------------

   function ObtenirLigne (C : in Type_Coordonnee) return Integer is
   begin
      return c.Ligne;
   end ObtenirLigne;

   --------------------
   -- ObtenirColonne --
   --------------------

   function ObtenirColonne (C : in Type_Coordonnee) return Integer is
   begin
      return c.Colonne;
   end ObtenirColonne;

   ----------
   -- Haut --
   ----------

   function Haut (C : in Type_Coordonnee) return Type_Coordonnee is
      co:Type_Coordonnee;
   begin
      co:=c;
      co.Ligne:=co.Ligne-1;
      return co;
   end Haut;

   ---------
   -- Bas --
   ---------

   function Bas (C : in Type_Coordonnee) return Type_Coordonnee is
      co:Type_Coordonnee;
   begin
      co:=c;
      co.Ligne:=co.Ligne+1;
      return co;

   end Bas;

   ------------
   -- droite --
   ------------

   function droite (C : in Type_Coordonnee) return Type_Coordonnee is
      co:Type_Coordonnee;
   begin
      co:=c;
      co.Colonne:=co.Colonne+1;
      return co;
   end droite;

   ------------
   -- gauche --
   ------------

   function gauche (C : in Type_Coordonnee) return Type_Coordonnee is
      co:Type_Coordonnee;
   begin
      co:=c;
      co.Colonne:=co.Colonne-1;
      return co;
   end gauche;

end Coordonnee;
