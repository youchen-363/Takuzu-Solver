with TAD_Type_T; use TAD_Type_T;
-- bibliothèque de gestion de chaînes de caractères
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
-- types utilisés pour les tests
with Types_Tests; use Types_Tests;

package a_tester_TypeT is

   -- tests TAD TypeT
   function Test_TypeT_P1 return Boolean;
   function Test_TypeT_P2 return Boolean;
   function Test_TypeT_P3 return Boolean;
   function Test_TypeT_P4 return Boolean;

   Les_Tests : constant array (Positive range <>) of Test_Unitaire :=
     ((Test_TypeT_P1'Access,
       To_Unbounded_String ("echec de la propriete 1 TypeT")),
      (Test_TypeT_P2'Access,
       To_Unbounded_String ("echec de la propriete 2 TypeT")),
     (Test_TypeT_P3'Access,
       To_Unbounded_String ("echec de la propriete 3 TypeT")),
      (Test_TypeT_P4'Access,
       To_Unbounded_String ("echec de la propriete 4 TypeT")));

   Resultats : array (Les_Tests'Range) of Boolean;

end a_tester_TypeT;
