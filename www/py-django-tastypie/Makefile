# New ports collection makefile for:	django-tastypie
# Date created:			May 8, 2012
# Whom:				William Grzybowski
#
# $FreeBSD: ports/www/py-django-tastypie/Makefile,v 1.3 2012/11/17 06:02:59 svnexp Exp $
#

PORTNAME=	django-tastypie
PORTVERSION=	0.9.11
PORTREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	william88@gmail.com
COMMENT=	Create REST API for Django apps

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}mimeparse>=0:${PORTSDIR}/devel/py-mimeparse \
		${PYTHON_PKGNAMEPREFIX}dateutil>=1.5:${PORTSDIR}/devel/py-dateutil

USE_PYTHON=	2.5+
USE_PYDISTUTILS=	easy_install
PYDISTUTILS_NOEGGINFO=	yes

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/%%PYEASYINSTALL_EGG%%

.include <bsd.port.mk>
