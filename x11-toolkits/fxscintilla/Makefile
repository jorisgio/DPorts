# Created by: Alexander Novitsky <alecn2002@yandex.ru>
# $FreeBSD: ports/x11-toolkits/fxscintilla/Makefile,v 1.49 2012/11/27 11:29:47 svnexp Exp $

PORTNAME=	fxscintilla
PORTVERSION=	2.28.0
PORTREVISION=	4
CATEGORIES=	x11-toolkits
MASTER_SITES=	SAVANNAH

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A Fox toolkit reimplementation of Scintilla editing widget

LICENSE=	LGPL21 # (or later)
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	FOX-1.6:${PORTSDIR}/x11-toolkits/fox16

USE_GNOME=	gnomehack
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-shared
USE_LDCONFIG=	yes
USE_PKGCONFIG=	yes
MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
