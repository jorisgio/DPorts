# Ports collection makefile for:	py-dojango
# Date created:			Sept 13, 2010
# Whom:				jpaetzel
#
# $FreeBSD: ports/www/py-dojango/Makefile,v 1.7 2012/11/17 06:02:59 svnexp Exp $
#

PORTNAME=	dojango
PORTVERSION=	0.5.5
CATEGORIES=	www python java
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	jpaetzel@FreeBSD.org
COMMENT=	A django application for building dojo

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	${PORTNAME}

RUN_DEPENDS+=	${PYTHON_SITELIBDIR}/django/bin/django-admin.py:${PORTSDIR}/www/py-django

OPTIONS=	JAVA	"Java support needed to build dojo libraries"	off

.include <bsd.port.pre.mk>

.if defined(WITH_JAVA)
USE_JAVA=	yes
JAVA_VERSION=	1.6+
.endif

.include <bsd.port.post.mk>
