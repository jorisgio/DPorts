# New ports collection makefile for:	py-zope.formlib
# Date created:				18 December 2011
# Whom:					Ruslan Mahmatkhanov <cvs-src@yandex.ru>
#
# $FreeBSD: ports/devel/py-zope.formlib/Makefile,v 1.3 2012/11/17 05:56:53 svnexp Exp $
#

PORTNAME=	zope.formlib
PORTVERSION=	4.0.6
CATEGORIES=	devel python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Form generation and validation library for Zope

LICENSE=	ZPL21

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pytz>=0:${PORTSDIR}/devel/py-pytz \
		${PYTHON_PKGNAMEPREFIX}zope.browser>=1.1:${PORTSDIR}/devel/py-zope.browser \
		${PYTHON_PKGNAMEPREFIX}zope.browserpage>=3.11.0:${PORTSDIR}/devel/py-zope.browserpage \
		${PYTHON_PKGNAMEPREFIX}zope.component>=0:${PORTSDIR}/devel/py-zope.component \
		${PYTHON_PKGNAMEPREFIX}zope.event>=0:${PORTSDIR}/devel/py-zope.event \
		${PYTHON_PKGNAMEPREFIX}zope.i18n>=0:${PORTSDIR}/devel/py-zope.i18n \
		${PYTHON_PKGNAMEPREFIX}zope.i18nmessageid>=0:${PORTSDIR}/textproc/py-zope.i18nmessageid \
		${PYTHON_PKGNAMEPREFIX}zope.interface>=0:${PORTSDIR}/devel/py-zope.interface \
		${PYTHON_PKGNAMEPREFIX}zope.lifecycleevent>=0:${PORTSDIR}/devel/py-zope.lifecycleevent \
		${PYTHON_PKGNAMEPREFIX}zope.publisher>=0:${PORTSDIR}/devel/py-zope.publisher \
		${PYTHON_PKGNAMEPREFIX}zope.schema>=3.5.1:${PORTSDIR}/devel/py-zope.schema \
		${PYTHON_PKGNAMEPREFIX}zope.security>=0:${PORTSDIR}/security/py-zope.security \
		${PYTHON_PKGNAMEPREFIX}zope.traversing>=0:${PORTSDIR}/devel/py-zope.traversing \
		${PYTHON_PKGNAMEPREFIX}zope.datetime>=0:${PORTSDIR}/devel/py-zope.datetime

DIST_SUBDIR=	zope
USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install
USE_ZIP=	yes

.include <bsd.port.mk>
