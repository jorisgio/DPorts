# $FreeBSD: ports/www/py-plone.app.theming/Makefile,v 1.4 2012/11/17 06:03:01 svnexp Exp $

PORTNAME=	plone.app.theming
PORTVERSION=	1.0.3
PORTEPOCH=	1
CATEGORIES=	www python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Integrates the Diazo theming engine with Plone

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}diazo>=0:${PORTSDIR}/devel/py-diazo \
		${PYTHON_PKGNAMEPREFIX}lxml>=2.2.4:${PORTSDIR}/devel/py-lxml \
		${PYTHON_PKGNAMEPREFIX}plone.app.registry>=1.0:${PORTSDIR}/www/py-plone.app.registry \
		${PYTHON_PKGNAMEPREFIX}plone.subrequest>=0:${PORTSDIR}/www/py-plone.subrequest \
		${PYTHON_PKGNAMEPREFIX}plone.transformchain>=0:${PORTSDIR}/www/py-plone.transformchain \
		${PYTHON_PKGNAMEPREFIX}plone.resource>=1.0:${PORTSDIR}/www/py-plone.resource \
		${PYTHON_PKGNAMEPREFIX}repoze.xmliter>=0.3:${PORTSDIR}/devel/py-repoze.xmliter \
		${PYTHON_PKGNAMEPREFIX}five.globalrequest>=0:${PORTSDIR}/devel/py-five.globalrequest \
		${PYTHON_PKGNAMEPREFIX}zope.traversing>=0:${PORTSDIR}/devel/py-zope.traversing

DIST_SUBDIR=	zope
USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install
USE_ZIP=	yes

.include <bsd.port.mk>
