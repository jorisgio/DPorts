# $FreeBSD: ports/www/py-plone.app.workflow/Makefile,v 1.4 2012/11/17 06:03:01 svnexp Exp $

PORTNAME=	plone.app.workflow
PORTVERSION=	2.0.7
CATEGORIES=	www python zope
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	zope@FreeBSD.org
COMMENT=	Workflow and security settings for Plone

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}kss-core>0:${PORTSDIR}/devel/py-kss-core \
		${PYTHON_PKGNAMEPREFIX}plone.app.kss>0:${PORTSDIR}/www/py-plone.app.kss \
		${PYTHON_PKGNAMEPREFIX}plone.memoize>0:${PORTSDIR}/www/py-plone.memoize \
		${PYTHON_PKGNAMEPREFIX}transaction>0:${PORTSDIR}/devel/py-transaction \
		${PYTHON_PKGNAMEPREFIX}zope.component>0:${PORTSDIR}/devel/py-zope.component \
		${PYTHON_PKGNAMEPREFIX}zope.i18n>0:${PORTSDIR}/devel/py-zope.i18n \
		${PYTHON_PKGNAMEPREFIX}zope.i18nmessageid>0:${PORTSDIR}/textproc/py-zope.i18nmessageid \
		${PYTHON_PKGNAMEPREFIX}zope.interface>0:${PORTSDIR}/devel/py-zope.interface \
		${PYTHON_PKGNAMEPREFIX}zope.schema>0:${PORTSDIR}/devel/py-zope.schema \
		${PYTHON_PKGNAMEPREFIX}zope.site>0:${PORTSDIR}/devel/py-zope.site \
		${PYTHON_PKGNAMEPREFIX}zope.testing>0:${PORTSDIR}/devel/py-zope.testing \
		${PYTHON_PKGNAMEPREFIX}Acquisition>0:${PORTSDIR}/devel/py-Acquisition \
		${PYTHON_PKGNAMEPREFIX}DateTime>0:${PORTSDIR}/devel/py-DateTime \
		${PYTHON_PKGNAMEPREFIX}Products.CMFCore>0:${PORTSDIR}/devel/py-Products.CMFCore \
		${PYTHON_PKGNAMEPREFIX}Products.DCWorkflow>0:${PORTSDIR}/devel/py-Products.DCWorkflow \
		${PYTHON_PKGNAMEPREFIX}Products.GenericSetup>0:${PORTSDIR}/devel/py-Products.GenericSetup \
		${PYTHON_PKGNAMEPREFIX}Products.statusmessages>0:${PORTSDIR}/devel/py-Products.statusmessages

DIST_SUBDIR=	zope
USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install
USE_ZIP=	yes
USE_ZOPE=	yes

.include <bsd.port.mk>
