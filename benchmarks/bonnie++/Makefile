# ex:ts=8
# New ports collection makefile for:	bonnie++
# Date created:			Mar 24, 2001
# Whom:				Ying-Chieh Liao <ijliao@FreeBSD.org>
#
# $FreeBSD: ports/benchmarks/bonnie++/Makefile,v 1.25 2012/11/29 09:25:45 svnexp Exp $
#

PORTNAME=	bonnie++
PORTVERSION=	1.97
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.coker.com.au/bonnie++/experimental/
EXTRACT_SUFX=	.tgz

MAINTAINER=	martymac@FreeBSD.org
COMMENT=	Performance Test of Filesystem I/O

LICENSE=	GPLv2

GNU_CONFIGURE=	yes

WRKSRC=	${WRKDIR}/${PORTNAME}-1.97.1

MAN1=	bon_csv2html.1 bon_csv2txt.1 generate_randfile.1
MAN8=	bonnie++.8 getc_putc.8 zcav.8

PORTDOCS=	readme.html

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} \
		's|/usr/share/|${PREFIX}/share/|g' ${WRKSRC}/bonnie++.8
	@${REINPLACE_CMD} \
		's|-lpthread|${PTHREAD_LIBS}|g' ${WRKSRC}/configure

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/readme.html ${DOCSDIR}
.endif

.include <bsd.port.mk>
