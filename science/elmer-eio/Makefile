# New ports collection makefile for:	elmer-eio
# Date created:		5 Jan 2006
# Whom:			Pedro Giffuni <giffunip@asme.org>
#
# $FreeBSD: ports/science/elmer-eio/Makefile,v 1.24 2012/11/17 06:00:57 svnexp Exp $
#

PORTNAME=	eio
PORTVERSION=	5.4.0
PORTREVISION=	3
CATEGORIES=	science
MASTER_SITES=   http://garr.dl.sourceforge.net/sourceforge/elmerfem/
PKGNAMEPREFIX=	elmer-

MAINTAINER=	sylvio@FreeBSD.org
COMMENT=	ELMER FEM Package Data base Interface

USE_FORTRAN=	yes

GNU_CONFIGURE=	yes
ALL_TARGET=

PLIST_FILES=	include/eio_api.h lib/libeioc.a lib/libeiof.a

.include <bsd.port.pre.mk>

.if ${ARCH} == "x86_64" || ${ARCH} == "ia64"
CFLAGS+=	-fPIC
FCFLAGS+=	-fPIC
.endif

.include <bsd.port.post.mk>
