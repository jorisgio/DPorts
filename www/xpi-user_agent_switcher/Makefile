# New ports collection makefile for:	xpi-user_agent_switcher
# Date created:				2009-04-26
# Whom:					Norikatsu Shigemura <nork@FreeBSD.org>
#
# $FreeBSD: ports/www/xpi-user_agent_switcher/Makefile,v 1.5 2012/11/17 06:03:13 svnexp Exp $
#

PORTNAME=	user_agent_switcher
PORTVERSION=	0.7.3
DISTVERSIONSUFFIX=	-fx+sm
CATEGORIES=	www

MAINTAINER=	ports@FreeBSD.org
COMMENT=	The User Agent Switcher extension

XPI_NUM=	59
XPI_ID=		{e968fc70-8f95-4ab9-9e79-304de2a71ee1}
XPI_FILES=	chrome.manifest \
		chrome/useragentswitcher.jar \
		install.js install.rdf \
		license.txt
XPI_DIRS=	chrome

.include "${.CURDIR}/../xpi-adblock/Makefile.xpi"
.include <bsd.port.mk>
