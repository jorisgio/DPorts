# New ports collection Makefile for:	mod_line_edit
#
# Date created:		10/01/2007
# Whom:			Dominic Marks <dom@goodforbusiness.co.uk>
#
# $FreeBSD: ports/www/mod_line_edit/Makefile,v 1.10 2012/11/17 06:02:41 svnexp Exp $
#

PORTNAME=	mod_line_edit
PORTVERSION=	1.0.0
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://apache.webthing.com/mod_line_edit/
PKGNAMEPREFIX=	${APACHE_PKGNAMEPREFIX}
DISTNAME=	${PORTNAME}.c
EXTRACT_SUFX=	

MAINTAINER=	apache@FreeBSD.org
COMMENT=	Apache module for simple text rewriting

MAKE_JOBS_SAFE=  yes

WRKSRC=	${WRKDIR}

USE_APACHE=	22+

AP_FAST_BUILD=	yes
AP_GENPLIST=	yes

pre-fetch:
	@${MKDIR} ${WRKDIR}/

do-extract:
	@${DO_NADA}

post-fetch:
	@${CP} ${DISTDIR}/${PORTNAME}.c ${WRKDIR}/

.include <bsd.port.mk>
