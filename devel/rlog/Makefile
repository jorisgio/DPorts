# New ports collection makefile for:	rlog
# Date created:		2007-01-05
# Whom:			trasz <trasz@pin.if.uz.zgora.pl>
#
# $FreeBSD: ports/devel/rlog/Makefile,v 1.10 2012/11/17 05:56:56 svnexp Exp $
#

PORTNAME=	rlog
PORTVERSION=	1.4
CATEGORIES=	devel
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A flexible message logging facility for C++

LICENSE=	LGPL21 LGPL3
LICENSE_COMB=	dual

USE_GNOME=	gnomehack
USE_GMAKE=	yes
USE_AUTOTOOLS=	libtool
USE_LDCONFIG=	yes
MAKE_JOBS_SAFE=	yes

post-patch:
	@${REINPLACE_CMD} -e \
		'/^SUBDIRS/s|docs||' ${WRKSRC}/Makefile.in

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}/html
	@(cd ${WRKSRC}/docs/html && ${COPYTREE_SHARE} . ${DOCSDIR}/html)
.endif

.include <bsd.port.mk>
