# New ports collection makefile for:	gnome-main-menu
# Date created:				06 July 2008
# Whom:					Joe Marcus Clarke <marcus@FreeBSD.org>
#
# $FreeBSD: ports/deskutils/gnome-main-menu/Makefile,v 1.16 2012/11/17 05:55:27 svnexp Exp $
#

PORTNAME=	gnome-main-menu
PORTVERSION=	0.9.12
PORTREVISION=	8
CATEGORIES=	deskutils gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Provides easy access to sets of GNOME applications

LIB_DEPENDS=	gtop-2.0.7:${PORTSDIR}/devel/libgtop

USE_BZIP2=	yes
USE_GNOME=	gnomehack gnomeprefix gnomepanel intlhack eel2 gnomedesktop \
		libgnomeui
USE_GMAKE=	yes
USE_GETTEXT=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	LIBS="`pkg-config --libs libgnomeui-2.0`"
CPPFLAGS+=	-I${LOCALBASE}/include `pkg-config --cflags libgnomeui-2.0`
LDFLAGS+=	-L${LOCALBASE}/lib

GCONF_SCHEMAS=	application-browser.schemas slab.schemas

.include <bsd.port.mk>
