# New ports collection makefile for:  banihstypos
# Date created:                05 October 2007
# Whom:                        Philippe Audeoud <jadawin@tuxaco.net>
# $FreeBSD: ports/games/banihstypos/Makefile,v 1.3 2012/11/17 05:57:32 svnexp Exp $

PORTNAME=	banihstypos
PORTVERSION=	0.2
CATEGORIES=	games
MASTER_SITES=	http://www.vanheusden.com/banihstypos/
EXTRACT_SUFX=	.tgz

MAINTAINER=	jadawin@FreeBSD.org
COMMENT=	Banihstypos is a simple game to teach you typing, FAST

PKGMESSAGE=	${WRKDIR}/pkg-message
SUB_FILES=	pkg-message
SUB_LIST=	PORTNAME=${PORTNAME}

PLIST_FILES=	bin/banihstypos

PORTDOCS=	readme.txt

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/banihstypos ${PREFIX}/bin
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${DOCSDIR}
.endif
post-install:
	@${ECHO_MSG}; ${CAT} ${PKGMESSAGE}; ${ECHO_MSG}

.include <bsd.port.mk>
