# New ports collection makefile for:    xglk
# Date created:         4 February 2005
# Whom:                 Peter Pentchev <roam@FreeBSD.org>
#
# $FreeBSD: ports/games/xglk/Makefile,v 1.9 2012/11/17 05:57:57 svnexp Exp $
#

PORTNAME=	xglk
PORTVERSION=	411
PORTREVISION=	5
CATEGORIES=	games
MASTER_SITES=	http://www.ifarchive.org/if-archive/programming/glk/implementations/
DISTNAME=	${PORTNAME}-0${PORTVERSION}
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@FreeBSD.org
COMMENT=	X Windows Implementation of the Glk API

WRKSRC=		${WRKDIR}/${PORTNAME}

LIB_DEPENDS+=	jpeg.11:${PORTSDIR}/graphics/jpeg png15:${PORTSDIR}/graphics/png

USE_XORG=	x11

MAKE_ENV+=	AR=${AR} RANLIB=${RANLIB} ECHO=${ECHO} RM=${RM}

do-install:
		${MKDIR} ${PREFIX}/include/xglk
		${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include/xglk/
		${INSTALL_DATA} ${WRKSRC}/libxglk.a ${PREFIX}/lib/
		${MKDIR} ${DATADIR}
		${INSTALL_DATA} ${WRKSRC}/Make.xglk ${DATADIR}

.include <bsd.port.mk>
