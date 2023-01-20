pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__gui.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__gui.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E069 : Short_Integer; pragma Import (Ada, E069, "system__os_lib_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__exceptions_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E038 : Short_Integer; pragma Import (Ada, E038, "ada__containers_E");
   E065 : Short_Integer; pragma Import (Ada, E065, "ada__io_exceptions_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "ada__strings_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "ada__strings__maps_E");
   E056 : Short_Integer; pragma Import (Ada, E056, "ada__strings__maps__constants_E");
   E075 : Short_Integer; pragma Import (Ada, E075, "interfaces__c_E");
   E026 : Short_Integer; pragma Import (Ada, E026, "system__exceptions_E");
   E077 : Short_Integer; pragma Import (Ada, E077, "system__object_reader_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "system__dwarf_lines_E");
   E021 : Short_Integer; pragma Import (Ada, E021, "system__soft_links__initialize_E");
   E037 : Short_Integer; pragma Import (Ada, E037, "system__traceback__symbolic_E");
   E100 : Short_Integer; pragma Import (Ada, E100, "ada__strings__utf_encoding_E");
   E106 : Short_Integer; pragma Import (Ada, E106, "ada__tags_E");
   E098 : Short_Integer; pragma Import (Ada, E098, "ada__strings__text_buffers_E");
   E196 : Short_Integer; pragma Import (Ada, E196, "gnat_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "interfaces__c__strings_E");
   E096 : Short_Integer; pragma Import (Ada, E096, "ada__streams_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "system__file_control_block_E");
   E121 : Short_Integer; pragma Import (Ada, E121, "system__finalization_root_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "ada__finalization_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "system__file_io_E");
   E177 : Short_Integer; pragma Import (Ada, E177, "system__storage_pools_E");
   E175 : Short_Integer; pragma Import (Ada, E175, "system__finalization_masters_E");
   E191 : Short_Integer; pragma Import (Ada, E191, "system__storage_pools__subpools_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "ada__strings__unbounded_E");
   E094 : Short_Integer; pragma Import (Ada, E094, "ada__text_io_E");
   E179 : Short_Integer; pragma Import (Ada, E179, "system__pool_global_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "gnat__formatted_string_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "glib_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "gtkada__types_E");
   E159 : Short_Integer; pragma Import (Ada, E159, "chiffre_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "coordonnee_E");
   E299 : Short_Integer; pragma Import (Ada, E299, "gdk__frame_timings_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "glib__glist_E");
   E283 : Short_Integer; pragma Import (Ada, E283, "gdk__visual_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "glib__gslist_E");
   E201 : Short_Integer; pragma Import (Ada, E201, "gtkada__c_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "glib__object_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "glib__type_conversion_hooks_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "glib__types_E");
   E205 : Short_Integer; pragma Import (Ada, E205, "glib__values_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "gtkada__bindings_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "cairo_E");
   E213 : Short_Integer; pragma Import (Ada, E213, "cairo__region_E");
   E215 : Short_Integer; pragma Import (Ada, E215, "gdk__rectangle_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "glib__generic_properties_E");
   E291 : Short_Integer; pragma Import (Ada, E291, "gdk__color_E");
   E273 : Short_Integer; pragma Import (Ada, E273, "gdk__rgba_E");
   E183 : Short_Integer; pragma Import (Ada, E183, "gdk__event_E");
   E390 : Short_Integer; pragma Import (Ada, E390, "glib__key_file_E");
   E261 : Short_Integer; pragma Import (Ada, E261, "glib__properties_E");
   E350 : Short_Integer; pragma Import (Ada, E350, "glib__string_E");
   E348 : Short_Integer; pragma Import (Ada, E348, "glib__variant_E");
   E346 : Short_Integer; pragma Import (Ada, E346, "glib__g_icon_E");
   E416 : Short_Integer; pragma Import (Ada, E416, "gtk__actionable_E");
   E265 : Short_Integer; pragma Import (Ada, E265, "gtk__builder_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "gtk__buildable_E");
   E364 : Short_Integer; pragma Import (Ada, E364, "gtk__cell_area_context_E");
   E380 : Short_Integer; pragma Import (Ada, E380, "gtk__css_section_E");
   E285 : Short_Integer; pragma Import (Ada, E285, "gtk__enums_E");
   E404 : Short_Integer; pragma Import (Ada, E404, "gtk__orientable_E");
   E392 : Short_Integer; pragma Import (Ada, E392, "gtk__paper_size_E");
   E388 : Short_Integer; pragma Import (Ada, E388, "gtk__page_setup_E");
   E400 : Short_Integer; pragma Import (Ada, E400, "gtk__print_settings_E");
   E311 : Short_Integer; pragma Import (Ada, E311, "gtk__target_entry_E");
   E309 : Short_Integer; pragma Import (Ada, E309, "gtk__target_list_E");
   E316 : Short_Integer; pragma Import (Ada, E316, "pango__enums_E");
   E334 : Short_Integer; pragma Import (Ada, E334, "pango__attributes_E");
   E320 : Short_Integer; pragma Import (Ada, E320, "pango__font_metrics_E");
   E322 : Short_Integer; pragma Import (Ada, E322, "pango__language_E");
   E318 : Short_Integer; pragma Import (Ada, E318, "pango__font_E");
   E408 : Short_Integer; pragma Import (Ada, E408, "gtk__text_attributes_E");
   E410 : Short_Integer; pragma Import (Ada, E410, "gtk__text_tag_E");
   E326 : Short_Integer; pragma Import (Ada, E326, "pango__font_face_E");
   E324 : Short_Integer; pragma Import (Ada, E324, "pango__font_family_E");
   E328 : Short_Integer; pragma Import (Ada, E328, "pango__fontset_E");
   E330 : Short_Integer; pragma Import (Ada, E330, "pango__matrix_E");
   E314 : Short_Integer; pragma Import (Ada, E314, "pango__context_E");
   E396 : Short_Integer; pragma Import (Ada, E396, "pango__font_map_E");
   E336 : Short_Integer; pragma Import (Ada, E336, "pango__tabs_E");
   E332 : Short_Integer; pragma Import (Ada, E332, "pango__layout_E");
   E394 : Short_Integer; pragma Import (Ada, E394, "gtk__print_context_E");
   E281 : Short_Integer; pragma Import (Ada, E281, "gdk__display_E");
   E297 : Short_Integer; pragma Import (Ada, E297, "gdk__frame_clock_E");
   E301 : Short_Integer; pragma Import (Ada, E301, "gdk__pixbuf_E");
   E279 : Short_Integer; pragma Import (Ada, E279, "gdk__screen_E");
   E293 : Short_Integer; pragma Import (Ada, E293, "gdk__device_E");
   E295 : Short_Integer; pragma Import (Ada, E295, "gdk__drag_contexts_E");
   E340 : Short_Integer; pragma Import (Ada, E340, "gdk__window_E");
   E303 : Short_Integer; pragma Import (Ada, E303, "gtk__accel_group_E");
   E352 : Short_Integer; pragma Import (Ada, E352, "gtk__adjustment_E");
   E354 : Short_Integer; pragma Import (Ada, E354, "gtk__cell_editable_E");
   E356 : Short_Integer; pragma Import (Ada, E356, "gtk__editable_E");
   E358 : Short_Integer; pragma Import (Ada, E358, "gtk__entry_buffer_E");
   E376 : Short_Integer; pragma Import (Ada, E376, "gtk__icon_source_E");
   E398 : Short_Integer; pragma Import (Ada, E398, "gtk__print_operation_preview_E");
   E305 : Short_Integer; pragma Import (Ada, E305, "gtk__selection_data_E");
   E307 : Short_Integer; pragma Import (Ada, E307, "gtk__style_E");
   E406 : Short_Integer; pragma Import (Ada, E406, "gtk__text_iter_E");
   E370 : Short_Integer; pragma Import (Ada, E370, "gtk__tree_model_E");
   E289 : Short_Integer; pragma Import (Ada, E289, "gtk__widget_E");
   E368 : Short_Integer; pragma Import (Ada, E368, "gtk__cell_renderer_E");
   E366 : Short_Integer; pragma Import (Ada, E366, "gtk__cell_layout_E");
   E362 : Short_Integer; pragma Import (Ada, E362, "gtk__cell_area_E");
   E269 : Short_Integer; pragma Import (Ada, E269, "gtk__container_E");
   E342 : Short_Integer; pragma Import (Ada, E342, "gtk__bin_E");
   E259 : Short_Integer; pragma Import (Ada, E259, "gtk__box_E");
   E360 : Short_Integer; pragma Import (Ada, E360, "gtk__entry_completion_E");
   E382 : Short_Integer; pragma Import (Ada, E382, "gtk__misc_E");
   E384 : Short_Integer; pragma Import (Ada, E384, "gtk__notebook_E");
   E402 : Short_Integer; pragma Import (Ada, E402, "gtk__status_bar_E");
   E287 : Short_Integer; pragma Import (Ada, E287, "gtk__style_provider_E");
   E277 : Short_Integer; pragma Import (Ada, E277, "gtk__settings_E");
   E378 : Short_Integer; pragma Import (Ada, E378, "gtk__style_context_E");
   E374 : Short_Integer; pragma Import (Ada, E374, "gtk__icon_set_E");
   E372 : Short_Integer; pragma Import (Ada, E372, "gtk__image_E");
   E344 : Short_Integer; pragma Import (Ada, E344, "gtk__gentry_E");
   E338 : Short_Integer; pragma Import (Ada, E338, "gtk__window_E");
   E275 : Short_Integer; pragma Import (Ada, E275, "gtk__dialog_E");
   E386 : Short_Integer; pragma Import (Ada, E386, "gtk__print_operation_E");
   E271 : Short_Integer; pragma Import (Ada, E271, "gtk__arguments_E");
   E426 : Short_Integer; pragma Import (Ada, E426, "glib__menu_model_E");
   E414 : Short_Integer; pragma Import (Ada, E414, "gtk__action_E");
   E418 : Short_Integer; pragma Import (Ada, E418, "gtk__activatable_E");
   E412 : Short_Integer; pragma Import (Ada, E412, "gtk__button_E");
   E420 : Short_Integer; pragma Import (Ada, E420, "gtk__grid_E");
   E432 : Short_Integer; pragma Import (Ada, E432, "gtk__main_E");
   E428 : Short_Integer; pragma Import (Ada, E428, "gtk__menu_item_E");
   E430 : Short_Integer; pragma Import (Ada, E430, "gtk__menu_shell_E");
   E424 : Short_Integer; pragma Import (Ada, E424, "gtk__menu_E");
   E422 : Short_Integer; pragma Import (Ada, E422, "gtk__label_E");
   E434 : Short_Integer; pragma Import (Ada, E434, "gtk__table_E");
   E165 : Short_Integer; pragma Import (Ada, E165, "rangee_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "grille_E");
   E157 : Short_Integer; pragma Import (Ada, E157, "affichage_E");
   E436 : Short_Integer; pragma Import (Ada, E436, "remplir_grille_takuzu_E");
   E446 : Short_Integer; pragma Import (Ada, E446, "tad_pile_E");
   E448 : Short_Integer; pragma Import (Ada, E448, "tad_type_t_E");
   E444 : Short_Integer; pragma Import (Ada, E444, "pile_type_t_E");
   E442 : Short_Integer; pragma Import (Ada, E442, "resolution_takuzu_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E434 := E434 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "gtk__table__finalize_spec");
      begin
         F1;
      end;
      E422 := E422 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "gtk__label__finalize_spec");
      begin
         F2;
      end;
      E424 := E424 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "gtk__menu__finalize_spec");
      begin
         F3;
      end;
      E430 := E430 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "gtk__menu_shell__finalize_spec");
      begin
         F4;
      end;
      E428 := E428 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "gtk__menu_item__finalize_spec");
      begin
         F5;
      end;
      E420 := E420 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "gtk__grid__finalize_spec");
      begin
         F6;
      end;
      E412 := E412 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "gtk__button__finalize_spec");
      begin
         F7;
      end;
      E414 := E414 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "gtk__action__finalize_spec");
      begin
         F8;
      end;
      E426 := E426 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "glib__menu_model__finalize_spec");
      begin
         F9;
      end;
      E338 := E338 - 1;
      E289 := E289 - 1;
      E370 := E370 - 1;
      E378 := E378 - 1;
      E307 := E307 - 1;
      E402 := E402 - 1;
      E386 := E386 - 1;
      E384 := E384 - 1;
      E344 := E344 - 1;
      E360 := E360 - 1;
      E358 := E358 - 1;
      E275 := E275 - 1;
      E269 := E269 - 1;
      E368 := E368 - 1;
      E362 := E362 - 1;
      E352 := E352 - 1;
      E303 := E303 - 1;
      E297 := E297 - 1;
      E281 := E281 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "gtk__print_operation__finalize_spec");
      begin
         F10;
      end;
      declare
         procedure F11;
         pragma Import (Ada, F11, "gtk__dialog__finalize_spec");
      begin
         F11;
      end;
      declare
         procedure F12;
         pragma Import (Ada, F12, "gtk__window__finalize_spec");
      begin
         F12;
      end;
      declare
         procedure F13;
         pragma Import (Ada, F13, "gtk__gentry__finalize_spec");
      begin
         F13;
      end;
      E372 := E372 - 1;
      declare
         procedure F14;
         pragma Import (Ada, F14, "gtk__image__finalize_spec");
      begin
         F14;
      end;
      E374 := E374 - 1;
      declare
         procedure F15;
         pragma Import (Ada, F15, "gtk__icon_set__finalize_spec");
      begin
         F15;
      end;
      declare
         procedure F16;
         pragma Import (Ada, F16, "gtk__style_context__finalize_spec");
      begin
         F16;
      end;
      E277 := E277 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "gtk__settings__finalize_spec");
      begin
         F17;
      end;
      declare
         procedure F18;
         pragma Import (Ada, F18, "gtk__status_bar__finalize_spec");
      begin
         F18;
      end;
      declare
         procedure F19;
         pragma Import (Ada, F19, "gtk__notebook__finalize_spec");
      begin
         F19;
      end;
      E382 := E382 - 1;
      declare
         procedure F20;
         pragma Import (Ada, F20, "gtk__misc__finalize_spec");
      begin
         F20;
      end;
      declare
         procedure F21;
         pragma Import (Ada, F21, "gtk__entry_completion__finalize_spec");
      begin
         F21;
      end;
      E259 := E259 - 1;
      declare
         procedure F22;
         pragma Import (Ada, F22, "gtk__box__finalize_spec");
      begin
         F22;
      end;
      E342 := E342 - 1;
      declare
         procedure F23;
         pragma Import (Ada, F23, "gtk__bin__finalize_spec");
      begin
         F23;
      end;
      declare
         procedure F24;
         pragma Import (Ada, F24, "gtk__container__finalize_spec");
      begin
         F24;
      end;
      declare
         procedure F25;
         pragma Import (Ada, F25, "gtk__cell_area__finalize_spec");
      begin
         F25;
      end;
      declare
         procedure F26;
         pragma Import (Ada, F26, "gtk__cell_renderer__finalize_spec");
      begin
         F26;
      end;
      declare
         procedure F27;
         pragma Import (Ada, F27, "gtk__widget__finalize_spec");
      begin
         F27;
      end;
      declare
         procedure F28;
         pragma Import (Ada, F28, "gtk__tree_model__finalize_spec");
      begin
         F28;
      end;
      declare
         procedure F29;
         pragma Import (Ada, F29, "gtk__style__finalize_spec");
      begin
         F29;
      end;
      E305 := E305 - 1;
      declare
         procedure F30;
         pragma Import (Ada, F30, "gtk__selection_data__finalize_spec");
      begin
         F30;
      end;
      E376 := E376 - 1;
      declare
         procedure F31;
         pragma Import (Ada, F31, "gtk__icon_source__finalize_spec");
      begin
         F31;
      end;
      declare
         procedure F32;
         pragma Import (Ada, F32, "gtk__entry_buffer__finalize_spec");
      begin
         F32;
      end;
      declare
         procedure F33;
         pragma Import (Ada, F33, "gtk__adjustment__finalize_spec");
      begin
         F33;
      end;
      declare
         procedure F34;
         pragma Import (Ada, F34, "gtk__accel_group__finalize_spec");
      begin
         F34;
      end;
      E295 := E295 - 1;
      declare
         procedure F35;
         pragma Import (Ada, F35, "gdk__drag_contexts__finalize_spec");
      begin
         F35;
      end;
      E293 := E293 - 1;
      declare
         procedure F36;
         pragma Import (Ada, F36, "gdk__device__finalize_spec");
      begin
         F36;
      end;
      E279 := E279 - 1;
      declare
         procedure F37;
         pragma Import (Ada, F37, "gdk__screen__finalize_spec");
      begin
         F37;
      end;
      E301 := E301 - 1;
      declare
         procedure F38;
         pragma Import (Ada, F38, "gdk__pixbuf__finalize_spec");
      begin
         F38;
      end;
      declare
         procedure F39;
         pragma Import (Ada, F39, "gdk__frame_clock__finalize_spec");
      begin
         F39;
      end;
      declare
         procedure F40;
         pragma Import (Ada, F40, "gdk__display__finalize_spec");
      begin
         F40;
      end;
      E394 := E394 - 1;
      declare
         procedure F41;
         pragma Import (Ada, F41, "gtk__print_context__finalize_spec");
      begin
         F41;
      end;
      E332 := E332 - 1;
      declare
         procedure F42;
         pragma Import (Ada, F42, "pango__layout__finalize_spec");
      begin
         F42;
      end;
      E336 := E336 - 1;
      declare
         procedure F43;
         pragma Import (Ada, F43, "pango__tabs__finalize_spec");
      begin
         F43;
      end;
      E396 := E396 - 1;
      declare
         procedure F44;
         pragma Import (Ada, F44, "pango__font_map__finalize_spec");
      begin
         F44;
      end;
      E314 := E314 - 1;
      declare
         procedure F45;
         pragma Import (Ada, F45, "pango__context__finalize_spec");
      begin
         F45;
      end;
      E328 := E328 - 1;
      declare
         procedure F46;
         pragma Import (Ada, F46, "pango__fontset__finalize_spec");
      begin
         F46;
      end;
      E324 := E324 - 1;
      declare
         procedure F47;
         pragma Import (Ada, F47, "pango__font_family__finalize_spec");
      begin
         F47;
      end;
      E326 := E326 - 1;
      declare
         procedure F48;
         pragma Import (Ada, F48, "pango__font_face__finalize_spec");
      begin
         F48;
      end;
      E410 := E410 - 1;
      declare
         procedure F49;
         pragma Import (Ada, F49, "gtk__text_tag__finalize_spec");
      begin
         F49;
      end;
      E318 := E318 - 1;
      declare
         procedure F50;
         pragma Import (Ada, F50, "pango__font__finalize_spec");
      begin
         F50;
      end;
      E322 := E322 - 1;
      declare
         procedure F51;
         pragma Import (Ada, F51, "pango__language__finalize_spec");
      begin
         F51;
      end;
      E320 := E320 - 1;
      declare
         procedure F52;
         pragma Import (Ada, F52, "pango__font_metrics__finalize_spec");
      begin
         F52;
      end;
      E334 := E334 - 1;
      declare
         procedure F53;
         pragma Import (Ada, F53, "pango__attributes__finalize_spec");
      begin
         F53;
      end;
      E309 := E309 - 1;
      declare
         procedure F54;
         pragma Import (Ada, F54, "gtk__target_list__finalize_spec");
      begin
         F54;
      end;
      E400 := E400 - 1;
      declare
         procedure F55;
         pragma Import (Ada, F55, "gtk__print_settings__finalize_spec");
      begin
         F55;
      end;
      E388 := E388 - 1;
      declare
         procedure F56;
         pragma Import (Ada, F56, "gtk__page_setup__finalize_spec");
      begin
         F56;
      end;
      E392 := E392 - 1;
      declare
         procedure F57;
         pragma Import (Ada, F57, "gtk__paper_size__finalize_spec");
      begin
         F57;
      end;
      E380 := E380 - 1;
      declare
         procedure F58;
         pragma Import (Ada, F58, "gtk__css_section__finalize_spec");
      begin
         F58;
      end;
      E364 := E364 - 1;
      declare
         procedure F59;
         pragma Import (Ada, F59, "gtk__cell_area_context__finalize_spec");
      begin
         F59;
      end;
      E265 := E265 - 1;
      declare
         procedure F60;
         pragma Import (Ada, F60, "gtk__builder__finalize_spec");
      begin
         F60;
      end;
      E348 := E348 - 1;
      declare
         procedure F61;
         pragma Import (Ada, F61, "glib__variant__finalize_spec");
      begin
         F61;
      end;
      E187 := E187 - 1;
      declare
         procedure F62;
         pragma Import (Ada, F62, "glib__object__finalize_spec");
      begin
         F62;
      end;
      E299 := E299 - 1;
      declare
         procedure F63;
         pragma Import (Ada, F63, "gdk__frame_timings__finalize_spec");
      begin
         F63;
      end;
      E168 := E168 - 1;
      declare
         procedure F64;
         pragma Import (Ada, F64, "glib__finalize_spec");
      begin
         F64;
      end;
      E218 := E218 - 1;
      declare
         procedure F65;
         pragma Import (Ada, F65, "gnat__formatted_string__finalize_spec");
      begin
         F65;
      end;
      E179 := E179 - 1;
      declare
         procedure F66;
         pragma Import (Ada, F66, "system__pool_global__finalize_spec");
      begin
         F66;
      end;
      E094 := E094 - 1;
      declare
         procedure F67;
         pragma Import (Ada, F67, "ada__text_io__finalize_spec");
      begin
         F67;
      end;
      E142 := E142 - 1;
      declare
         procedure F68;
         pragma Import (Ada, F68, "ada__strings__unbounded__finalize_spec");
      begin
         F68;
      end;
      E191 := E191 - 1;
      declare
         procedure F69;
         pragma Import (Ada, F69, "system__storage_pools__subpools__finalize_spec");
      begin
         F69;
      end;
      E175 := E175 - 1;
      declare
         procedure F70;
         pragma Import (Ada, F70, "system__finalization_masters__finalize_spec");
      begin
         F70;
      end;
      declare
         procedure F71;
         pragma Import (Ada, F71, "system__file_io__finalize_body");
      begin
         E118 := E118 - 1;
         F71;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (Ada, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;
   pragma Favor_Top_Level (No_Param_Proc);

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Containers'Elab_Spec;
      E038 := E038 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E065 := E065 + 1;
      Ada.Strings'Elab_Spec;
      E050 := E050 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E052 := E052 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E056 := E056 + 1;
      Interfaces.C'Elab_Spec;
      E075 := E075 + 1;
      System.Exceptions'Elab_Spec;
      E026 := E026 + 1;
      System.Object_Reader'Elab_Spec;
      E077 := E077 + 1;
      System.Dwarf_Lines'Elab_Spec;
      E045 := E045 + 1;
      System.Os_Lib'Elab_Body;
      E069 := E069 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E021 := E021 + 1;
      E013 := E013 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E037 := E037 + 1;
      E008 := E008 + 1;
      Ada.Strings.Utf_Encoding'Elab_Spec;
      E100 := E100 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E106 := E106 + 1;
      Ada.Strings.Text_Buffers'Elab_Spec;
      Ada.Strings.Text_Buffers'Elab_Body;
      E098 := E098 + 1;
      Gnat'Elab_Spec;
      E196 := E196 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E173 := E173 + 1;
      Ada.Streams'Elab_Spec;
      E096 := E096 + 1;
      System.File_Control_Block'Elab_Spec;
      E122 := E122 + 1;
      System.Finalization_Root'Elab_Spec;
      System.Finalization_Root'Elab_Body;
      E121 := E121 + 1;
      Ada.Finalization'Elab_Spec;
      E119 := E119 + 1;
      System.File_Io'Elab_Body;
      E118 := E118 + 1;
      System.Storage_Pools'Elab_Spec;
      E177 := E177 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E175 := E175 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Body;
      E191 := E191 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      Ada.Strings.Unbounded'Elab_Body;
      E142 := E142 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E094 := E094 + 1;
      System.Pool_Global'Elab_Spec;
      System.Pool_Global'Elab_Body;
      E179 := E179 + 1;
      Gnat.Formatted_String'Elab_Spec;
      Gnat.Formatted_String'Elab_Body;
      E218 := E218 + 1;
      Glib'Elab_Spec;
      Gtkada.Types'Elab_Spec;
      E171 := E171 + 1;
      E168 := E168 + 1;
      Chiffre'Elab_Spec;
      E159 := E159 + 1;
      E161 := E161 + 1;
      Gdk.Frame_Timings'Elab_Spec;
      Gdk.Frame_Timings'Elab_Body;
      E299 := E299 + 1;
      E207 := E207 + 1;
      Gdk.Visual'Elab_Body;
      E283 := E283 + 1;
      E209 := E209 + 1;
      E201 := E201 + 1;
      Glib.Object'Elab_Spec;
      E189 := E189 + 1;
      Glib.Values'Elab_Body;
      E205 := E205 + 1;
      E195 := E195 + 1;
      Glib.Object'Elab_Body;
      E187 := E187 + 1;
      E203 := E203 + 1;
      E211 := E211 + 1;
      E213 := E213 + 1;
      E215 := E215 + 1;
      Glib.Generic_Properties'Elab_Spec;
      Glib.Generic_Properties'Elab_Body;
      E185 := E185 + 1;
      Gdk.Color'Elab_Spec;
      E291 := E291 + 1;
      E273 := E273 + 1;
      E183 := E183 + 1;
      E390 := E390 + 1;
      E261 := E261 + 1;
      E350 := E350 + 1;
      Glib.Variant'Elab_Spec;
      Glib.Variant'Elab_Body;
      E348 := E348 + 1;
      E346 := E346 + 1;
      Gtk.Actionable'Elab_Spec;
      E416 := E416 + 1;
      Gtk.Builder'Elab_Spec;
      Gtk.Builder'Elab_Body;
      E265 := E265 + 1;
      E263 := E263 + 1;
      Gtk.Cell_Area_Context'Elab_Spec;
      Gtk.Cell_Area_Context'Elab_Body;
      E364 := E364 + 1;
      Gtk.Css_Section'Elab_Spec;
      Gtk.Css_Section'Elab_Body;
      E380 := E380 + 1;
      E285 := E285 + 1;
      Gtk.Orientable'Elab_Spec;
      E404 := E404 + 1;
      Gtk.Paper_Size'Elab_Spec;
      Gtk.Paper_Size'Elab_Body;
      E392 := E392 + 1;
      Gtk.Page_Setup'Elab_Spec;
      Gtk.Page_Setup'Elab_Body;
      E388 := E388 + 1;
      Gtk.Print_Settings'Elab_Spec;
      Gtk.Print_Settings'Elab_Body;
      E400 := E400 + 1;
      E311 := E311 + 1;
      Gtk.Target_List'Elab_Spec;
      Gtk.Target_List'Elab_Body;
      E309 := E309 + 1;
      E316 := E316 + 1;
      Pango.Attributes'Elab_Spec;
      Pango.Attributes'Elab_Body;
      E334 := E334 + 1;
      Pango.Font_Metrics'Elab_Spec;
      Pango.Font_Metrics'Elab_Body;
      E320 := E320 + 1;
      Pango.Language'Elab_Spec;
      Pango.Language'Elab_Body;
      E322 := E322 + 1;
      Pango.Font'Elab_Spec;
      Pango.Font'Elab_Body;
      E318 := E318 + 1;
      E408 := E408 + 1;
      Gtk.Text_Tag'Elab_Spec;
      Gtk.Text_Tag'Elab_Body;
      E410 := E410 + 1;
      Pango.Font_Face'Elab_Spec;
      Pango.Font_Face'Elab_Body;
      E326 := E326 + 1;
      Pango.Font_Family'Elab_Spec;
      Pango.Font_Family'Elab_Body;
      E324 := E324 + 1;
      Pango.Fontset'Elab_Spec;
      Pango.Fontset'Elab_Body;
      E328 := E328 + 1;
      E330 := E330 + 1;
      Pango.Context'Elab_Spec;
      Pango.Context'Elab_Body;
      E314 := E314 + 1;
      Pango.Font_Map'Elab_Spec;
      Pango.Font_Map'Elab_Body;
      E396 := E396 + 1;
      Pango.Tabs'Elab_Spec;
      Pango.Tabs'Elab_Body;
      E336 := E336 + 1;
      Pango.Layout'Elab_Spec;
      Pango.Layout'Elab_Body;
      E332 := E332 + 1;
      Gtk.Print_Context'Elab_Spec;
      Gtk.Print_Context'Elab_Body;
      E394 := E394 + 1;
      Gdk.Display'Elab_Spec;
      Gdk.Frame_Clock'Elab_Spec;
      Gdk.Pixbuf'Elab_Spec;
      E301 := E301 + 1;
      Gdk.Screen'Elab_Spec;
      Gdk.Screen'Elab_Body;
      E279 := E279 + 1;
      Gdk.Device'Elab_Spec;
      Gdk.Device'Elab_Body;
      E293 := E293 + 1;
      Gdk.Drag_Contexts'Elab_Spec;
      Gdk.Drag_Contexts'Elab_Body;
      E295 := E295 + 1;
      Gdk.Window'Elab_Spec;
      E340 := E340 + 1;
      Gtk.Accel_Group'Elab_Spec;
      Gtk.Adjustment'Elab_Spec;
      Gtk.Cell_Editable'Elab_Spec;
      Gtk.Entry_Buffer'Elab_Spec;
      Gtk.Icon_Source'Elab_Spec;
      Gtk.Icon_Source'Elab_Body;
      E376 := E376 + 1;
      Gtk.Selection_Data'Elab_Spec;
      Gtk.Selection_Data'Elab_Body;
      E305 := E305 + 1;
      Gtk.Style'Elab_Spec;
      E406 := E406 + 1;
      Gtk.Tree_Model'Elab_Spec;
      Gtk.Widget'Elab_Spec;
      Gtk.Cell_Renderer'Elab_Spec;
      E366 := E366 + 1;
      Gtk.Cell_Area'Elab_Spec;
      Gtk.Container'Elab_Spec;
      Gtk.Bin'Elab_Spec;
      Gtk.Bin'Elab_Body;
      E342 := E342 + 1;
      Gtk.Box'Elab_Spec;
      Gtk.Box'Elab_Body;
      E259 := E259 + 1;
      Gtk.Entry_Completion'Elab_Spec;
      Gtk.Misc'Elab_Spec;
      Gtk.Misc'Elab_Body;
      E382 := E382 + 1;
      Gtk.Notebook'Elab_Spec;
      Gtk.Status_Bar'Elab_Spec;
      E287 := E287 + 1;
      Gtk.Settings'Elab_Spec;
      Gtk.Settings'Elab_Body;
      E277 := E277 + 1;
      Gtk.Style_Context'Elab_Spec;
      Gtk.Icon_Set'Elab_Spec;
      Gtk.Icon_Set'Elab_Body;
      E374 := E374 + 1;
      Gtk.Image'Elab_Spec;
      Gtk.Image'Elab_Body;
      E372 := E372 + 1;
      Gtk.Gentry'Elab_Spec;
      Gtk.Window'Elab_Spec;
      Gtk.Dialog'Elab_Spec;
      Gtk.Print_Operation'Elab_Spec;
      E271 := E271 + 1;
      Gdk.Display'Elab_Body;
      E281 := E281 + 1;
      Gdk.Frame_Clock'Elab_Body;
      E297 := E297 + 1;
      Gtk.Accel_Group'Elab_Body;
      E303 := E303 + 1;
      Gtk.Adjustment'Elab_Body;
      E352 := E352 + 1;
      Gtk.Cell_Area'Elab_Body;
      E362 := E362 + 1;
      E354 := E354 + 1;
      Gtk.Cell_Renderer'Elab_Body;
      E368 := E368 + 1;
      Gtk.Container'Elab_Body;
      E269 := E269 + 1;
      Gtk.Dialog'Elab_Body;
      E275 := E275 + 1;
      E356 := E356 + 1;
      Gtk.Entry_Buffer'Elab_Body;
      E358 := E358 + 1;
      Gtk.Entry_Completion'Elab_Body;
      E360 := E360 + 1;
      Gtk.Gentry'Elab_Body;
      E344 := E344 + 1;
      Gtk.Notebook'Elab_Body;
      E384 := E384 + 1;
      Gtk.Print_Operation'Elab_Body;
      E386 := E386 + 1;
      E398 := E398 + 1;
      Gtk.Status_Bar'Elab_Body;
      E402 := E402 + 1;
      Gtk.Style'Elab_Body;
      E307 := E307 + 1;
      Gtk.Style_Context'Elab_Body;
      E378 := E378 + 1;
      Gtk.Tree_Model'Elab_Body;
      E370 := E370 + 1;
      Gtk.Widget'Elab_Body;
      E289 := E289 + 1;
      Gtk.Window'Elab_Body;
      E338 := E338 + 1;
      Glib.Menu_Model'Elab_Spec;
      Glib.Menu_Model'Elab_Body;
      E426 := E426 + 1;
      Gtk.Action'Elab_Spec;
      Gtk.Action'Elab_Body;
      E414 := E414 + 1;
      Gtk.Activatable'Elab_Spec;
      E418 := E418 + 1;
      Gtk.Button'Elab_Spec;
      Gtk.Button'Elab_Body;
      E412 := E412 + 1;
      Gtk.Grid'Elab_Spec;
      Gtk.Grid'Elab_Body;
      E420 := E420 + 1;
      E432 := E432 + 1;
      Gtk.Menu_Item'Elab_Spec;
      Gtk.Menu_Item'Elab_Body;
      E428 := E428 + 1;
      Gtk.Menu_Shell'Elab_Spec;
      Gtk.Menu_Shell'Elab_Body;
      E430 := E430 + 1;
      Gtk.Menu'Elab_Spec;
      Gtk.Menu'Elab_Body;
      E424 := E424 + 1;
      Gtk.Label'Elab_Spec;
      Gtk.Label'Elab_Body;
      E422 := E422 + 1;
      Gtk.Table'Elab_Spec;
      Gtk.Table'Elab_Body;
      E434 := E434 + 1;
      Rangee'Elab_Spec;
      E165 := E165 + 1;
      Grille'Elab_Spec;
      E163 := E163 + 1;
      E157 := E157 + 1;
      Remplir_Grille_Takuzu'Elab_Spec;
      E436 := E436 + 1;
      E446 := E446 + 1;
      E448 := E448 + 1;
      Pile_Type_T'Elab_Spec;
      E444 := E444 + 1;
      Resolution_Takuzu'Elab_Spec;
      E442 := E442 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_gui");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      if gnat_argc = 0 then
         gnat_argc := argc;
         gnat_argv := argv;
      end if;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   D:\Takuzu_V2\obj\chiffre.o
   --   D:\Takuzu_V2\obj\coordonnee.o
   --   D:\Takuzu_V2\obj\rangee.o
   --   D:\Takuzu_V2\obj\grille.o
   --   D:\Takuzu_V2\obj\affichage.o
   --   D:\Takuzu_V2\obj\remplir_grille_takuzu.o
   --   D:\Takuzu_V2\obj\TAD_Pile.o
   --   D:\Takuzu_V2\obj\TAD_Type_T.o
   --   D:\Takuzu_V2\obj\pile_type_T.o
   --   D:\Takuzu_V2\obj\resolution_takuzu.o
   --   D:\Takuzu_V2\obj\gui.o
   --   -LD:\Takuzu_V2\obj\
   --   -LD:\Takuzu_V2\obj\
   --   -LC:\GtkAda\lib\gtkada\gtkada.static\gtkada\
   --   -LG:/logiciels/gnat_2021/lib/gcc/x86_64-w64-mingw32/10.3.1/adalib/
   --   -static
   --   -shared-libgcc
   --   -shared-libgcc
   --   -shared-libgcc
   --   -lgnat
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
