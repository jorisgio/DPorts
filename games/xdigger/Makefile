# New ports collection makefile for:	xdigger
# Date created:				29 June 1998
# Whom:					Andrey Zakhvatov
#
# $FreeBSD: ports/games/xdigger/Makefile,v 1.21 2012/11/17 05:57:56 svnexp Exp $
#

PORTNAME=	xdigger
PORTVERSION=	1.0.10
PORTREVISION=	2
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/arcade
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Boulderdash-like KC85 Digger for X Window System

USE_IMAKE=	yes
USE_XORG=	x11 xext
MAN6=		xdigger.6

post-patch:
	@${REINPLACE_CMD} -e "s|%%PREFIX%%|${PREFIX}|g" ${WRKSRC}/configure.h

post-install:
	@${CHMOD} 2755 ${PREFIX}/bin/xdigger
	@${CHOWN} root:games ${PREFIX}/bin/xdigger
	@${CHMOD} 664 ${PREFIX}/share/xdigger/xdigger.hiscore
	@${CHOWN} root:games ${PREFIX}/share/xdigger/xdigger.hiscore
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/ChangeLog ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
