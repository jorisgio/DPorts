# New ports collection makefile for:	md4 collision generator
# Date created:		Wed Nov 23 04:51:32 UTC 2005
# Whom:			Mario Sergio Fujikawa Ferreira <lioux@FreeBSD.org>
#
# $FreeBSD: ports/security/md4coll/Makefile,v 1.7 2012/11/17 06:01:08 svnexp Exp $
#

PORTNAME=	md4coll
DISTVERSION=	0.1
CATEGORIES=	security
MASTER_SITES=	http://www.stachliu.com/ \
		http://mirror.roe.ch/dist/${PORTNAME}/${DISTVERSION}/
DISTNAME=	${PORTNAME}.c
EXTRACT_SUFX=
EXTRACT_ONLY=

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Fast MD4 collision generator

NO_WRKSUBDIR=	yes
PLIST_FILES=	bin/${PORTNAME}

post-extract:
	@${CP} ${DISTDIR}/${DISTNAME} ${WRKSRC}

do-build:
	${CC} ${CFLAGS} ${WRKSRC}/${DISTNAME} -o ${WRKSRC}/${PORTNAME}

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
