# New ports collection makefile for:	xpi-unplug
# Date created:			2006/05/06
# Whom:				chinsan <chinsan.tw@gmail.com>
#
# $FreeBSD: ports/www/xpi-unplug/Makefile,v 1.22 2012/11/17 06:03:13 svnexp Exp $
#

PORTNAME=	unplug
DISTVERSION=	2.050
DISTVERSIONSUFFIX=	-fx+sm
CATEGORIES=	www

MAINTAINER=	gecko@FreeBSD.org
COMMENT=	Converts embedded media to html links

XPI_ID=		unplug@compunach
XPI_NUM=	2254

xpi-post-extract:
	${FIND} ${WRKSRC} -type d -name CVS|${XARGS} ${RM} -rf

.include "${.CURDIR}/../xpi-adblock/Makefile.xpi"
.include <bsd.port.mk>
