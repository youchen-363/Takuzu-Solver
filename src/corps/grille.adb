package body Grille is

   ----------------------
   -- ConstruireGrille --
   ----------------------

   function ConstruireGrille (T : Integer) return Type_Grille is
      grille : Type_Grille;
   begin
      -- Levée d'exeption si la taille entree n'est pas valide
      if T < 4 or T > TAILLE_MAX or T mod 2 = 1 then
         raise TAILLE_GRILLE_INVALIDE;
      end if;
      -- Creation de la grille de taille T
      grille.Taille := T;
      for I in 1 .. grille.Taille loop
         for J in 1 .. grille.Taille loop
            grille.G(I,J) := INCONNU;
         end loop;
      end loop;
      return grille;
   end ConstruireGrille;

   ------------
   -- Taille --
   ------------

   function Taille (G : in Type_Grille) return Integer is
   begin
      return G.Taille;
   end Taille;

   -----------------
   -- estCaseVide --
   -----------------

   function estCaseVide
     (G : in Type_Grille; C : in Type_Coordonnee) return Boolean is
   begin
      return EstInconnue(G.G(ObtenirLigne(C),ObtenirColonne(C)));
   end estCaseVide;

   --------------------
   -- ObtenirChiffre --
   --------------------

   function ObtenirChiffre
     (G : in Type_Grille; C : in Type_Coordonnee) return Type_Chiffre is
   begin
      -- levee d'exeption si la case est vide
      if estCaseVide(G,C) then
         raise CASE_VIDE;
      end if;
      -- Renvoie le chiffre correspondant à la case demandée
      return G.G(ObtenirLigne(C),ObtenirColonne(C));
   end ObtenirChiffre;

   --------------------------
   -- NombreChiffresConnus --
   --------------------------

   function NombreChiffresConnus (G : in Type_Grille) return Integer is
      compteur : Integer;
   begin
      compteur := 0;
      for I in 1 .. Taille(G) loop
         for J in 1 .. Taille(G) loop
            if not EstInconnue(G.G(i,j)) then
               compteur := compteur + 1;
            end if;
         end loop;
      end loop;
      return compteur;
   end NombreChiffresConnus;

   ----------------
   -- EstRemplie --
   ----------------

   function EstRemplie (G : in Type_Grille) return Boolean
   is
   begin
      return NombreChiffresConnus(G) = Taille(G) * Taille(G);
   end EstRemplie;

   -------------------
   -- extraireLigne --
   -------------------

   function extraireLigne(G : in Type_Grille; L : in Integer) return Type_Rangee is
      R      : Type_Rangee;
      coordo : Type_Coordonnee;
   begin
      R := ConstruireRangee(Taille(G));
      for I in 1 .. Taille(R) loop
         coordo := ConstruireCoordonnees(L,i);
         if not estCaseVide(G, coordo) then
            R := AjouterChiffre(R, I, ObtenirChiffre(G, coordo));
         end if;
      end loop;
      return R;
   end extraireLigne;

   ---------------------
   -- extraireColonne --
   ---------------------

   function extraireColonne
     (G : in Type_Grille; C : in Integer) return Type_Rangee
   is
      R      : Type_Rangee;
      coordo : Type_Coordonnee;
   begin
      R:= ConstruireRangee(Taille(G));
      for I in 1 .. Taille(G) loop
         coordo := ConstruireCoordonnees(I,C);
         if not estCaseVide(G, coordo) then
            R := AjouterChiffre(R,I,ObtenirChiffre(G,coordo));
         end if;
      end loop;
      return R;
   end extraireColonne;

   ------------------
   -- FixerChiffre --
   ------------------

   function FixerChiffre
     (G : in Type_Grille; C : in Type_Coordonnee; V : in Type_Chiffre) return Type_Grille
   is
      grille : Type_Grille;
   begin
      -- levee d'exeption si la case est déja remplie
      if not estCaseVide(G,C) then
         raise FIXER_CHIFFRE_NON_NUL;
      end if;
      grille := G;
      grille.G(ObtenirLigne(C),ObtenirColonne(C)):= V;
      return grille;
   end FixerChiffre;

   ---------------
   -- ViderCase --
   ---------------

   function ViderCase
     (G : in Type_Grille; C : in Type_Coordonnee) return Type_Grille
   is
      grille : Type_Grille;
   begin
      -- levee d'exeption si la case est déja vide
      if estCaseVide(G,C) then
         raise VIDER_CASE_VIDE;
      end if;
      grille :=G;
      grille.G(ObtenirLigne(C),ObtenirColonne(C)) := INCONNU;
      return grille;
   end ViderCase;

end Grille;
