# New ports collection makefile for:	http_load
# Date created:				9 May 2000
# Whom:					Ask Bjoern Hansen <ask@valueclick.com>
#
# $FreeBSD: ports/www/http_load/Makefile,v 1.12 2012/11/17 06:02:36 svnexp Exp $
#

PORTNAME=	http_load
PORTVERSION=	20060312
CATEGORIES=	www
MASTER_SITES=	http://www.acme.com/software/http_load/
DISTNAME=	${PORTNAME}-12mar2006

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Multiprocessing http performance test client

MAKEFILE=	${FILESDIR}/Makefile.bsd

MAN1=		http_load.1
MANCOMPRESSED=	yes
PLIST_FILES=	bin/http_load

.ifndef NO_OPENSSL
USE_OPENSSL=	yes
.endif

.include <bsd.port.mk>
