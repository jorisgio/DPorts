# New ports collection makefile for:	kdevplatform
# Date created:		Sun Aug 23 17:14:39 UTC 2009
# Whom:			Golyashov Sergei <svvord@mail.ru>
#
# $FreeBSD: ports/devel/kdevplatform/Makefile,v 1.10 2012/11/17 05:55:52 svnexp Exp $

PORTNAME=	kdevplatform
PORTVERSION=	${KDEVELOP_VERSION:S/4./1./}
PORTREVISION=	2
CATEGORIES=	devel kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDEVELOP_BRANCH}/kdevelop/${KDEVELOP_VERSION}/src
DIST_SUBDIR=	KDE

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE development platform

LIB_DEPENDS=	svn_client-1.0:${PORTSDIR}/devel/subversion \
		boost_thread.4:${PORTSDIR}/devel/boost-libs \
		qjson.0:${PORTSDIR}/devel/qjson

USE_BZIP2=	yes
USE_KDE4=	kate_run kdehier kdelibs kdeprefix automoc4
KDE4_BUILDENV=	yes
USE_QT4=	corelib dbus gui network qtestlib \
		qmake_build moc_build uic_build rcc_build
MAKE_JOBS_SAFE=	yes

PLIST_SUB+=	SHLIB_VER=5.0.0 \
		SHLIB_SHVER=5

.include <bsd.port.mk>
