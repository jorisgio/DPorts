# New ports collection makefile for:	flog
# Date created:				7 October 2001
# Whom:					Anders Nordby <anders@fix.no>
#
# $FreeBSD: ports/sysutils/flog/Makefile,v 1.8 2012/11/17 06:01:30 svnexp Exp $
#

PORTNAME=	flog
PORTVERSION=	1.8
CATEGORIES=	sysutils
MASTER_SITES=	http://oss.ezic.com/flog/ \
		ftp://ftp.nuug.no/pub/anders/distfiles/

MAINTAINER=	anders@FreeBSD.org
COMMENT=	A small STDIN-to-file logger with support for log rotation

PORTDOCS=	README

post-patch:
	${REINPLACE_CMD} -e "s@|O_LARGEFILE@@" ${WRKSRC}/flog.c

do-build:
	${CC} ${CFLAGS} -o ${WRKSRC}/flog ${WRKSRC}/flog.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/flog ${PREFIX}/bin
.if !defined(NOPORTDOCS)
	${INSTALL} -d -m 0755 ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
