# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD: ports/accessibility/at-spi2-core/Makefile,v 1.6 2012/12/18 09:49:15 svnexp Exp $
#   $MCom: ports/accessibility/at-spi2-core/Makefile,v 1.17 2010/11/16 11:48:22 kwm Exp $

PORTNAME=	at-spi2-core
PORTVERSION=	0.4.1
CATEGORIES=	accessibility x11-toolkits
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Assistive Technology Service Provider Interface

LICENSE=	LGPL21

LIB_DEPENDS=	dbus-glib-1:${PORTSDIR}/devel/dbus-glib

USE_BZIP2=	yes
USE_GETTEXT=	yes
USE_GMAKE=	yes
USE_GNOME=	gnomehack gnomehier intlhack
USE_XORG=	x11 xi xtst
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-static

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
