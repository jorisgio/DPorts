# New ports collection makefile for:	libublio
# Date created:				2007-09-10
# Whom:					alepulver
#
# $FreeBSD: ports/devel/libublio/Makefile,v 1.8 2012/11/17 05:55:57 svnexp Exp $
#

PORTNAME=	libublio
PORTVERSION=	20070103
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	mandree

MAINTAINER=	mandree@FreeBSD.org
COMMENT=	User space caching library

USE_LDCONFIG=	yes

.if defined(NO_PROFILE) || defined(NOPROFILE)
PLIST_SUB+=	PROFLIB="@comment "
.else
PLIST_SUB+=	PROFLIB=""
.endif

SRCCONF=	${NONEXISTENT}
MAKE_ENV+=	SRCCONF=${SRCCONF}

post-extract:
	@${CP} ${FILESDIR}/${MAKEFILE} ${WRKSRC}

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
