# New ports collection makefile for:	kmp
# Date created:			Apr 2, 2004
# Whom:				Mark Reidel <ports@mark.reidel.info>
#
# $FreeBSD: ports/audio/kmp/Makefile,v 1.9 2012/11/17 05:54:35 svnexp Exp $
#

PORTNAME=	kmp
PORTVERSION=	0.01
PORTREVISION=	6
CATEGORIES=	audio
MASTER_SITES=	http://mercury.chem.pitt.edu/~shank/ \
		http://www.threadbox.net/files/

MAINTAINER=	ports@mark.reidel.info
COMMENT=	A graphical interface to musicpd written with Qt

BUILD_DEPENDS=	qmake:${PORTSDIR}/devel/qmake

USE_BZIP2=	true
USE_QT_VER=	3
MAKE_ENV=	QTDIR="${QT_PREFIX}"

PLIST_FILES=	bin/kmp

do-configure:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} qmake \
		-spec ${LOCALBASE}/share/qt/mkspecs/freebsd-g++ kmp.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/kmp ${PREFIX}/bin

.include <bsd.port.mk>
