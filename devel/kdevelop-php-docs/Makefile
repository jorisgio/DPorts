# New ports collection makefile for:	kdevelop-php-docs
# Date created:				4 April 2010
# Whom:					Alberto Villa <avilla@FreeBSD.org>
#
# $FreeBSD: ports/devel/kdevelop-php-docs/Makefile,v 1.8 2012/11/17 05:55:52 svnexp Exp $

PORTNAME=	kdevelop
PORTVERSION=	${KDEVELOP_VERSION:S/4./1./}
PORTREVISION=	1
CATEGORIES=	devel kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	${KDEVELOP_BRANCH}/kdevelop/${KDEVELOP_VERSION}/src
PKGNAMESUFFIX=	-php-docs
DISTNAME=	${PORTNAME}${PKGNAMESUFFIX}-${PORTVERSION}
DIST_SUBDIR=	KDE

MAINTAINER=	kde@FreeBSD.org
COMMENT=	PHP documentation for KDevelop

LIB_DEPENDS=	kdevplatforminterfaces.5:${PORTSDIR}/devel/kdevplatform

USE_BZIP2=	yes
USE_KDE4=	automoc4 kdehier kdelibs kdeprefix
KDE4_BUILDENV=	yes
USE_QT4=	moc_build qmake_build rcc_build uic_build
MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
