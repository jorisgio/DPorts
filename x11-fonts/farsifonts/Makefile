# New ports collection makefile for:	farsifonts
# Date created:				06 FEB 2006
# Whom:					Babak Farrokhi <babak@farrokhi.net>
#
# $FreeBSD: ports/x11-fonts/farsifonts/Makefile,v 1.9 2012/11/17 06:03:27 svnexp Exp $
#

PORTNAME=	farsifonts
PORTVERSION=	0.4
PORTREVISION=	2
CATEGORIES=	x11-fonts
MASTER_SITES=	http://www.unixified.net/distfiles/ \
		http://www.farsiweb.info/font/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Standard set of Unicode Persian fonts

BUILD_DEPENDS=	ttmkfdir:${PORTSDIR}/x11-fonts/ttmkfdir

USE_ZIP=	yes
PLIST_SUB=	FONTSDIR="${FONTSDIR:S|${PREFIX}/||}"
FONTSDIR?=	${PREFIX}/lib/X11/fonts/${PORTNAME}

do-build:
	@ttmkfdir -c -d ${WRKSRC} -o ${WRKSRC}/fonts.dir

do-install:
	@${MKDIR} ${PREFIX}/lib/X11/fonts/farsifonts
	@${INSTALL_DATA} ${WRKSRC}/*.ttf ${PREFIX}/lib/X11/fonts/farsifonts
	@${INSTALL_DATA} ${WRKSRC}/fonts.dir ${PREFIX}/lib/X11/fonts/farsifonts

.include <bsd.port.mk>
