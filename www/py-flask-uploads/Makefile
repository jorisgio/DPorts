# New ports collection makefile for:	py-flask-uploads
# Date created:							2010-09-26
# Whom:									Olivier Duchateau <duchateau.olivier@gmail.com>
#
# $FreeBSD: ports/www/py-flask-uploads/Makefile,v 1.3 2012/11/17 06:03:00 svnexp Exp $
#

PORTNAME=	Flask-Uploads
PORTVERSION=	0.1.3
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	duchateau.olivier@gmail.com
COMMENT=	Flexible and efficient upload handling for Flask

LICENSE=	MIT

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}Flask>=0.6:${PORTSDIR}/www/py-flask

USE_PYTHON=	2.6+
USE_PYDISTUTILS=	easy_install

.include <bsd.port.mk>
