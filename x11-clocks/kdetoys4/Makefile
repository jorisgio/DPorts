# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: ports/x11-clocks/kdetoys4/Makefile,v 1.102 2013/02/04 01:04:53 svnexp Exp $

PORTNAME=	kdetoys
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	x11-clocks kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src
DIST_SUBDIR=	KDE

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Collection of entertaining programs for KDE

LATEST_LINK=	${PORTNAME}4

USE_KDE4=	kdehier kdelibs kdeprefix workspace automoc4
KDE4_BUILDENV=	yes
USE_QT4=	dbus gui qt3support \
		qmake_build moc_build rcc_build uic_build
USE_XORG=	x11
USE_XZ=	yes
MAKE_JOBS_SAFE=	yes

MAN6=	amor.6

.include <bsd.port.mk>
