# New ports collection makefile for: py-rstyoutube
# Date created:		2011-12-16
# Whom:		Olivier Duchateau <duchateau.olivier@gmail.com>
#
# $FreeBSD: ports/textproc/py-rstyoutube/Makefile,v 1.2 2012/11/17 06:02:18 svnexp Exp $
#

PORTNAME=	rstyoutube
PORTVERSION=	0.1.1
CATEGORIES=	textproc python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	duchateau.olivier@gmail.com
COMMENT=	Embed YouTube videos in reStructuredText documents

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/docutils/__init__.py:${PORTSDIR}/textproc/py-docutils

USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install

.include <bsd.port.mk>
