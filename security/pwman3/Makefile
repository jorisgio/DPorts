# New ports collection makefile for:	pwman3
# Date created:				29 March 2008
# Whom:					Yarodin <yarodin@gmail.com>
#
# $FreeBSD: ports/security/pwman3/Makefile,v 1.3 2012/11/17 06:01:16 svnexp Exp $
#

PORTNAME=	pwman3
PORTVERSION=	0.0.6
PORTREVISION=	1
CATEGORIES=	security python
MASTER_SITES=	http://pwman.bleurgh.com/~ivan/pwman3/source/ \
		http://source.antisupport.com/pwman3/
DISTNAME=	Pwman3-${PORTVERSION}

MAINTAINER=	yarodin@gmail.com
COMMENT=	Console password management application with sql storage

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pycrypto>=2.0:${PORTSDIR}/security/py-pycrypto \
		${PYTHON_PKGNAMEPREFIX}sqlite3>=0:${PORTSDIR}/databases/py-sqlite3

USE_PYTHON=		2.5+
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	Pwman3

.include <bsd.port.mk>
