# New ports collection makefile for:	py-liblzma
# Date created:		09 Dec 2008
# Whom:			David Naylor <naylor.b.david@gmail.com>
#
# $FreeBSD: ports/archivers/py-liblzma/Makefile,v 1.11 2012/11/17 05:54:23 svnexp Exp $

PORTNAME=	liblzma
PORTVERSION=	0.5.3
PORTREVISION=	2
CATEGORIES=	archivers python
MASTER_SITES=	${MASTER_SITE_CHEESESHOP}
MASTER_SITE_SUBDIR=	source/p/py${PORTNAME}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PYDISTUTILS_PKGNAME}-${PORTVERSION}

MAINTAINER=	naylor.b.david@gmail.com
COMMENT=	Python binding for the LZMA compression library

USE_PKGCONFIG=	yes
USE_BZIP2=	yes
USE_PYTHON=	2.6+
USE_PYDISTUTILS=yes
PYDISTUTILS_PKGNAME=	py${PORTNAME}

.include <bsd.port.pre.mk>

.if ${OSVERSION} < 800505 || (${OSVERSION} >= 900000 && ${OSVERSION} < 900012)
LIB_DEPENDS+=	lzma.5:${PORTSDIR}/archivers/xz
.else
post-patch:
	@${REINPLACE_CMD} -e 's/pc_cflags = .*/pc_cflags = ""/' \
		-e 's/pc_libs = .*/pc_libs = "-llzma"/' ${WRKSRC}/setup.py
.endif

.include <bsd.port.post.mk>
