# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD: ports/devel/libexecinfo/Makefile,v 1.11 2013/02/05 15:52:09 svnexp Exp $

PORTNAME=	libexecinfo
PORTVERSION=	1.1
PORTREVISION=	3
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	itetcu

MAINTAINER=	itetcu@FreeBSD.org
COMMENT=	A library for inspecting program's backtrace

USE_BZIP2=	yes
USE_LDCONFIG=	yes
MAKE_FLAGS=	LIBDIR=${PREFIX}/lib \
		INCLUDEDIR=${PREFIX}/include

PORTDOCS=	README

.include <bsd.port.pre.mk>

.if ${ARCH} == "x86_64"
CFLAGS+=	-fno-omit-frame-pointer
.endif

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.post.mk>
