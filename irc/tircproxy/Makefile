# New ports collection makefile for: tircproxy
# Date created:		11 Aug 1999
# Whom:			Eugeny Kuzakov <CoreDumped@CoreDumped.null.ru>
#
# $FreeBSD: ports/irc/tircproxy/Makefile,v 1.13 2012/11/17 05:58:30 svnexp Exp $
#

PORTNAME=	tircproxy
PORTVERSION=	0.4.5
PORTREVISION=	4
CATEGORIES=	irc
MASTER_SITES=	http://bre.klaki.net/programs/tircproxy/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	IRC proxy server

WRKSRC=		${WRKDIR}/tircproxy-0.4
GNU_CONFIGURE=	YES

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tircproxy ${PREFIX}/sbin

post-install:
.if !defined(NOPORTDOCS)
	@${ECHO_MSG} "===>   Installing tircproxy docs in ${DOCSDIR}"
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
