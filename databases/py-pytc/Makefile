# New ports collection makefile for:	py-pytc
# Date created:		2009-02-18
# Whom:			Li-Wen Hsu <lwhsu@FreeBSD.org>
#
# $FreeBSD: ports/databases/py-pytc/Makefile,v 1.17 2012/11/17 05:55:22 svnexp Exp $
#

PORTNAME=	pytc
PORTVERSION=	0.8
PORTREVISION=	7
CATEGORIES=	databases python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Tokyo Cabinet Python bindings

LIB_DEPENDS=	tokyocabinet:${PORTSDIR}/databases/tokyocabinet

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/pytc.so

.include <bsd.port.pre.mk>

post-patch:
	${REINPLACE_CMD} -e 's,%%LOCALBASE%%,${LOCALBASE},' ${WRKSRC}/setup.py

.include <bsd.port.post.mk>
