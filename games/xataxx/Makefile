# New ports collection makefile for:	xataxx
# Date created:				4 July 1998
# Whom:					Andrey Zakhvatov
#
# $FreeBSD: ports/games/xataxx/Makefile,v 1.15 2012/11/17 05:57:56 svnexp Exp $
#

PORTNAME=	xataxx
PORTVERSION=	1.0
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.x.org/R5contrib/
DISTNAME=	${PORTNAME}
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Strategy game of position and movement for X Window System

USE_IMAKE=	yes
USE_XORG=	x11 xext
MAN6=		xataxx.6

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/xataxx
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xataxx
	${INSTALL_DATA} ${WRKSRC}/TODO ${PREFIX}/share/doc/xataxx
.endif

.include <bsd.port.mk>
