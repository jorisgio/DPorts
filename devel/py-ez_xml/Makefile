# New ports collection makefile for:	py-ez_xml
# Date created:		2007-03-27
# Whom:			Thinker K.F. Li <thinker@branda.to>
#
# $FreeBSD: ports/devel/py-ez_xml/Makefile,v 1.3 2012/11/17 05:56:46 svnexp Exp $
#

PORTNAME=	ez_xml
PORTVERSION=	0.1.3
CATEGORIES=	devel textproc python
MASTER_SITES=	http://master.branda.to/downloads/ez_xml/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	thinker@seeker.branda.to
COMMENT=	Ez_xml compiles a XML template file into a Python module

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/pythk/__init__.py:${PORTSDIR}/devel/pythk

USE_PYTHON=	yes
USE_PYDISTUTILS=yes

.include <bsd.port.mk>
