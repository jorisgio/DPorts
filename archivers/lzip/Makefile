# New ports collection makefile for:	lzip
# Date created:		2009-06-20
# Whom:			Sylvio Cesar <sylvio@FreeBSD.org>
#
# $FreeBSD: ports/archivers/lzip/Makefile,v 1.12 2012/11/17 05:54:21 svnexp Exp $
#

PORTNAME=	lzip
PORTVERSION=	1.13
CATEGORIES=	archivers
MASTER_SITES=	SAVANNAH/lzip

MAINTAINER=	sylvio@FreeBSD.org
COMMENT=	Is a lossless data compressor based on the LZMA algorithm

LICENSE=	GPLv3

PLIST_FILES=	bin/lzip

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}" \
		LDFLAGS="${LDFLAGS}"
MAN1=		lzip.1
INFO=		lzip

.include <bsd.port.mk>
