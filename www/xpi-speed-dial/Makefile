# New ports collection makefile for:	xpi-speed-dial
# Date created:		12 May 2008
# Whom:			Harald Schmalzbauer <h.schmalzbauer@omnisec.de>
#
# $FreeBSD: ports/www/xpi-speed-dial/Makefile,v 1.13 2012/11/17 06:03:13 svnexp Exp $
#

PORTNAME=	speed-dial
PORTVERSION=	0.9.5.9
PORTREVISION=	1
DISTVERSIONSUFFIX=	-fx
CATEGORIES=	www
MASTER_SITES=	http://speeddial.uworks.net/

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	Access websites through custom thumbnail views

XPI_DISTNAME=	speed_dial
XPI_ID=		{64161300-e22b-11db-8314-0800200c9a66}
XPI_NUM=	4810

post-patch:
	@${REINPLACE_CMD} -i "" -e '/loadInNewTab/s|false|true|' \
		${WRKSRC}/defaults/preferences/speeddial.js

.include "${.CURDIR}/../xpi-adblock/Makefile.xpi"
.include <bsd.port.mk>
