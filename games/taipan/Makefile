# Created by: Dave Walton <dwalton@acm.org>
# $FreeBSD: ports/games/taipan/Makefile,v 1.7 2012/11/17 05:57:54 svnexp Exp $

PORTNAME=	taipan
PORTVERSION=	0.9
PORTREVISION=	1
CATEGORIES=	games
MASTER_SITES=	SUNSITE/games/textrpg

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Classic role-playing game from the 1980s

MAKE_ARGS=	CC="${CC}" CFLAGS="${CFLAGS}"

PORTDOCS=	README
PLIST_FILES=	bin/taipan

.include <bsd.port.options.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/taipan ${PREFIX}/bin
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
