# New ports collection makefile for:	gnome-backgrounds
# Date Created:				12 January 2005
# Whom:					Joe Marcus Clarke <marcus@FreeBSD.org>
#
# $FreeBSD: ports/x11-themes/gnome-backgrounds/Makefile,v 1.27 2012/11/17 06:03:31 svnexp Exp $
#   $MCom: ports/x11-themes/gnome-backgrounds/Makefile,v 1.49 2010/09/27 19:52:50 kwm Exp $
#

PORTNAME=	gnome-backgrounds
PORTVERSION=	2.32.0
CATEGORIES=	x11-themes graphics gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	A collection of backgrounds for GNOME 2

USE_BZIP2=	yes
USE_GETTEXT=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_GNOME=	gnomeprefix gnomehack intlhack
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
