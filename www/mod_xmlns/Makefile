# New ports collection Makefile for:	mod_xmlns
#
# Date created:		10/01/2007
# Whom:			Dominic Marks <dom@goodforbusiness.co.uk>
#
# $FreeBSD: ports/www/mod_xmlns/Makefile,v 1.9 2012/11/17 06:02:42 svnexp Exp $
#

PORTNAME=	mod_xmlns
PORTVERSION=	0.97
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://apache.webthing.com/svn/apache/filters/xmlns/
PKGNAMEPREFIX=	${APACHE_PKGNAMEPREFIX}
DISTFILES=	xmlns.h mod_xmlns.c

MAINTAINER=	apache@FreeBSD.org
COMMENT=	Apache module for XML namespaces

MAKE_JOBS_SAFE=  yes

USE_GNOME=	libxml2
USE_APACHE=	22+

XML2_INC=	${LOCALBASE}/include/libxml2
XML2_LIB=	${LOCALBASE}/lib

do-extract:
	@${DO_NADA}

pre-fetch:
	@${MKDIR} ${WRKDIR}

post-fetch:
	@${CP} ${DISTDIR}/xmlns.h ${DISTDIR}/mod_xmlns.c ${WRKDIR}

do-build:
	@(cd ${WRKDIR} && ${APXS} -c -I ${XML2_INC} -L ${XML2_LIB} -lxml2 mod_xmlns.c)

do-install:
	@(cd ${WRKDIR} && ${APXS} -A -i mod_xmlns.la)

.include <bsd.port.mk>
