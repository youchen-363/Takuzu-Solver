with Chiffre;     use Chiffre;
with Coordonnee;  use Coordonnee;

package TAD_Type_T is

   type type_T is private ;

   -- construire T avec la coordonnee c et le chiffre V
   -- Te est un paramètre entrée et sortie de Type_T
   -- C est un paramètre entrée de Type_Coordonnee
   -- V est un paramètre entrée de Type_Chiffre
   procedure construireT
     (Te : in out type_T; C : in Type_Coordonnee; V : in Type_Chiffre);

   -- permet d'obtenir la coordonnee C de T
   -- retourne la coordonnee C enregistrée dans T
   -- retourne type_coordonnee
   -- Te est un paramètre entrée de Type_T
   function obtenirCoordonneeT (Te : in type_T) return Type_Coordonnee;

   -- permet d'obtenir le chiffre V de T
   -- retourne le chiffre V enregistré dans T
   -- retourne Type_Chiffre
   -- Te est un paramètre entrée de Type_T
   function obtenirChiffreT (Te : in type_T) return Type_Chiffre;

private
   type type_T is record
      C : Type_Coordonnee;
      V : Type_Chiffre;
   end record;

end TAD_Type_T;
