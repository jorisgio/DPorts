# Created by:	Dmitry Sivachenko <demon@FreeBSD.org>
#
# $FreeBSD: ports/science/py-scikit-learn/Makefile,v 1.4 2012/11/17 06:00:59 svnexp Exp $

PORTNAME=	scikit-learn
PORTVERSION=	0.12.1
CATEGORIES=	science python
MASTER_SITES=	${MASTER_SITE_CHEESESHOP}
MASTER_SITE_SUBDIR=source/s/scikit-learn
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	demon@FreeBSD.org
COMMENT=	Machine learning algorithms for python

BUILD_DEPENDS=	${PYNUMPY}
LIB_DEPENDS=	cblas:${PORTSDIR}/math/cblas
RUN_DEPENDS=	${PYNUMPY} \
		${PYTHON_PKGNAMEPREFIX}scipy>0.8.0:${PORTSDIR}/science/py-scipy

USE_FORTRAN=	yes
LATEST_LINK=	py-${PORTNAME}

USE_PYTHON=	-2.7
USE_PYDISTUTILS=	yes

.include <bsd.port.mk>
