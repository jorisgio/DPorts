# New ports collection makefile for:	py-flask-babel
# Date created:							2010-09-26
# Whom:									Olivier Duchateau <duchateau.olivier@gmail.com>
#
# $FreeBSD: ports/devel/py-flask-babel/Makefile,v 1.4 2012/11/17 05:56:46 svnexp Exp $
#

PORTNAME=	Flask-Babel
PORTVERSION=	0.8
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	duchateau.olivier@gmail.com
COMMENT=	Adds i18n/l10n support to Flask applications

LICENSE=	BSD

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}Flask>=0.8:${PORTSDIR}/www/py-flask \
	${PYTHON_PKGNAMEPREFIX}Babel>=0.9:${PORTSDIR}/devel/py-babel \
	${PYTHON_PKGNAMEPREFIX}pytz>=2011:${PORTSDIR}/devel/py-pytz \
	${PYTHON_PKGNAMEPREFIX}speaklater>=1.2:${PORTSDIR}/devel/py-speaklater

USE_PYTHON=	2.6+
USE_PYDISTUTILS=	easy_install

.include <bsd.port.mk>
