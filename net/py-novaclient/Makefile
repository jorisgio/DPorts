# New ports collection makefile for:	py-novaclient
# Date created:				2011-12-08
# Whom:					Roman Bogorodskiy <novel@FreeBSD.org>
#
# $FreeBSD: ports/net/py-novaclient/Makefile,v 1.3 2012/11/17 06:00:16 svnexp Exp $
#

PORTNAME=	novaclient
PORTVERSION=	2.6.8
CATEGORIES=	net python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	python-${PORTNAME}-${PORTVERSION}

MAINTAINER=	novel@FreeBSD.org
COMMENT=	Client for the OpenStack Nova API

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}argparse>=0:${PORTSDIR}/devel/py-argparse \
		${PYTHON_PKGNAMEPREFIX}prettytable>=0:${PORTSDIR}/devel/py-prettytable \
		${PKGNAMEPREFIX}httplib2>=0:${PORTSDIR}/www/py-httplib2

USE_PYTHON=	yes
USE_PYDISTUTILS=easy_install
PYDISTUTILS_NOEGGINFO=	yes
PYDISTUTILS_PKGNAME=	python-${PORTNAME}

PLIST_FILES=	bin/nova \
		${PYTHONPREFIX_SITELIBDIR:S;${PREFIX}/;;}/${PYEASYINSTALL_EGG}

post-patch:
	@${REINPLACE_CMD} -e 's,install_requires.*,,' ${WRKSRC}/setup.py

.include <bsd.port.mk>
