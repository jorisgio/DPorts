# $FreeBSD: ports/sysutils/xjobs/Makefile,v 1.5 2012/11/17 06:01:50 svnexp Exp $

PORTNAME=	xjobs
PORTVERSION=	20120412
CATEGORIES=	sysutils
MASTER_SITES=	http://www.maier-komor.de/xjobs/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Utility reads job descriptions line by line and executes in parallel

LICENSE=	GPLv2

GNU_CONFIGURE=	yes
PLIST_FILES=	bin/xjobs
MAN1=	xjobs.1

PORTDOCS=	ChangeLog README

.include <bsd.port.options.mk>

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.1 ${MANPREFIX}/man/man1

.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
. for doc in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${doc} ${DOCSDIR}
. endfor
.endif

.include <bsd.port.mk>
