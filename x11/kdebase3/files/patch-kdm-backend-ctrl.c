--- ./kdm/backend/ctrl.c.orig	2007-01-15 14:32:23.000000000 +0300
+++ ./kdm/backend/ctrl.c	2010-04-28 23:00:11.560932810 +0400
@@ -140,22 +140,24 @@
 				if (strlen( cr->path ) >= sizeof(sa.sun_path))
 					LogError( "path %\"s too long; no control sockets will be available\n",
 					          cr->path );
-				else if (mkdir( sockdir, 0755 ) && errno != EEXIST)
+				else if (mkdir( sockdir, 0700 ) && errno != EEXIST)
 					LogError( "mkdir %\"s failed; no control sockets will be available\n",
 					          sockdir );
+				else if (unlink( cr->path ) && errno != ENOENT)
+					LogError( "unlink %\"s failed: %m; control socket will not be available\n",
+					          cr->path );
 				else {
-					if (!d)
-						chown( sockdir, -1, fifoGroup );
-					chmod( sockdir, 0750 );
 					if ((cr->fd = socket( PF_UNIX, SOCK_STREAM, 0 )) < 0)
 						LogError( "Cannot create control socket\n" );
 					else {
-						unlink( cr->path );
 						sa.sun_family = AF_UNIX;
 						strcpy( sa.sun_path, cr->path );
 						if (!bind( cr->fd, (struct sockaddr *)&sa, sizeof(sa) )) {
 							if (!listen( cr->fd, 5 )) {
-								chmod( cr->path, 0666 );
+								chmod( cr->path, 0660 );
+								if (!d)
+								   chown( cr->path, -1, fifoGroup );
+								chmod( sockdir, 0755 );
 								RegisterCloseOnFork( cr->fd );
 								RegisterInput( cr->fd );
 								free( sockdir );
@@ -218,12 +220,8 @@
 {
 	if (cr->fpath)
 		chown( cr->fpath, uid, -1 );
-	if (cr->path) {
-		char *ptr = strrchr( cr->path, '/' );
-		*ptr = 0;
+	if (cr->path)
 		chown( cr->path, uid, -1 );
-		*ptr = '/';
-	}
 }
 
 void
