# New ports collection makefile for:	py-hgsvn
# Date created:				2007-12-12
# Whom:					Xin LI <delphij@FreeBSD.org>
#
# $FreeBSD: ports/devel/hgsvn/Makefile,v 1.12 2012/11/17 05:55:47 svnexp Exp $
#

PORTNAME=	hgsvn
PORTVERSION=	0.1.9
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DIST_SUBDIR=	python

MAINTAINER=	delphij@FreeBSD.org
COMMENT=	Scripts to work locally on Subversion checkouts using Mercurial

RUN_DEPENDS=	svn:${PORTSDIR}/devel/subversion \
		hg:${PORTSDIR}/devel/mercurial

USE_PYTHON=	yes
USE_PYDISTUTILS=easy_install
PLIST_SUB=	VERSION=${PORTVERSION} PYVER=${PYTHON_VERSION:S/python//}

post-patch:
	@cd ${WRKSRC} && ${MV} setup.py setup.py.orig && ${GREP} -v use_setuptools setup.py.orig > setup.py && cd -

.include <bsd.port.mk>
