with Grille;     use Grille;
with Coordonnee; use Coordonnee;
with Chiffre;    use Chiffre;
with Rangee;     use Rangee;
with TAD_Type_T; use TAD_Type_T;
with Pile_type_T; use Pile_type_T;
with Affichage;  use Affichage;

package Resolution_Takuzu is

   TAILLES_RANGEES_INVALIDES : exception;

   -- Règle 1 : dans la grille G, si la ligne L a déjà la moitié des cases remplies avec la valeur V (UN ou ZERO)
   -- alors remplit les cases vides de la ligne L avec le chiffre complémentaire de V
   -- M prend la valeur vrai si la grille G a été mise à jour
   procedure CompleterLigne
     (G : in out Type_Grille; L : in Integer; V : in Type_Chiffre; M : in out boolean);

   -- Règle 1 : dans la grille G, si la colonne C a déjà la moitié des cases remplies avec la valeur V (UN ou ZERO)
   -- alors remplit les cases vides de la colonne C avec le chiffre complémentaire de V
   -- M prend la valeur vrai si la grille G a été mise à jour
   procedure CompleterColonne
     (G : in out Type_Grille; Col : in Integer; V : in Type_Chiffre; M : in out boolean);

   -- Règle 2 : dans la grille G, si une case de la ligne L est vide et suivie de 2 UN ou de 2 ZERO, à gauche ou à droite,
   -- alors fixe le chiffre complémentaire dans la case qui était vide
   -- M prend la valeur vrai si la grille G a été mise à jour
   procedure BinomeLigne
     (G : in out Type_Grille; L : in Integer; M : in out boolean);

   -- Règle 2 : dans la grille G, si une case de la colonne C est vide et suivie de 2 UN ou de 2 ZERO, en haut ou en bas,
   -- alors fixe le chiffre complémentaire dans la case qui était vide
   -- M prend la valeur vrai si la grille G a été mise à jour
   procedure BinomeColonne
     (G : in out Type_Grille; C : in Integer; M : in out boolean);

   -- Règle 3 : dans la grille G, si une case de la ligne L est vide et encadrée de UN ou de ZERO, à gauche et à droite,
   -- alors fixe le chiffre complémentaire dans la case qui était vide
   -- M prend la valeur vrai si la grille G a été mise à jour
   Procedure EncadrementLigne
     (G : in out Type_Grille; L : in Integer; M : in out boolean);

   -- Règle 3 : dans la grille G, si une case de la colonne C est vide et encadrée de UN ou de ZERO, en haut et en bas,
   -- alors fixe le chiffre complémentaire dans la case qui était vide
   -- M prend la valeur vrai si la grille G a été mise à jour
   Procedure EncadrementColonne
     (G : in out Type_Grille; C : in Integer; M : in out boolean);

   -- Règle 4 : dans la grille G, si dans la ligne L il ne manque qu'une occurence du chiffre V
   -- alors fixe le chiffre V dans la case vide en cours et fixe le complement du chiffre V dans les autres cases vides
   -- vérifie si la ligne respecte la règle : il ne peut y avoir plus de 2 occurences conjointes du meme chiffre
   -- Si la règle est respectée, vide l'ensemble des cases remplies durant la procedure
   -- Sinon, fixe le complement du chiffre V dans la case vide initiale et vide les autres cases vides remplies
   -- M prend la valeur vrai si la grille G a été mise à jour
   Procedure DernierManquantLigne
     (G : in out Type_Grille; L : in Integer; V : in Type_Chiffre; M : in out boolean);

   -- Règle 4 :  Complete les colonnes avec un numéro manquant de UN ou de ZERO
   -- dans la grille G, observe la colonne C et compte le nombre de chiffres V renseignés dans celle-ci
   -- Si dans la colonne C il ne manque qu'une occurence du chiffre V alors
   -- Observe chaque case vide et pour chaque case vide observée
   -- fixe le chiffre dans la case vide en cours et fixe le complement du chiffre V dans les autres cases vides
   -- vérifie si la colonne C respecte la règle : il ne peut y avoir plus de 2 occurences du meme chiffre conjointes
   -- Si la règle est respectée, vide l'ensemble des cases remplies durant la procedure
   -- Sinon, fixe le complement du chiffre V dans la case vide initiale et vide les autres cases vides remplies
   -- M prend la valeur vrai si la grille G a été mise à jour
   Procedure DernierManquantColonne
     (G : in out Type_Grille; C : in Integer; V : in Type_Chiffre; M : in out boolean);

   -- Verification binome : Vérifie la validité de la règle des deux chiffres adjacents maximaux dans une rangee R
   -- Renvoie vrai si la règle est respectée
   -- Faux sinon
   Function VerificationBinomeRange
     (R : in Type_Rangee) return boolean;

   -- Applique la vérification de la fonction Verification binome à toutes les rangées d'une grille G
   -- Renvoie vrai si la règle est respectée
   -- Faux sinon
   function VerificationBinomeGrille
     (G : in Type_Grille) return boolean;

   -- permet de verifier si deux rangees R1 et R2 sont identiques
   -- renvoie vrai si deux rangees sont identiques et faux sinon
   function SontDeuxRangeesIdentiques
     (R1, R2 : in Type_Rangee) return boolean;

   -- Verification identique :  vérifie que les lignes et colonnes de la grille G respectent la règle
   -- Compare chaque lignes entre elles et chaque colonnes entre elles
   -- Renvoie vrai si 2 lignes ou colonnes sont identiques
   -- Faux sinon
   Function VerificationLignesColonnesIdentiques
     (G : in Type_Grille) return boolean;

   -- Renvoie la premiere case vide d'une grille G renseignee
   Function PremiereCaseVide
     (G : in Type_Grille) return Type_Coordonnee;

   -- Verifie la validité de la grille G en vérifiant toutes les règles
   function VerifierGrille
     (G : in Type_Grille) return boolean;

   -- Fixe V à la 1ere case vide de la grille G
   -- et empile T à la pile P et T prend comme valeur les coordonées de la case vide et V
   procedure EmpilerCaseVide
     (P : in out Type_Pile; G : in out Type_Grille; V : in Type_Chiffre);

   -- Dépile de la pile P la dernière case remplie dans la grille G
   procedure depilerDerniereCase
     (P : in out Type_Pile; G : in out Type_Grille);

   -- Rempli la grille G en appliquant la règle 1 : les cases vides d'une rangée ayant un chiffre déjà complet
   -- doivent prendre la valeur du complement de ce chiffre
   -- M prend la valeur vrai si la grille G a été mise à jour
   procedure RemplirGrilleAvecCompleter
     (G : in out Type_Grille; M : in out boolean);

   -- Rempli la grille G en appliquant la règle 2 : une case vide suivie ou précédée de 2 chiffres identiques
   -- doit prendre la valeur du complement
   -- M prend la valeur vrai si la grille G a été mise à jour
   procedure RemplirGrilleAvecBinome
     (G : in out Type_Grille; M : in out boolean);

   -- Rempli la grille G en appliquant la règle 3 : une case vide suivie encadrée de 2 chiffres identiques
   -- doit prendre la valeur du complement
   -- M prend la valeur vrai si la grille G a été mise à jour
   procedure RemplirGrilleAvecEncadrement
     (G : in out Type_Grille; M : in out boolean);

   -- Rempli la grille G en appliquant en boucle les règles 1 à 3 jusqu'a ce que la grille ne se mette plus à jour
   -- M prend la valeur vrai si la grille G a été mise à jour
   Procedure RemplirGrilleReglesSimples
     (G : in out Type_Grille; M : in out boolean);

   -- Rempli la grille G en appliquant la règle 4 jusqu'a ce que la grille ne se mette plus à jour
   -- M prend la valeur vrai si la grille G a été mise à jour
   Procedure RemplirGrilleRegleComplexe
     (G : in out Type_Grille; M : in out boolean);

   -- Termine la grille G grace au backtracking
   procedure Backtracking
     (G : in out Type_Grille);

   -- si la solution a ete trouvee pour la grille G, alors Trouve prend la valeur VRAI et la grille G est complete
   -- sinon Trouve prend la valeur FAUX et la grille G n'a aucune valeur significative
   procedure ResoudreTakuzu (G : in out Type_Grille; Trouve : out Boolean);

end Resolution_Takuzu;
