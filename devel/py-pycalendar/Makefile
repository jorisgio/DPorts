# Ports collection makefile for:    py-pycalendar
# Date created:         April 23, 2011
# Whom:                 Roland van Laar <roland@micite.net>
#
# $FreeBSD: ports/devel/py-pycalendar/Makefile,v 1.2 2012/11/17 05:56:49 svnexp Exp $
#

PORTNAME=	pycalendar
PORTVERSION=	2.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	roland@micite.net
COMMENT=	An iCalendar and vCard module for python

USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/%%PYEASYINSTALL_EGG%%

post-patch:
	@${REINPLACE_CMD} -e 's|distutils.core|setuptools|g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
