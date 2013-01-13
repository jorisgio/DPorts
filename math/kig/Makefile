# New ports collection Makefile for:	kig
# Date created:				6 September 2011
# Whom:					Alberto Villa <avilla@FreeBSD.org>
#
# $FreeBSD: ports/math/kig/Makefile,v 1.7 2012/11/17 05:59:22 svnexp Exp $
#

PORTNAME=	kig
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	math kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDE4_BRANCH}/${PORTVERSION}/src
DIST_SUBDIR=	KDE

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE 4 interactive geometry application

CONFLICTS=	kdeedu-4.[0-6].*

USE_KDE4=	kdehier kdelibs kdeprefix automoc4
KDE4_BUILDENV=	yes
USE_QT4=	dbus moc_build qmake_build rcc_build uic_build
USE_XZ=	yes
MAKE_JOBS_SAFE=	yes

MAN1=		kig.1

OPTIONS=	PYTHON "Support for Python scripting (requires Boost)" on

.include <bsd.port.options.mk>

.ifndef(WITHOUT_PYTHON)
LIB_DEPENDS+=	boost_python:${PORTSDIR}/devel/boost-python-libs
.endif

.include <bsd.port.mk>