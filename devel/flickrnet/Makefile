# New ports collection makefile for:    flickrnet
# Date created:         2008-10-09
# Whom:                 Romain Tartiere <romain@blogreen.org>
#
# $FreeBSD: ports/devel/flickrnet/Makefile,v 1.3 2012/11/17 05:55:43 svnexp Exp $
#

PORTNAME=	flickrnet
PORTVERSION=	2.2.0
PORTEPOCH=	1
CATEGORIES=	devel
MASTER_SITES=	http://romain.blogreen.org/distfiles/
DISTNAME=	FlickrNet${PORTVERSION:C/^([0-9]+\.[0-9]+).*/\1/}-Src-48055

MAINTAINER=	mono@FreeBSD.org
COMMENT=	Flickr .Net API Library

BUILD_DEPENDS=	mono:${PORTSDIR}/lang/mono
RUN_DEPENDS=	mono:${PORTSDIR}/lang/mono

USE_ZIP=	yes
USE_GMAKE=	yes
WRKSRC=		${WRKDIR}/FlickrNet

do-build:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/gmcs -t:library -out:FlickrNet.dll -r:System.Data -r:System.Web -r:System.Drawing *.cs

do-install:
	${MKDIR} ${PREFIX}/lib/mono/flickrnet
	cd ${WRKSRC} && ${INSTALL_DATA} FlickrNet.dll ${PREFIX}/lib/mono/flickrnet
	cd ${WRKSRC} && ${SED} -e 's|@prefix@|${PREFIX}|' < flickrnet.pc.in > flickrnet.pc
	cd ${WRKSRC} && ${INSTALL_DATA} flickrnet.pc ${PREFIX}/libdata/pkgconfig

.include <bsd.port.mk>
