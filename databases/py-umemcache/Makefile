# Created by: Kubilay Kocak <koobs.freebsd@gmail.com>
# $FreeBSD: ports/databases/py-umemcache/Makefile,v 1.4 2012/11/26 20:38:56 svnexp Exp $

PORTNAME=	umemcache
PORTVERSION=	1.6
CATEGORIES=	databases python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	koobs.freebsd@gmail.com
COMMENT=	Memcache client written in highly optimized C++ with Python bindings

LICENSE=	BSD

USE_DOS2UNIX=		yes
USE_PYTHON=		-2.7
USE_PYDISTUTILS=	yes
USE_ZIP=		yes

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/umemcache.so

.include <bsd.port.mk>
