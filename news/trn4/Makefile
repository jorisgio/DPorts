# New ports collection makefile for:	trn
# Date created:		21 October 1994
# Whom:			smace
#
# $FreeBSD: ports/news/trn4/Makefile,v 1.38 2012/11/17 06:00:43 svnexp Exp $
#

PORTNAME=	trn
PORTVERSION=	4.0.b77
CATEGORIES=	news
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}4
DISTNAME=	${PORTNAME}-${PORTVERSION:S/.b/-test/}

MAINTAINER=	johans@FreeBSD.org
COMMENT=	Version 4.0 of the threaded readnews newsreader

CONFLICTS_INSTALL=trn-3.[0-9]* inn-[0-9]* cnews-* s-news-[0-9]*

NO_LATEST_LINK=	yes
MAN1=		trn.1 Pnews.1 Rnmail.1

.include <bsd.port.pre.mk>

pre-configure:
	@${ECHO_MSG} "===>  Running pre-configure target for ${DISTNAME}"
	@${SED} -e "s:__CC__:${CC}:" -e "s:__CFLAGS__:${CFLAGS}:" \
		-e "s:/PREFIX:${PREFIX}:"  ${SCRIPTDIR}/preconf > \
		${WRKDIR}/preconf.new
.ifdef BATCH
	@${ECHO_CMD} 3 | ${SH} ${WRKDIR}/preconf.new ${PORTSDIR} ${.CURDIR} ${WRKSRC}
.else
	@${SH} ${WRKDIR}/preconf.new ${PORTSDIR} ${.CURDIR} ${WRKSRC}
.endif

.include <bsd.port.post.mk>
