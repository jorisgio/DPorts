# New ports collection makefile for:	xpi-quick-locale-switcher
# Date created:		05 February 2007
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: ports/www/xpi-quick-locale-switcher/Makefile,v 1.30 2012/11/17 06:03:13 svnexp Exp $
#

PORTNAME=	quick-locale-switcher
PORTVERSION=	1.7.8
DISTVERSIONSUFFIX=	-tb+fx+sm
CATEGORIES=	www

MAINTAINER=	gecko@FreeBSD.org
COMMENT=	Quickly change and apply a different locale from the tools menu

XPI_DISTNAME=	quick_locale_switcher
XPI_ID=		{25A1388B-6B18-46c3-BEBA-A81915D0DE8F}
XPI_NUM=	1333
XPI_FILES=	chrome/qls.jar chrome.manifest defaults/preferences/prefs.js \
		license.txt install.rdf
XPI_DIRS=	chrome defaults/preferences defaults

.include "${.CURDIR}/../xpi-adblock/Makefile.xpi"
.include <bsd.port.mk>
