# New ports collection makefile for:	font-pingwi
# Date created:		2010-07-20
# Whom:			Gvozdikov Veniamin <g.veniamin@googlemail.com>
#
# $FreeBSD: ports/x11-fonts/pingwi/Makefile,v 1.2 2012/11/17 06:03:29 svnexp Exp $
#

PORTNAME=	pingwi
PORTVERSION=	0.1
CATEGORIES=	x11-fonts
MASTER_SITES=	http://www.pingwinsoft.ru/system/uploads/16/original/ \
		http://fbsd.zlonet.ru/distfiles/
PKGNAMEPREFIX=	font-
DISTNAME=	fonts_test

MAINTAINER=	g.veniamin@googlemail.com
COMMENT=	PingWi Typography fonts

RUN_DEPENDS=	fc-cache:${PORTSDIR}/x11-fonts/fontconfig

USE_ZIP=	yes
NO_BUILD=	yes
PLIST_SUB=	FONTSDIR="${FONTSDIR:S|${PREFIX}/||}"
FONTSDIR=	${PREFIX}/lib/X11/fonts/pingwi
SUB_FILES=	pkg-message
SUB_LIST=	FONTSDIR=${FONTSDIR}

do-install:
	${MKDIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${FONTSDIR}

post-install:
	@${ECHO_MSG} "===> Running fc-cache"
	@-${LOCALBASE}/bin/fc-cache -f -v ${FONTSDIR}
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
