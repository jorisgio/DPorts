# New ports collection makefile for:	py-ordereddict
# Date created:		2011-11-20
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/devel/py-ordereddict/Makefile,v 1.2 2012/11/17 05:56:48 svnexp Exp $
#

PORTNAME=	ordereddict
PORTVERSION=	1.1
CATEGORIES=	devel
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	A drop-in substitute for Py2.7's new collections

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USE_PYTHON=	2.4-2.7 # for graphics/py-blockdiag
USE_PYDISTUTILS=	yes

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/ordereddict.py \
		%%PYTHON_SITELIBDIR%%/ordereddict.pyc \
		%%PYTHON_SITELIBDIR%%/ordereddict.pyo

.include <bsd.port.mk>
