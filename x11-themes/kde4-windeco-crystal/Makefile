# New ports collection makefile for:   crystal
# Date created:                        15th March, 2005
# Whom:                                decept
#
# $FreeBSD: ports/x11-themes/kde4-windeco-crystal/Makefile,v 1.36 2012/11/17 06:03:33 svnexp Exp $
#

PORTNAME=	crystal
PORTVERSION=	2.1.0
PORTREVISION=	2
CATEGORIES=	x11-themes kde
MASTER_SITES=	http://www.kde-look.org/CONTENT/content-files/
PKGNAMEPREFIX=	kde-windeco-
DISTNAME=	75140-${PORTNAME}-${PORTVERSION}

MAINTAINER=	g.veniamin@googlemail.com
COMMENT=	Transparent KDE window decoration

LICENSE=	GPLv2

USE_BZIP2=	yes
USE_KDE4=	kdelibs kdehier kdeprefix automoc4 workspace
USE_QT4=	corelib qmake_build moc_build rcc_build uic_build
USE_CMAKE=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

.include <bsd.port.mk>
