# New ports collection makefile for:	py-svglib
# Date created:		2008-11-11
# Whom:			Wen Heping <wenheping@wenheping.com>
#
# $FreeBSD: ports/converters/py-svglib/Makefile,v 1.5 2012/11/17 05:55:04 svnexp Exp $
#

PORTNAME=	svglib
PORTVERSION=	0.6.3
PORTREVISION=	1
CATEGORIES=	converters python
MASTER_SITES=	CHEESESHOP \
		http://www.dinu-gherman.net/tmp/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	wen@FreeBSD.org
COMMENT=	An Library For Reading And Converting SVG

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}reportlab2>0:${PORTSDIR}/print/py-reportlab2

LICENSE=	LGPL3

USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install

.include <bsd.port.mk>
