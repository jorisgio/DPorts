# New ports collection makefile for:	ghex2
# Date created:				15 September 2002
# Whom:					Joe Marcus Clarke <marcus@FreeBSD.org>
#
# $FreeBSD: ports/editors/ghex/Makefile,v 1.42 2012/11/17 05:57:13 svnexp Exp $
#   $MCom: ports/editors/ghex/Makefile,v 1.13 2008/08/23 18:22:59 mezz Exp $
#

PORTNAME=	ghex
PORTVERSION=	2.24.0
PORTREVISION=	5
CATEGORIES=	editors gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	GNOME 2 hex editor

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_GNOME=	gnomeprefix gnomehack intlhack libgnomeprintui libgnomeui \
		gnomedocutils
USE_GETTEXT=	yes
GNU_CONFIGURE=	yes
INSTALLS_ICONS=	yes
USE_LDCONFIG=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

GCONF_SCHEMAS=	ghex2.schemas

.include <bsd.port.mk>
