# New ports collection makefile for:	cd2mp3
# Date created:				4 January 2000
# Whom:					Jamie Heckford <jamie@blackhole.net>
#
# $FreeBSD: ports/audio/cd2mp3/Makefile,v 1.19 2012/11/17 05:54:29 svnexp Exp $
#

PORTNAME=	cd2mp3
PORTVERSION=	0.82
PORTREVISION=	3
PORTEPOCH=	1
CATEGORIES=	audio
MASTER_SITES=	http://cvsup.theplanet.com/distfiles/ \
		http://mark.foster.cc/pub/freebsd/ports/distfiles/

MAINTAINER=	mark@foster.cc
COMMENT=	Easy to use CD Ripping and MP3 Encoding tool

RUN_DEPENDS=	lame:${PORTSDIR}/audio/lame \
		dagrab:${PORTSDIR}/audio/dagrab

NO_BUILD=	yes
WRKSRC=		${WRKDIR}/cd2mp3

PLIST_FILES=	bin/cd2mp3
PORTDOCS=	README

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cd2mp3 ${PREFIX}/bin/
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
