# New ports collection makefile for:    duhdraw
# Date created:         March 18 2002
# Whom:                 Kyle Martin <mkm@ieee.org>
#
# $FreeBSD: ports/graphics/duhdraw/Makefile,v 1.7 2012/11/17 05:58:03 svnexp Exp $
#

PORTNAME=	duhdraw
PORTVERSION=	2.8.13
CATEGORIES=	graphics
MASTER_SITES=	http://www.cs.helsinki.fi/u/penberg/duhdraw/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	An ANSI graphic drawing program

MAKE_ARGS=	CC="${CC} ${CFLAGS}"

PLIST_FILES=	bin/ansi bin/ansitoc bin/duhdraw

post-patch:
	@${REINPLACE_CMD} -e '/<malloc.h>/d' ${WRKSRC}/duhdraw.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ansi ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/ansitoc ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/duhdraw ${PREFIX}/bin

.include <bsd.port.mk>
