--- ./aclocal.m4.orig	2008-08-21 05:16:36.000000000 +0000
+++ ./aclocal.m4	2008-08-21 05:16:44.000000000 +0000
@@ -79,7 +79,7 @@
 		s/^#.*$//m;
 		s/^\s+//gim;
 		s/\s+$/\n/gim;
-		s/\+$/\/rt3/gim;
+		s/\+$/\/rt38/gim;
 		# m4 will not let us just use $1, we need @S|@1
 		s/^\s*((?:bin|sbin|libexec|data|sysconf|sharedstate|localstate|lib|include|oldinclude|info|man|html)dir)\s*:\s*(.*)$/@S|@1=@S|@2/gim;
 		s/^\s*(.*?)\s*:\s*(.*)$/\(test "x\@S|@@S|@1" = "xNONE" || test "x\@S|@@S|@1" = "x") && @S|@1=@S|@2/gim;
