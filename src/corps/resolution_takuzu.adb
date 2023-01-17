with ada.Text_IO,ada.Integer_Text_IO;
use ada.Text_IO,ada.Integer_Text_IO;

package body Resolution_Takuzu is

   --------------------
   -- CompleterLigne --
   --------------------

   procedure CompleterLigne
     (G : in out Type_Grille; L : in Integer; V : in Type_Chiffre; M : in out boolean)
   is
      R      : Type_Rangee;
   begin
      R := extraireLigne(G, L);
      if nombreChiffresDeValeur(R, V) = Taille(R) / 2 and not EstRemplie(R) then
         for I in 1 .. Taille(R) loop
            if EstInconnue(ObtenirChiffre(R, I)) then
               G := FixerChiffre(G, ConstruireCoordonnees(L, i), Complement(V));
               M := true;
            end if;
         end loop;
      end if;
   end CompleterLigne;

   ----------------------
   -- CompleterColonne --
   ----------------------

   procedure CompleterColonne
     (G : in out Type_Grille; Col : in Integer; V : in Type_Chiffre; M : in out boolean)
   is
      R      : Type_Rangee;
   begin
      R := extraireColonne(G, Col);
      if nombreChiffresDeValeur(R, V) = Taille(R) / 2 and not EstRemplie(R) then
         for I in 1 .. Taille(R) loop
            if EstInconnue(ObtenirChiffre(R, I)) then
               G := FixerChiffre(G, ConstruireCoordonnees(I, Col), Complement(V));
               M := true;
            end if;
         end loop;
      end if;
   end CompleterColonne;

   -----------------
   -- BinomeLigne --
   -----------------

   procedure BinomeLigne
     (G : in out Type_Grille; L : in Integer; M : in out boolean)
   is
      R : Type_Rangee;
      coordo : Type_Coordonnee;
   begin
      R := extraireLigne(G, L);
      For I in 1 .. Taille(R) loop
         if EstInconnue(ObtenirChiffre(R, I)) then
            coordo := ConstruireCoordonnees(L, I);
            if SontDeuxChiffresDeDroiteEgaux(R, I) then
               G := FixerChiffre(G, coordo, Complement(chiffreDeDroite(R, I)));
               R := extraireLigne(G, L);
               M := true;
            elsif SontDeuxChiffresDeGaucheEgaux(R, I) then
               G := FixerChiffre(G, coordo, Complement(chiffreDeGauche(R, I)));
               R := extraireLigne(G, L);
               M := true;
            end if;
         end if;
      end loop;
   end BinomeLigne;

   -------------------
   -- BinomeColonne --
   -------------------

   procedure BinomeColonne
     (G : in out Type_Grille; C : in Integer; M : in out boolean)
   is
      R : Type_Rangee;
      coordo : Type_Coordonnee;
   begin
      R := extraireColonne(G, C);
      For I in 1 .. Taille(R) loop
         if EstInconnue(ObtenirChiffre(R, I)) then
            coordo := ConstruireCoordonnees(I, C);
            if SontDeuxChiffresDeDroiteEgaux(R, I) then
               G := FixerChiffre(G, coordo, Complement(chiffreDeDroite(R, I)));
               R := extraireColonne(G, C);
               M := true;
            elsif SontDeuxChiffresDeGaucheEgaux(R, I) then
               G := FixerChiffre(G, coordo, Complement(chiffreDeGauche(R, I)));
               R := extraireColonne(G, C);
               M := true;
            end if;
         end if;
      end loop;
   end BinomeColonne;

   ----------------------
   -- EncadrementLigne --
   ----------------------

   procedure EncadrementLigne
     (G : in out Type_Grille; L : in Integer; M : in out boolean)
   is
      R : Type_Rangee;
   begin
      R := extraireLigne(G, L);
      for I in 2 .. Taille(R) - 1 loop
         if EstInconnue(ObtenirChiffre(R, i)) then
            if chiffreDeDroite(R, i) = chiffreDeGauche(R, i) and not EstInconnue(chiffreDeDroite(R, I)) then
               G := FixerChiffre(G, ConstruireCoordonnees(L, i), Complement(chiffreDeGauche(R, i)));
               M := true;
               R := extraireLigne(G, L);
            end if;
         end if;
      end loop;
   end EncadrementLigne;

   ------------------------
   -- EncadrementColonne --
   ------------------------

   procedure EncadrementColonne
     (G : in out Type_Grille; C : in Integer; M : in out boolean)
   is
      R : Type_Rangee;
   begin
      R := extraireColonne(G, C);
      for I in 2 .. Taille(R) - 1 loop
         if EstInconnue(ObtenirChiffre(R, i)) then
            if chiffreDeDroite(R, i) = chiffreDeGauche(R, i) and not EstInconnue(chiffreDeDroite(R, I)) then
               G := FixerChiffre(G, ConstruireCoordonnees(I, C), Complement(chiffreDeGauche(R, i)));
               M := true;
               R := extraireLigne(G, C);
            end if;
         end if;
      end loop;
   end EncadrementColonne;

   --------------------------
   -- DernierManquantLigne --
   --------------------------

   Procedure DernierManquantLigne
     (G : in out Type_Grille; L : in Integer; V : in Type_Chiffre; M : in out boolean)
   is
      R : Type_Rangee;
   begin
      R := extraireLigne(G, L);
      if nombreChiffresDeValeur(R, V) = ((Taille(R) / 2) - 1) then
         For I in 1 .. Taille(R) loop
            if EstInconnue(ObtenirChiffre(R, I)) then
               R := AjouterChiffre(R, i, V);
               for J in 1 .. Taille(R) loop
                  if EstInconnue(ObtenirChiffre(R, J)) then
                     R := AjouterChiffre(R, J, Complement(V));
                  end if;
               end loop;
               if not VerificationBinomeRange(R) then
                  G := FixerChiffre(G, ConstruireCoordonnees(L, I), Complement(V));
                  M := true;
               end if;
            end if;
            R := extraireLigne(G, L);
         end loop;
      end if;
   end DernierManquantLigne;

   ----------------------------
   -- DernierManquantColonne --
   ----------------------------

   procedure DernierManquantColonne
     (G : in out Type_Grille; C : in Integer; V : in Type_Chiffre; M : in out boolean)
   is
      R : Type_Rangee;
   begin
      R := extraireColonne(G, C);
      if nombreChiffresDeValeur(R, V) = ((Taille(R) / 2) - 1) then
         For I in 1 .. Taille(R) loop
            if EstInconnue(ObtenirChiffre(R, I)) then
               R := AjouterChiffre(R, i, V);
               for J in 1 .. Taille(R) loop
                  if EstInconnue(ObtenirChiffre(R, J)) then
                     R := AjouterChiffre(R, J, Complement(V));
                  end if;
               end loop;
               if not VerificationBinomeRange(R) then
                  G := FixerChiffre(G, ConstruireCoordonnees(I, C), Complement(V));
                  M := true;
               end if;
            end if;
            R := extraireColonne(G, C);
         end loop;
      end if;
   end DernierManquantColonne;

   -----------------------------
   -- VerificationBinomeRange --
   -----------------------------

   Function VerificationBinomeRange
     (R : in Type_Rangee) return boolean
   is
      c : Type_Chiffre;
   begin
      for I in 2 .. Taille(R) - 1 loop
         c := ObtenirChiffre(R, i);
         if c = chiffreDeGauche(R, i) and c = chiffreDeDroite(R, i) and not EstInconnue(C) then
            return false;
         end if;
      end loop;
      return true;
   end VerificationBinomeRange;

   ------------------------------
   -- VerificationBinomeGrille --
   ------------------------------

   function VerificationBinomeGrille
     (G : in Type_Grille) return boolean
   is
      Ligne : Type_Rangee;
      Colonne : Type_Rangee;
   begin
      for I in 1..Taille(G) loop
         Ligne := extraireLigne(G, I);
         Colonne := extraireColonne(G, I);
         if not (VerificationBinomeRange(Ligne) and VerificationBinomeRange(Colonne)) then
            return false;
         end if;
      end loop;
      return true;
   end VerificationBinomeGrille;

   -------------------------------
   -- SontDeuxRangeesIdentiques --
   -------------------------------

   function SontDeuxRangeesIdentiques
     (R1, R2 : in Type_Rangee) return boolean
   is
   begin
      -- Levée de l'exeption tailles invalides si les 2 rangées ne sont pas comparables
      if Taille(R1) /= Taille(R2) then
         raise TAILLES_RANGEES_INVALIDES;
      end if;
      -- Comparaison des 2 rangées
      if EstRemplie(R1) and EstRemplie(R2) then
         for I in 1..Taille(R1) loop
            if ObtenirChiffre(R1, I) /= ObtenirChiffre(R2, I) then
               return false;
            end if;
         end loop;
         return true;
      else
         return false;
      end if;
   end SontDeuxRangeesIdentiques;

   ------------------------------------------
   -- VerificationLignesColonnesIdentiques --
   ------------------------------------------

   Function VerificationLignesColonnesIdentiques
     (G : in Type_Grille) return boolean
   is
      LigneBase : Type_Rangee;
      LigneCompare : Type_Rangee;
      ColonneBase : Type_Rangee;
      ColonneCompare : Type_Rangee;
   begin
      for I in 1 .. Taille(G) loop
         LigneBase := extraireLigne(G, I);
         ColonneBase := extraireColonne(G, I);
         for J in I + 1 .. Taille(G) loop
            LigneCompare := extraireLigne(G, J);
            ColonneCompare := extraireColonne(G, J);
            if SontDeuxRangeesIdentiques(LigneBase, LigneCompare) or SontDeuxRangeesIdentiques(ColonneBase, ColonneCompare) then
               return false;
            end if;
         end loop;
      end loop;
      return true;
   end VerificationLignesColonnesIdentiques;

   ----------------------------
   -- VerificationPileGrille --
   ----------------------------

   function VerificationPileGrille
     (G : in Type_Grille; P : in Type_Pile) return boolean
   is
      GrilleTest : Type_Grille;
      PileTest : Type_Pile;
   begin
      GrilleTest := G;
      PileTest := P;
      while not estVide(PileTest) loop
         GrilleTest := FixerChiffre(GrilleTest, obtenirCoordonneeT(dernier(PileTest)), obtenirChiffreT(dernier(PileTest)));
         PileTest := depiler(PileTest);
      end loop;
      return VerifierGrille(GrilleTest);
   end VerificationPileGrille;

   --------------------
   -- VerifierGrille --
   --------------------

   function VerifierGrille
     (G : in Type_Grille) return boolean
   is
   begin
      return VerificationBinomeGrille(G) and VerificationLignesColonnesIdentiques(G);
   end VerifierGrille;

   ----------------------
   -- PremiereCaseVide --
   ----------------------

   Function PremiereCaseVide
     (G : in Type_Grille) return Type_Coordonnee
   is
      C : Type_Coordonnee;
   begin
      for I in 1 .. Taille(G) loop
         for J in 1 .. Taille(G) loop
            C := ConstruireCoordonnees(I, J);
            if estCaseVide(G, C) then
               return C;
            end if;
         end loop;
      end loop;
      return C;
   end PremiereCaseVide;

   ---------------------
   -- EmpilerCaseVide --
   ---------------------

   procedure EmpilerCaseVide (P : in out Type_Pile; G : in out Type_Grille; V : in Type_Chiffre)
   is
      Te : Type_T;
      C : Type_Coordonnee;
   begin
      C := PremiereCaseVide(G);
      construireT(Te, C, V);
      P := empiler(P, Te);
      G := FixerChiffre(G, C, V);
   end EmpilerCaseVide;

   -------------------------
   -- depilerDerniereCase --
   -------------------------

   procedure depilerDerniereCase
     (P : in out Type_Pile; G : in out Type_Grille)
   is
   begin
      G := ViderCase(G, obtenirCoordonneeT(dernier(P)));
      P := depiler(P);
   end depilerDerniereCase;

   -----------------------------
   -- RemplirGrilleAvecBinome --
   -----------------------------

   procedure RemplirGrilleAvecBinome
     (G : in out Type_Grille; M : in out boolean)
   is
      Maj : boolean;
   begin
      Maj := true;
      while Maj loop
         Maj := false;
         for I in 1 .. Taille(G) loop
            BinomeLigne(G, I, Maj);
            BinomeColonne(G, I, Maj);
         end loop;
         if Maj then
            M := true;
         end if;
      end loop;
   end RemplirGrilleAvecBinome;

   ----------------------------------
   -- RemplirGrilleAvecEncadrement --
   ----------------------------------

   procedure RemplirGrilleAvecEncadrement
     (G : in out Type_Grille; M : in out boolean)
   is
      Maj : boolean;
   begin
      Maj := true;
      while Maj loop
         Maj := false;
         for I in 1 .. Taille(G) loop
            EncadrementLigne(G, I, Maj);
            EncadrementColonne(G, I, Maj);
         end loop;
         if Maj then
            M := true;
         end if;
      end loop;
   end RemplirGrilleAvecEncadrement;

   --------------------------------
   -- RemplirGrilleAvecCompleter --
   --------------------------------

   procedure RemplirGrilleAvecCompleter
     (G : in out Type_Grille; M : in out boolean)
   is
      Maj : boolean;
   begin
      Maj := true;
      while Maj loop
         Maj := false;
         for I in 1 .. Taille(G) loop
            CompleterLigne(G, I, UN, Maj);
            CompleterColonne(G, I, UN, Maj);
            CompleterLigne(G, I, ZERO, Maj);
            CompleterColonne(G, I, ZERO, Maj);
         end loop;
         if Maj then
            M := true;
         end if;
      end loop;
   end RemplirGrilleAvecCompleter;

   --------------------------------
   -- RemplirGrilleReglesSimples --
   --------------------------------

   Procedure RemplirGrilleReglesSimples (G : in out Type_Grille; M : in out boolean)
   is
      Maj : boolean;
   begin
      Maj := true;
      while maj loop
         Maj := false;
         RemplirGrilleAvecBinome(G, Maj);
         RemplirGrilleAvecEncadrement(G, Maj);
         RemplirGrilleAvecCompleter(G, Maj);
         if Maj then
            M := true;
         end if;
      end loop;
   end RemplirGrilleReglesSimples;

   --------------------------------
   -- RemplirGrilleRegleComplexe --
   --------------------------------

   Procedure RemplirGrilleRegleComplexe
     (G : in out Type_Grille; M : in out boolean)
   is
      Maj : boolean;
   begin
      Maj := true;
      while Maj loop
         Maj := false;
         for I in 1..Taille(G) loop
            DernierManquantLigne(G, I, UN, maj);
            DernierManquantColonne(G, I, UN, maj);
            DernierManquantLigne(G, I, ZERO, maj);
            DernierManquantColonne(G, I, ZERO, maj);
         end loop;
         if Maj then
            M := true;
         end if;
      end loop;
   end RemplirGrilleRegleComplexe;

   ------------------
   -- Backtracking --
   ------------------

   procedure Backtracking
     (G : in out Type_Grille)
   is
      P           : Type_Pile;
      GrilleTest  : Type_Grille;
   begin
      P := construirePile;
      GrilleTest := G;
      EmpilerCaseVide(P, GrilleTest, UN);
      while not (EstRemplie(GrilleTest) and VerificationPileGrille(G, P)) loop
         if VerificationPileGrille(G, P) then
            EmpilerCaseVide(P, GrilleTest, UN);
         else
            depilerDerniereCase(P, GrilleTest);
            EmpilerCaseVide(P, GrilleTest, ZERO);
            if not VerificationPileGrille(G, P) then
               depilerDerniereCase(P, GrilleTest);
               if not estVide(P) then
                  depilerDerniereCase(P, GrilleTest);
               end if;
               EmpilerCaseVide(P, GrilleTest, ZERO);
            end if;
         end if;
      end loop;
      G := GrilleTest;
   end Backtracking;

   --------------------
   -- ResoudreTakuzu --
   --------------------

   procedure ResoudreTakuzu (G : in out Type_Grille; Trouve : out Boolean) is
      Maj : boolean;
   begin
      Maj := true;
      while Maj loop
         Maj := false;
         RemplirGrilleReglesSimples(G, Maj);
         RemplirGrilleRegleComplexe(G, Maj);
      end loop;
      if not EstRemplie(G) then
         Backtracking(G);
      end if;
      trouve := VerifierGrille(G);
   end ResoudreTakuzu;

end Resolution_Takuzu;
