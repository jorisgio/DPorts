# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: ports/devel/py-pyro/Makefile,v 1.26 2012/12/31 13:14:08 svnexp Exp $

PORTNAME=	pyro
PORTVERSION=	4.17
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	Pyro4-${PORTVERSION}

MAINTAINER=	rm@FreeBSD.org
COMMENT=	Distributed Object Middleware for Python(IPC/RPC)

LICENSE=	MIT

USE_DOS2UNIX=	yes
# Python 3 ready
USE_PYTHON=	yes
USE_PYDISTUTILS=	easy_install
PYDISTUTILS_PKGNAME=	Pyro4

.include <bsd.port.pre.mk>

.if ${PYTHON_REL} >= 320
.include "${PORTSDIR}/devel/py-virtualenv/files/py3k-fix-pkg-plist.inc"
.endif

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
	@cd ${WRKSRC}/docs && ${COPYTREE_SHARE} . ${DOCSDIR}
.endif

.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${EXAMPLESDIR}
	@cd ${WRKSRC}/examples && ${COPYTREE_SHARE} . ${EXAMPLESDIR}
.endif

.include <bsd.port.post.mk>
