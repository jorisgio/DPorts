# New ports collection makefile for:    mod_log_firstbyte
# Date created:				January 29, 2008
# Whom:					Yen-Ming Lee <leeym@FreeBSD.org>
#
# $FreeBSD: ports/www/mod_log_firstbyte/Makefile,v 1.12 2012/11/17 06:02:41 svnexp Exp $
#

PORTNAME=	mod_log_firstbyte
PORTVERSION=	1.01
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://mod-log-firstbyte.googlecode.com/svn/trunk/
PKGNAMEPREFIX=	${APACHE_PKGNAMEPREFIX}
DISTFILES=	${PORTNAME}.c readme.txt
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	apache@FreeBSD.org
COMMENT=	Log the time between request and the first byte of the response served

MAKE_JOBS_SAFE=	yes

USE_APACHE=	22+

PROJECTHOST=	mod-log-firstbyte
PKGMESSAGE=	${WRKSRC}/readme.txt

AP_FAST_BUILD=	yes
AP_GENPLIST=	yes

do-extract:
	${MKDIR} ${WRKSRC}
	cd ${DISTDIR}/${DIST_SUBDIR} && ${CP} ${DISTFILES} ${WRKSRC}

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
