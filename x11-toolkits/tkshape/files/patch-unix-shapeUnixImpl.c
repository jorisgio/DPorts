$FreeBSD: ports/x11-toolkits/tkshape/files/patch-unix-shapeUnixImpl.c,v 1.3 2012/11/17 06:03:39 svnexp Exp $
diff -ur unix/shapeUnixImpl.c unix/shapeUnixImpl.c.new
--- unix/shapeUnixImpl.c	Mon Sep 11 16:27:28 2000
+++ unix/shapeUnixImpl.c	Sat Mar 13 11:25:54 2004
@@ -16,6 +16,7 @@
 #include <X11/Xutil.h>			/* For Region declaration. */
 #include <X11/extensions/shape.h>
 #include "shape.h"
+#include "shapeInt.h"
 
 #ifdef DKF_SHAPE_DEBUGGING
 static int
