package body A_Tester_Coordonnees is

   -----------------------
   -- tests coordonnees --
   -----------------------

   -- test obtenirLigne
   function Test_Coordonnees_P1 return Boolean is
   begin
      return ObtenirLigne (ConstruireCoordonnees (1, 2)) = 1;
   end Test_Coordonnees_P1;

   -- test obtenirColonne
   function Test_Coordonnees_P2 return Boolean is
   begin
      return ObtenirColonne (ConstruireCoordonnees (1, 2)) = 2;
   end Test_Coordonnees_P2;

    -- test haut
   function Test_Coordonnees_P3 return Boolean is
      C1 : Type_Coordonnee;
      C2 : Type_Coordonnee;
   begin
      C1 := ConstruireCoordonnees (1, 2);
      C2 := ConstruireCoordonnees (0, 2);
      return Haut(C1) = C2;
   end Test_Coordonnees_P3;

    -- test bas
   function Test_Coordonnees_P4 return Boolean is
      C1 : Type_Coordonnee;
      C2 : Type_Coordonnee;
   begin
      C1 := ConstruireCoordonnees (1, 2);
      C2 := ConstruireCoordonnees (2, 2);
      return Bas(C1) = C2;
   end Test_Coordonnees_P4;

    -- test droite
   function Test_Coordonnees_P5 return Boolean is
      C1 : Type_Coordonnee;
      C2 : Type_Coordonnee;
   begin
      C1 := ConstruireCoordonnees (1, 2);
      C2 := ConstruireCoordonnees (1, 3);
      return Droite(C1) = C2;
   end Test_Coordonnees_P5;

    -- test gauche
   function Test_Coordonnees_P6 return Boolean is
      C1 : Type_Coordonnee;
      C2 : Type_Coordonnee;
   begin
      C1 := ConstruireCoordonnees (1, 2);
      C2 := ConstruireCoordonnees (1, 1);
      return Gauche(C1) = C2;
   end Test_Coordonnees_P6;

end A_Tester_Coordonnees;
