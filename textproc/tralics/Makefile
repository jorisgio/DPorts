# Created by: siasia
# $FreeBSD: ports/textproc/tralics/Makefile,v 1.5 2012/12/10 04:50:38 svnexp Exp $

PORTNAME=	tralics
PORTVERSION=	2.15.0
DISTVERSIONPREFIX=	src-
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp-sop.inria.fr/marelle/tralics/src/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	LaTeX to XML translator

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}/src

MAKE_ARGS=	CC="${CXX}" CXX="${CXX}" CPPFLAGS="${CXXFLAGS}"
ALL_TARGET=	${PORTNAME}
MAKE_JOBS_SAFE=	yes

PLIST_FILES=	bin/${PORTNAME}

do-install:
	(cd ${WRKSRC} && ${INSTALL_PROGRAM} ${PORTNAME} ${PREFIX}/bin)

.include <bsd.port.mk>
