# New ports collection makefile for:	xpi-customizegoogle
# Date created:		15 June 2007
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: ports/www/xpi-customizegoogle/Makefile,v 1.16 2012/11/17 06:03:11 svnexp Exp $
#

PORTNAME=	customizegoogle
PORTVERSION=	0.76
DISTVERSIONSUFFIX=	.en-US
#DISTVERSIONSUFFIX=	-fx+sm+fl
CATEGORIES=	www
MASTER_SITES=	http://www.updatecg.com/ LOCAL/chinsan/xpi

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	Enhance and tweak Google services

XPI_NUM=	743
XPI_ID=		{fce36c1e-58d8-498a-b2a5-66ad1cedebbb}
XPI_FILES=	Changes GPL Ideas README chrome/customizegoogle.jar \
		defaults/preferences/prefs.js install.js install.rdf chrome.manifest
XPI_DIRS=	chrome defaults/preferences defaults

.include "${.CURDIR}/../xpi-adblock/Makefile.xpi"
.include <bsd.port.mk>
