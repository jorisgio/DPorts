# New ports collection makefile for:	wapiti
# Date created:                3 October 2007
# Whom:                        Philippe Audeoud <jadawin@tuxaco.net>
# $FreeBSD: ports/security/wapiti/Makefile,v 1.6 2012/11/17 06:01:22 svnexp Exp $

PORTNAME=	wapiti
PORTVERSION=	1.1.6
PORTREVISION=	1
CATEGORIES=	security
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	jadawin@FreeBSD.org
COMMENT=	Wapiti is a vulnerability scanner for web applications

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/tidy:${PORTSDIR}/www/py-utidy

USE_PYTHON=	2.5+
NO_BUILD=	yes
PORTDOCS=	README

PLIST_FILES=	bin/wapiti.py \
		bin/lswww.py \
		bin/getcookie.py \
		bin/cookie.py \
		bin/BeautifulSoup.py

do-install:
.for i in wapiti.py lswww.py getcookie.py cookie.py BeautifulSoup.py
	${INSTALL_SCRIPT} ${WRKSRC}/${i} ${PREFIX}/bin/
.endfor
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
