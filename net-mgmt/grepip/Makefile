# New ports collection makefile for:	grepip
# Date created:		2 Nov 2005
# Whom:			Serge Maslov <serge@maslov.biz>
#
# $FreeBSD: ports/net-mgmt/grepip/Makefile,v 1.8 2012/12/10 19:24:04 svnexp Exp $
#

PORTNAME=	grepip
PORTVERSION=	1.0
PORTREVISION=	2
CATEGORIES=	net-mgmt
MASTER_SITES=	http://komquats.com/distfiles/ \
		${MASTER_SITE_LOCAL}/cy/

MAINTAINER=	cy@FreeBSD.org
COMMENT=	Print lines contans IP matching a pattern in CIDR format

LIB_DEPENDS=	pcre:${PORTSDIR}/devel/pcre

PLIST_FILES=	bin/grepip
PORTDOCS=	README.txt

do-build:
	cd ${WRKSRC}; \
	${CC} ${CFLAGS} -c patricia.c; \
	${CC} ${CFLAGS} -I${LOCALBASE}/include -o grepip grepip.c patricia.o -L${LOCALBASE}/lib -lpcre

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/grepip ${PREFIX}/bin
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/README.txt ${DOCSDIR}
.endif

.include <bsd.port.mk>
