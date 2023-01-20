with GNAT.Formatted_String;

with Gdk.Event; use gdk.Event;
WITH Gtk.Main ;          USE Gtk.Main ;
WITH Gtk.Window ;        USE Gtk.Window ;
WITH Gtk.Enums ;         USE Gtk.Enums ;
WITH Gtk.Button ;        USE Gtk.Button ;
WITH Gtk.Table ;         USE Gtk.Table ;
with Gtk.Widget; use Gtk.Widget;
with Gdk; use Gdk;
with Gtk.Label; use Gtk.Label;
with Ada.Text_IO,Ada.Integer_Text_IO ; 
use Ada.Text_IO,Ada.Integer_Text_IO ; 
with Glib; use Glib;
with Grille; use Grille;
with Remplir_Grille_Takuzu; use Remplir_Grille_Takuzu;
with Affichage; use Affichage;
with Coordonnee; use Coordonnee;
with Chiffre; use Chiffre;
with Ada.Strings.Fixed;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Resolution_Takuzu; use Resolution_Takuzu;
with Gtk.Box; use Gtk.Box;
with Gtk.Grid; use Gtk.Grid;

procedure gui is

   Win                     : Gtk_Window ;
   Tableau,Tableau2        : Gtk_Table ;
   label,label1,label2     : Gtk_Label;
   Taille_Max              : Integer;
   row, column             : Integer;
   G8                      : Type_Grille;
   coord                   : Type_Coordonnee;
   x                       : Integer;
   y                       : Integer;
   vcase                   : Integer;
   trouve                  : Boolean;
   nbChiffresDepart        : Integer;
   VBox,VBox2              : GTK_VBox;

   Type T_Tableau is array(1..Taille_Max,1..Taille_Max) of Integer ;  
   
   Procedure Afficher(T : T_Tableau) is
   begin
      for i in T'range loop
         for j in 1..i loop 
            Put(T(i,j)) ; 
         end loop ; 
         new_line ; 
      end loop; 
   end Afficher ;

   function Delete_Event_Cb
     (Self  : access Gtk_Widget_Record'Class;
      Event : Gdk.Event.Gdk_Event)
      return Boolean
   is
      pragma Unreferenced (Self, Event);
   begin
      Gtk.Main.Main_Quit;
      return True;
   end Delete_Event_Cb;

begin
   
   
   g8 := Lire_Grille("g8.txt");
   Taille_Max := Taille(g8);  
   --  Initialize GtkAda.
   Gtk.Main.Init;
   --  Create a window with a size of 400x800
   Gtk_New (Win,Window_Toplevel);
   Win.Set_Default_Size (400, 800);
  
   
   Gtk_New_VBox(VBox);
   Win.add(VBox);
   Gtk_New_VBox(VBox2);
   Win.add(VBox2);


   

   Gtk_New (Label1, "Groupe C - Equipe 1 - 2023");
   VBox.Pack_End(label1) ; 

   --Declare un nouveau tableau
   Gtk_New(Tableau,1,1,false) ;
   Tableau.Set_Row_Spacings(1) ;
   Tableau.Set_Col_Spacings(1) ;
   
   VBox.Pack_End(Tableau) ; 
   --Integration grille externe
   x := 1;
   y := 1;
   AfficherGrille(g8);
   
   column := 1;
   while column <= Taille_Max loop
      row := 1;
      while row <= Taille_Max loop
         coord := ConstruireCoordonnees(row,column);
         if estCaseVide(g8,coord) then
            label := Gtk_Label_New_With_Mnemonic(Str => "-");
         else
            vcase := ValeurChiffre(ObtenirChiffre (g8, coord));
            label := Gtk_Label_New_With_Mnemonic(Str => Integer'Image(vcase));
         end if;
         
         
         Tableau.attach(label,Guint(column-1),Guint(column),Guint(row - 1),Guint(row)) ;
         row := row +1;
      end loop;
      column := column +1;
   end loop;
   
   
   
   Gtk_New (Label, "Grille initale");
   VBox.Pack_End(label) ; 
   
   
   
   
   
   resoudreTakuzu (G8, trouve);
   nbChiffresDepart := 0;
   afficherResultat (G8, trouve, nbChiffresDepart);
   --Declare un nouveau tableau
   Gtk_New(Tableau2,3,4,false) ;
   Tableau2.Set_Row_Spacings(1) ;
   Tableau2.Set_Col_Spacings(1) ;
   
   --Integration grille externe
   x := 1;
   y := 1;
   
   column := 1;
   while column <= Taille_Max loop
      row := 1;
      while row <= Taille_Max loop
         coord := ConstruireCoordonnees(row,column);
         if estCaseVide(g8,coord) then
            label := Gtk_Label_New_With_Mnemonic(Str => "-");
         else
            vcase := ValeurChiffre(ObtenirChiffre (g8, coord));
            label := Gtk_Label_New_With_Mnemonic(Str => Integer'Image(vcase));
         end if;
         
         
         Tableau2.attach(label,Guint(column-1),Guint(column),Guint(row - 1),Guint(row)) ;
         row := row +1;
      end loop;
      column := column +1;
   end loop;
   
   Gtk_New (label2, "Grille complétée");
    

   VBox.Pack_End(Tableau2) ; 
   VBox.Pack_End(label2) ;
   
   -- Stop the Gtk process when closing the window
   Win.On_Delete_Event (Delete_Event_Cb'Unrestricted_Access);
   --  Show the window and present it
   Win.Show_All;
   Win.Present;
   --  Start the Gtk+ main loop
   Gtk.Main.Main;
end gui;
