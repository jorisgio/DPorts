# Created by: pusto@web.de
# $FreeBSD: ports/math/qhull/Makefile,v 1.21 2012/11/17 05:59:29 svnexp Exp $

PORTNAME=	qhull
PORTVERSION=	2012.1
CATEGORIES=	math
MASTER_SITES=	http://www.qhull.org/download/
DISTNAME=	${PORTNAME}-${PORTVERSION}-src
EXTRACT_SUFX=	.tgz

MAINTAINER=	stephen@FreeBSD.org
COMMENT=	Qhull computes convex hulls, Delaunay triangulations, and halfspaces

USE_CMAKE=	yes
USE_LDCONFIG=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

MAN1=	qhull.1 rbox.1

CONFLICTS=	qhull-1.0* afni-[0-9]*

post-patch:
	${REINPLACE_CMD} -e 's#share/man/man#man/man#g' \
		${WRKSRC}/CMakeLists.txt

.if defined(NOPORTDOCS)
EXTRA_PATCHES=	${PATCHDIR}/extra-patch-CMakeLists.txt
.endif

.include <bsd.port.mk>
