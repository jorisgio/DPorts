# New ports collection makefile for:	libgtkhtml
# Date created:				2nd June 2000
# Whom:					Ade Lovett <ade@FreeBSD.org>
#
# $FreeBSD: ports/www/libgtkhtml/Makefile,v 1.94 2012/11/17 06:02:38 svnexp Exp $
#   $MCom: ports/www/libgtkhtml/Makefile,v 1.41 2008/08/23 18:23:00 mezz Exp $
#

PORTNAME=	libgtkhtml
PORTVERSION=	2.11.1
PORTREVISION=	6
CATEGORIES=	www gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Lightweight HTML rendering/printing/editing engine

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_GNOME=	gnomeprefix gnomehack libxslt gnomevfs2 ltverhack
USE_LDCONFIG=	yes
USE_AUTOTOOLS=  libtool
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
