# New ports collection makefile for:	pclock
# Date created:			15 Apr 1999
# Whom:				Jim Mock <jim@FreeBSD.org>
#
# $FreeBSD: ports/x11-clocks/pclock/Makefile,v 1.18 2012/11/17 06:03:24 svnexp Exp $
#

PORTNAME=	pclock
PORTVERSION=	0.13.1
PORTREVISION=	3
CATEGORIES=	x11-clocks windowmaker afterstep
MASTER_SITES=	${MASTER_SITE_DEBIAN_POOL}
DISTNAME=	${PORTNAME}_${PORTVERSION}.orig

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Simple analog clock program for the Window Maker dock

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}.orig/src

USE_XORG=	x11 xau xdmcp xext xpm
MAKE_ARGS=	CC="${CC}" CFLAGS="${CFLAGS}" OBJS="Main.o Graphics.o" \
		INCDIR="-I. -I${LOCALBASE}/include ${CPPFLAGS}" \
		LIBDIR="-L${LOCALBASE}/lib ${LDFLAGS}"

post-extract:
	cd ${WRKSRC} && ${RM} -f getopt*

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pclock ${PREFIX}/bin
	@${MKDIR} ${DATADIR}/pixmaps
	${INSTALL_DATA} ${WRKSRC}/../XPM/*.xpm ${DATADIR}/pixmaps

.include <bsd.port.mk>
