# New ports collection makefile for:	xpi-splash
# Date created:			15 October 2008
# Whom:				Alexander Logvinov <ports@logvinov.com>
#
# $FreeBSD: ports/www/xpi-splash/Makefile,v 1.4 2012/11/17 06:03:13 svnexp Exp $
#

PORTNAME=	splash
PORTVERSION=	2.0.2
DISTVERSIONSUFFIX=	-fx+tb+sb
CATEGORIES=	www

MAINTAINER=	avl@FreeBSD.org
COMMENT=	A splash screen for most Mozilla and Mozilla Based products

XPI_DISTNAME=	splash!
XPI_ID=		splash@aldreneo.com
XPI_NUM=	2995
XPI_FILES=	chrome/splash.jar components/.autoreg components/splash.js \
		defaults/preferences/splash.js chrome.manifest install.rdf
XPI_DIRS=	chrome components defaults/preferences defaults

.include "${.CURDIR}/../xpi-adblock/Makefile.xpi"
.include <bsd.port.mk>
