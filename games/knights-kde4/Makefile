# New ports collection makefile for:	knight
# Date created:		24 Jun 2002
# Whom:			Stefan Jahn <stefan.jahn@nemesis-sektor.de>
#
# $FreeBSD: ports/games/knights-kde4/Makefile,v 1.31 2012/11/17 05:57:43 svnexp Exp $
#

PORTNAME=	knights
PORTVERSION=	2.3.1
PORTREVISION=	2
CATEGORIES=	games kde
MASTER_SITES=	http://dl.dropbox.com/u/2888238/Knights/

MAINTAINER=	syncer@gmail.com
COMMENT=	A KDE4 chess interface

LIB_DEPENDS=	kdegames.5:${PORTSDIR}/games/kdegames4
RUN_DEPENDS=	${LOCALBASE}/bin/gnuchess:${PORTSDIR}/games/gnuchess

LATEST_LINK=	${PORTNAME}-kde4
USE_BZIP2=	yes
USE_CMAKE=	yes
USE_KDE4=	kdelibs kdehier kdeprefix automoc4 workspace
USE_QT4=	qmake_build moc_build rcc_build uic_build

.include <bsd.port.mk>
