# Created by: Ying-Chieh Liao <ijliao@FreeBSD.org>
# $FreeBSD: ports/devel/jsmin/Makefile,v 1.15 2012/12/10 22:24:15 svnexp Exp $

PORTNAME=	jsmin
PORTVERSION=	20121204
CATEGORIES=	devel

MAINTAINER=	madpilot@FreeBSD.org
COMMENT=	The JavaScript Minifier

USE_GITHUB=	yes
GH_ACCOUNT=	douglascrockford
GH_PROJECT=	JSMin
GH_TAGNAME=	master
GH_COMMIT=	2a943db

PLIST_FILES=	bin/jsmin
PORTDOCS=	README

.include <bsd.port.options.mk>

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -o ${PORTNAME} ${PORTNAME}.c

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
.if ${PORT_OPTIONS:MDOCS}
	${MKDIR} ${DOCSDIR}
	${INSTALL_MAN} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
