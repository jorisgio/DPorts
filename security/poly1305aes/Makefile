# New ports collection makefile for:	poly1305aes
# Date created:		18 February 2005
# Whom:			roam@FreeBSD.org
#
# $FreeBSD: ports/security/poly1305aes/Makefile,v 1.5 2012/11/17 06:01:16 svnexp Exp $
#

PORTNAME=	poly1305aes
PORTVERSION=	20050218
CATEGORIES=	security
MASTER_SITES=	http://cr.yp.to/mac/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	The poly1305 message authentication reference implementation using AES

CC+=		${CPPFLAGS} ${CFLAGS} ${LDFLAGS} ${STRIP}
ALL_TARGET=	default

REPLACE_HDRS=	aes.h cpucycles.h poly1305aes.h
PROGRAM_FILES=	poly1305aes-speed test-aes test-poly1305aes

do-install:
		${MKDIR} ${PREFIX}/include/poly1305
		${INSTALL_DATA} ${WRKSRC}/*_*.h ${PREFIX}/include/poly1305/
.for i in ${REPLACE_HDRS}
		${REINPLACE_CMD} -e "s,#include \",#include \"poly1305/," ${WRKSRC}/$i > ${WRKSRC}/$i.fixed
		${INSTALL_DATA} ${WRKSRC}/$i.fixed ${PREFIX}/include/poly1305/$i
		${INSTALL_DATA} ${WRKSRC}/*.a ${PREFIX}/lib/
		${INSTALL_DATA} ${PROGRAM_FILES:S,^,${WRKSRC}/,} ${PREFIX}/bin/
.endfor

.include <bsd.port.mk>
