with Coordonnee; use Coordonnee;
with Chiffre; use Chiffre;
package body a_tester_TypeT is

   -------------------
   -- Test_TypeT_P1 --
   -------------------

   -- test obtenirCoordonnee
   function Test_TypeT_P1 return Boolean is
      c:Type_Coordonnee;
      Te:type_T;
      V:Type_Chiffre;
   begin
      V:=UN;
      c:=ConstruireCoordonnees(1,1);
      construireT(Te,C,V);
      return obtenirCoordonneeT(Te)=C;
   end Test_TypeT_P1;

   -------------------
   -- Test_TypeT_P2 --
   -------------------

   -- test obtenirChiffreT avec INCONNU
   function Test_TypeT_P2 return Boolean is
    c:Type_Coordonnee;
      Te:type_T;
      V:Type_Chiffre;
   begin
      V:=INCONNU;
      c:=ConstruireCoordonnees(1,1);
      construireT(Te,C,V);
      return obtenirChiffreT(Te)=V;
   end Test_TypeT_P2;

   -------------------
   -- Test_TypeT_P3 --
   -------------------

   -- test obtenirChiffreT avec ZERO
   function Test_TypeT_P3 return Boolean is
      c:Type_Coordonnee;
      Te:type_T;
      V:Type_Chiffre;
   begin
      V:=ZERO;
      c:=ConstruireCoordonnees(1,1);
      construireT(Te,C,V);
      return obtenirChiffreT(Te)=V;
   end Test_TypeT_P3;

   -------------------
   -- Test_TypeT_P4 --
   -------------------

   -- test obtenirChiffreT avec UN
   function Test_TypeT_P4 return Boolean is
      c:Type_Coordonnee;
      Te:type_T;
      V:Type_Chiffre;
   begin
      V:=UN;
      c:=ConstruireCoordonnees(1,1);
      construireT(Te,C,V);
      return obtenirChiffreT(Te)=V;
   end Test_TypeT_P4;

end a_tester_TypeT;
