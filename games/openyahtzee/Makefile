# New ports collection makefile for:	openyahtzee
# Date created:		04 January 2007
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: ports/games/openyahtzee/Makefile,v 1.17 2012/11/17 05:57:48 svnexp Exp $
#

PORTNAME=	openyahtzee
PORTVERSION=	1.9.1
PORTREVISION=	1
CATEGORIES=	games
MASTER_SITES=	SF/${PORTNAME}/Open%20Yahtzee/Open%20Yahtzee%20${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Full-featured classic dice game Yahtzee

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	${LOCALBASE}/include/boost/scoped_ptr.hpp:${PORTSDIR}/devel/boost-libs

USE_BZIP2=	yes
USE_GCC=	4.6+
USE_WX=		2.8+
WX_CONF_ARGS=	absolute
GNU_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAN6=		openyahtzee.6
PLIST_FILES=	bin/openyahtzee \
		share/applications/openyahtzee.desktop \
		share/pixmaps/openyahtzee.png
PLIST_DIRSTRY=	share/applications

.include <bsd.port.mk>
