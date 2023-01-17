with Chiffre; use Chiffre;
package body Rangee is

   ----------------------
   -- ConstruireRangee --
   ----------------------

   function ConstruireRangee (T : in Integer) return Type_Rangee is
      rangee : Type_Rangee;
   begin
      rangee.Taille := T;
      for I in 1 .. T loop
         rangee.R(I) := INCONNU;
      end loop;
      return rangee;
   end ConstruireRangee;

   -------------
   -- EstVide --
   -------------

   function EstVide (R : in Type_Rangee) return Boolean is
   begin
      for I in 1 .. R.Taille loop
         --cherche dans la rangee si un element est different de inconnu
         if not EstInconnue(R.R(i)) then
            return false;
         end if;
      end loop;
      return True;
   end EstVide;

   ----------------
   -- EstRemplie --
   ----------------

   function EstRemplie (R : in Type_Rangee) return Boolean is
   begin
      for I in 1 .. Taille(R) loop
         --cherche dans la rangee si un element est inconnu
         if EstInconnue(R.R(i)) then
            return false;
         end if;
      end loop;
      return True;
   end EstRemplie;

   ------------
   -- Taille --
   ------------

   function Taille (R : in Type_Rangee) return Integer is
   begin
      return R.Taille;
   end Taille;

   --------------------
   -- ObtenirChiffre --
   --------------------

   function ObtenirChiffre (R : in Type_Rangee; I : in Integer) return Type_Chiffre
   is
   begin
      -- levée d'exeption si la tranche est invalide
      if I < 1 or I > R.Taille then
         raise TRANCHE_INVALIDE;
      end if;
      -- Retourne le chiffre correspondant
      if R.R(I) = UN then
         return UN;
      elsif R.R(I) = ZERO then
         return ZERO;
      else
         return INCONNU;
      end if;
   end ObtenirChiffre;

   --------------------------
   -- nombreChiffresConnus --
   --------------------------

   function nombreChiffresConnus (R : in Type_Rangee) return Integer is
      compteur : Integer;
   begin
      compteur := Taille(R);
      for I in 1 .. Taille(R) loop
         if EstInconnue(R.R(i)) then
            compteur := compteur-1;
         end if;
      end loop;
      return compteur;
   end nombreChiffresConnus;

   ----------------------------
   -- nombreChiffresDeValeur --
   ----------------------------

   function nombreChiffresDeValeur
     (R : in Type_Rangee; V : in Type_Chiffre) return Integer
   is
      compteur : Integer;
   begin
      compteur := 0;
      for I in 1 .. Taille(R) loop
         if ObtenirChiffre(R,I) = V then
            compteur := compteur + 1;
         end if;
      end loop;
      return compteur;
   end nombreChiffresDeValeur;

   ---------------------
   -- chiffreDeDroite --
   ---------------------

   function chiffreDeDroite
     (E : in Type_Rangee; I : in Integer) return Type_Chiffre is
   begin
      -- levée d'exeption si la tranche est invalide
      if I < 1 or I > Taille(E)  then
         raise TRANCHE_INVALIDE;
      end if;
      if I = Taille(E) THEN
         return INCONNU;
      else
         return E.R(I+1);
      end if;
   end chiffreDeDroite;

   ---------------------
   -- chiffreDeGauche --
   ---------------------

   function chiffreDeGauche
     (E : in Type_Rangee; I : in Integer) return Type_Chiffre is
   begin
      -- levée d'exeption si la tranche est invalide
      if I < 1 or I > Taille(E) then
         raise TRANCHE_INVALIDE;
      end if;
      if I = 1 then
         return INCONNU;
      else
         return E.R(I-1);
      end if;
   end chiffreDeGauche;

   -----------------------------------
   -- SontDeuxChiffresDeDroiteEgaux --
   -----------------------------------

   function SontDeuxChiffresDeDroiteEgaux
     (E : in Type_Rangee; I : in Integer) return Boolean is
   begin
      -- levée d'exeption si la tranche est invalide
      if I < 1 or I > Taille(E) then
         raise TRANCHE_INVALIDE;
      end if;
      return I<(Taille(E)-1)
        and then not (EstInconnue(chiffreDeDroite(E,I)) or EstInconnue(chiffreDeDroite(E,I+1)))
        and then chiffreDeDroite(E,I) = chiffreDeDroite(E,I+1);
   end SontDeuxChiffresDeDroiteEgaux;

   -----------------------------------
   -- SontDeuxChiffresDeGaucheEgaux --
   -----------------------------------

   function SontDeuxChiffresDeGaucheEgaux
     (E : in Type_Rangee; I : in Integer) return Boolean is
   begin
      if I < 1 or I > Taille(E) then
         raise TRANCHE_INVALIDE;
      end if;
      return I>2
        and then NOT (EstInconnue(chiffreDeGauche(E,I)) or EstInconnue(chiffreDeGauche(E,I-1)))
        and then chiffreDeGauche(E,I) = chiffreDeGauche(E,I-1);
   end SontDeuxChiffresDeGaucheEgaux;

   --------------------
   -- AjouterChiffre --
   --------------------

   function AjouterChiffre
     (R : in Type_Rangee; I : in Integer; C : in Type_Chiffre)
      return Type_Rangee
   is
      rang : Type_Rangee;
   begin
      -- Levée d'exeption lors du renseignement d'un indice de case invalide
      if I < 1 or I > Taille(R) then
         raise TRANCHE_INVALIDE;
      end if;
      -- Ajout du chiffre dans la case correspondante
      rang := R;
      rang.R(I):= C;
      return rang;
   end AjouterChiffre;

   --------------------
   -- RetirerChiffre --
   --------------------

   function RetirerChiffre
     (R : in Type_Rangee; I : in Integer) return Type_Rangee
   is
      rangee : Type_Rangee;
   begin
      -- levée d'exeption si la tranche est invalide
      if I < 1 or I > Taille(R) then
         raise TRANCHE_INVALIDE;
      end if;
      rangee := R;
      rangee.R(I):=INCONNU;
      return rangee;
   end RetirerChiffre;

end Rangee;
