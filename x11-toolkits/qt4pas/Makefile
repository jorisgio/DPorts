# New ports collection makefile for:	qt4pas
# Date created:		2009-01-20
# Whom:			Jose Alonso Cardenas Marquez <acm@FreeBSD.org>
#
# $FreeBSD: ports/x11-toolkits/qt4pas/Makefile,v 1.12 2012/11/17 06:03:39 svnexp Exp $
#

PORTNAME=	qt4pas
PORTVERSION=	2.5
PORTREVISION=	1
CATEGORIES=	x11-toolkits
MASTER_SITES=	http://users.telenet.be/Jan.Van.hijfte/qtforfpc/V${PORTVERSION}/
DISTNAME=	${PORTNAME}-${PORTVERSION:S/^/V/}_Qt${QT4_VER_MIN}

MAINTAINER=	acm@FreeBSD.org
COMMENT=	Qt4 binding for FreePascal

USE_LDCONFIG=	yes
USE_QT4=	corelib gui network script webkit qmake_build \
		moc_build

QT4_VER_MIN=	4.5.3

.include <bsd.port.pre.mk>

.if  ${QT4_VERSION:S/.//g} < ${QT4_VER_MIN:S/.//g}
IGNORE=	Please update your current qt4 version to ${QT4_VER_MIN}
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|-mincoming-stack-boundary=2||g' ${WRKSRC}/Qt4Pas.pro

pre-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${QMAKE} ${QMAKEFLAGS}

.include <bsd.port.post.mk>
