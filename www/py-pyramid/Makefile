# New ports collection makefile for:	py-pyramid
# Date created:		                21 March 2011
# Whom:			                Cheng-Lung Sung <clsung@FreeBSD.org>
#
# $FreeBSD: ports/www/py-pyramid/Makefile,v 1.5 2012/11/17 06:03:01 svnexp Exp $
#

PORTNAME=	pyramid
PORTVERSION=	1.2
PORTREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	clsung@FreeBSD.org
COMMENT=	A small, fast, web development framework by the Pylons community

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}Chameleon>=1.2.3:${PORTSDIR}/textproc/py-Chameleon \
		${PYTHON_PKGNAMEPREFIX}Paste>=1.7.2:${PORTSDIR}/www/py-paste \
		${PYTHON_PKGNAMEPREFIX}PasteDeploy>=1.3.3:${PORTSDIR}/www/py-pastedeploy \
		${PYTHON_PKGNAMEPREFIX}PasteScript>=1.7.4:${PORTSDIR}/www/py-pastescript \
		${PYTHON_PKGNAMEPREFIX}mako>=0.3.6:${PORTSDIR}/textproc/py-mako \
		${PYTHON_PKGNAMEPREFIX}repoze.lru>=0:${PORTSDIR}/devel/py-repoze.lru \
		${PYTHON_PKGNAMEPREFIX}translationstring>=0:${PORTSDIR}/textproc/py-translationstring \
		${PYTHON_PKGNAMEPREFIX}venusian>=1.0a1:${PORTSDIR}/devel/py-venusian \
		${PYTHON_PKGNAMEPREFIX}webob>=1.0.2:${PORTSDIR}/www/py-webob \
		${PYTHON_PKGNAMEPREFIX}zope.component>=3.6.0:${PORTSDIR}/devel/py-zope.component \
		${PYTHON_PKGNAMEPREFIX}zope.deprecation>=0:${PORTSDIR}/devel/py-zope.deprecation \
		${PYTHON_PKGNAMEPREFIX}zope.interface>=3.5.1:${PORTSDIR}/devel/py-zope.interface
RUN_DEPENDS:=	${BUILD_DEPENDS}

#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}WebTest>=1.1:${PORTSDIR}/www/py-WebTest

USE_PYTHON=	2.5+
USE_PYDISTUTILS=	easy_install

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} < 260
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}simplejson>=2.0.8:${PORTSDIR}/devel/py-simplejson
.endif

.include <bsd.port.post.mk>
