# New ports collection makefile for:	hexcompare
# Date created:		2010-07-20
# Whom:			Steven Kreuzer <skreuzer@FreeBSD.org>
#
# $FreeBSD: ports/devel/hexcompare/Makefile,v 1.4 2012/11/17 05:55:47 svnexp Exp $
#

PORTNAME=	hexcompare
PORTVERSION=	1.0.2
CATEGORIES=	devel
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}%20v${PORTVERSION}
DISTNAME=	${PORTNAME}-102

MAINTAINER=	skreuzer@FreeBSD.org
COMMENT=	Compare and identify differences between two binary files

LICENSE=	GPLv3

PLIST_FILES=	bin/hexcompare

post-patch:
	${REINPLACE_CMD} -e 's|gcc|${CC}|g' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
