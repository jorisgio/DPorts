# New ports collection makefile for:    woof
# Date created:                         7 July 2009
# Whom:                                 Dereckson <dereckson@gmail.com>
#
# $FreeBSD: ports/www/woof/Makefile,v 1.6 2012/11/17 06:03:11 svnexp Exp $
#

PORTNAME=	woof
PORTVERSION=	2009.12.27
CATEGORIES=	www
MASTER_SITES=	http://www.home.unix-ag.org/simon/
DISTNAME=	${PORTNAME}-${PORTVERSION:S/./-/g}
EXTRACT_SUFX=	.py
EXTRACT_ONLY=	# empty

MAINTAINER=	dereckson@gmail.com
COMMENT=	Web Offer One File, an ad-hoc single file webserver

LICENSE=	GPLv2

USE_PYTHON=	yes
NO_BUILD=	yes
PLIST_FILES=	bin/woof

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} >= 270
EXTRA_PATCHES+=	${FILESDIR}/extra-patch-woof-2009-12-27-python27.diff
.endif

do-extract:
	@${MKDIR} ${WRKSRC}
	@${CP} ${DISTDIR}/${DISTFILES} ${WRKSRC}/${DISTFILES}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${DISTFILES} ${PREFIX}/bin/woof

.include <bsd.port.post.mk>
