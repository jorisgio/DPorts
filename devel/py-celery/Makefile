# Created by: Alexandros Kosiaris <akosiaris+ports@gmail.com>
# $FreeBSD: ports/devel/py-celery/Makefile,v 1.4 2012/11/17 05:56:45 svnexp Exp $

PORTNAME=	celery
PORTVERSION=	2.5.5
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	akosiaris+ports@gmail.com
COMMENT=	Asynchronous task queue/job queue

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}amqplib>=0:${PORTSDIR}/net/py-amqplib \
		${PYTHON_PKGNAMEPREFIX}anyjson>=0.3.1:${PORTSDIR}/devel/py-anyjson \
		${PYTHON_PKGNAMEPREFIX}dateutil>=1.5:${PORTSDIR}/devel/py-dateutil \
		${PYTHON_PKGNAMEPREFIX}kombu>=2.1.8:${PORTSDIR}/net/py-kombu \
		${PYTHON_PKGNAMEPREFIX}memcached>=0:${PORTSDIR}/databases/py-memcached

USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} < 270
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}ordereddict>=0:${PORTSDIR}/devel/py-ordereddict \
		${PYTHON_PKGNAMEPREFIX}importlib>=0:${PORTSDIR}/devel/py-importlib
.endif

.include <bsd.port.post.mk>
