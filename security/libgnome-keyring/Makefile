# New ports collection makefile for:	libgnome-keyring
# Date created:		2009-12-21
# Whom:			Michael Johnson <ahze@FreeBSD.org>
#
# $FreeBSD: ports/security/libgnome-keyring/Makefile,v 1.9 2012/11/17 06:01:06 svnexp Exp $
#    $MCom: ports/security/libgnome-keyring/Makefile,v 1.7 2010/09/28 08:11:06 kwm Exp $

PORTNAME=	libgnome-keyring
PORTVERSION=	2.32.0
PORTREVISION=	2
CATEGORIES=	security gnome
MASTER_SITES=	GNOME

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	A program that keeps passwords and other secrets

LIB_DEPENDS=    tasn1.4:${PORTSDIR}/security/libtasn1 \
                gcrypt.18:${PORTSDIR}/security/libgcrypt

USE_BZIP2=	yes
USE_GNOME=	gnomehack gnomeprefix ltverhack intlhack gconf2
USE_GMAKE=	yes
USE_GETTEXT=	yes
USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>