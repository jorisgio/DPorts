# Created by: Dima Panov <fluffy@FreeBSD.org>
# $FreeBSD: ports/graphics/libkdcraw-kde4/Makefile,v 1.26 2013/02/04 01:04:05 svnexp Exp $

PORTNAME=	libkdcraw
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	graphics kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src
DIST_SUBDIR=	KDE

MAINTAINER=	kde@FreeBSD.org
COMMENT=	A LibRaw interface for KDE

LIB_DEPENDS=	lcms.1:${PORTSDIR}/graphics/lcms

LATEST_LINK=	${PORTNAME}-kde4

CONFLICTS=	kdegraphics-4.[0-6].*

USE_XZ=	yes
USE_KDE4=	automoc4 kdehier kdeprefix kdelibs
KDE4_BUILDENV=	yes
USE_QT4=	dbus gui xml \
		moc_build qmake_build rcc_build uic_build
MAKE_JOBS_SAFE=	yes

pre-configure:
	${REINPLACE_CMD} -e '/pkgconfig/ s/$${LIB_INSTALL_DIR}/libdata/' \
		-e 's/${PORTNAME}.pc\([^.]\)/${PORTNAME}-kde4.pc\1/g' \
		${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
