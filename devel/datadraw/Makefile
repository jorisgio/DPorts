# ex:ts=8
# Ports collection makefile for:	datadraw
# Date created:			Aug 31, 2007
# Whom:				ijliao
#
# $FreeBSD: ports/devel/datadraw/Makefile,v 1.6 2012/11/17 05:55:40 svnexp Exp $
#

PORTNAME=	datadraw
PORTVERSION=	3.1.1
CATEGORIES=	devel
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}${PORTVERSION}
DISTNAME=	${PORTNAME}${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A feature rich persistent database generator

USE_BISON=	build
HAS_CONFIGURE=	yes
USE_GMAKE=	yes
ALL_TARGET=	# empty

.if !defined(NOPORTDOCS)
PORTDOCS=	*

post-install:
	@${MKDIR} ${DOCSDIR}
	${CP} -R ${WRKSRC}/www/* ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/manual.pdf ${DOCSDIR}
.endif

.include <bsd.port.mk>
