# New ports collection makefile for:	xpi-firefox-showcase
# Date created:		21 May 2006
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: ports/www/xpi-firefox-showcase/Makefile,v 1.26 2012/11/17 06:03:12 svnexp Exp $
#

PORTNAME=	firefox-showcase
PORTVERSION=	0.9.5.6
DISTVERSIONSUFFIX=	-fx
CATEGORIES=	www

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	Easily locate and select any open browser window

XPI_DISTNAME=	firefox_showcase
XPI_NUM=	1810
XPI_ID=		{89506680-e3f4-484c-a2c0-ed711d481eda}
XPI_FILES=	chrome/showcase.jar components/showcase-clhandler.js defaults/preferences/showcase.js \
		install.rdf chrome.manifest LICENSE
XPI_DIRS=	chrome components defaults/preferences defaults

.include "${.CURDIR}/../xpi-adblock/Makefile.xpi"
.include <bsd.port.mk>
