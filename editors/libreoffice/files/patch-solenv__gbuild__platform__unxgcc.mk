--- solenv/gbuild/platform/unxgcc.mk.orig	2012-11-28 09:29:53.000000000 +0100
+++ solenv/gbuild/platform/unxgcc.mk	2013-01-01 23:36:24.337386000 +0100
@@ -297,7 +297,7 @@
 	$(foreach lib,$(gb_Library_EXTENSIONLIBS),$(lib):OXT) \
 
 define gb_Library__get_rpath
-$(if $(1),$(strip '-Wl,-rpath,$(1)' '-Wl,-rpath-link,$(gb_Library_OUTDIRLOCATION)'))
+$(if $(1),$(strip '-Wl,-z,origin,-rpath,$(1)' '-Wl,-rpath-link,$(gb_Library_OUTDIRLOCATION)'))
 endef
 
 define gb_Library_get_rpath
@@ -338,7 +338,7 @@
 
 
 define gb_Executable_get_rpath
-'-Wl,-rpath,$(call gb_LinkTarget__get_rpath_for_layer,$(call gb_Executable_get_layer,$(1)))' \
+'-Wl,-z,origin,-rpath,$(call gb_LinkTarget__get_rpath_for_layer,$(call gb_Executable_get_layer,$(1)))' \
 -Wl,-rpath-link,$(gb_Library_OUTDIRLOCATION)
 endef
 
