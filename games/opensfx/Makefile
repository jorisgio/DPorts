# New ports collection makefile for:	OpenSFX
# Date created:				2010-11-04
# Whom:					Ilya A. Arhipov <admin@gorodkirov.ru>
#
# $FreeBSD: ports/games/opensfx/Makefile,v 1.4 2012/11/17 05:57:48 svnexp Exp $
#

PORTNAME=	opensfx
PORTVERSION=	0.2.3
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	http://hu.binaries.openttd.org/binaries/extra/${PORTNAME}/${PORTVERSION}/ \
		http://us.binaries.openttd.org/binaries/extra/${PORTNAME}/${PORTVERSION}/ \
		http://cz.binaries.openttd.org/openttd/binaries/extra/${PORTNAME}/${PORTVERSION}/
DISTNAME=	${PORTNAME}-${PORTVERSION}-all

MAINTAINER=	micro@heavennet.ru
COMMENT=	Free alternative sounds for OpenTTD game engine

USE_ZIP=	yes
NO_BUILD=	yes
LATEST_LINK=	openttd-${PORTNAME}

do-install:
	@${MKDIR} ${PREFIX}/share/openttd/baseset/opensfx
	${INSTALL_DATA} ${WRKDIR}/opensfx-${PORTVERSION}/* \
		${PREFIX}/share/openttd/baseset/opensfx

.include <bsd.port.mk>
