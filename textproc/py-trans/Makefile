# $FreeBSD: ports/textproc/py-trans/Makefile,v 1.3 2012/11/17 06:02:18 svnexp Exp $

PORTNAME=	trans
PORTVERSION=	1.5.1
CATEGORIES=	textproc python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	d.pryadko@rambler-co.ru
COMMENT=	Module for performing transliteration

LICENSE=	BSD

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/trans.py \
		%%PYTHON_SITELIBDIR%%/trans.pyc \
		%%PYTHON_SITELIBDIR%%/trans.pyo

USE_BZIP2=	yes
USE_PYTHON=	-2.7
USE_PYDISTUTILS=yes

.include <bsd.port.mk>
