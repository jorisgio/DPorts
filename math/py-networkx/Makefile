# Ports collection makefile for:        py-networkx
# Date created:			June, 20  2008
# Whom:				dikshie
# $FreeBSD: ports/math/py-networkx/Makefile,v 1.11 2012/11/17 05:59:29 svnexp Exp $

PORTNAME=	networkx
PORTVERSION=	1.6
CATEGORIES=	math python
MASTER_SITES=	http://networkx.lanl.gov/download/networkx/ \
		CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	dikshie@sfc.wide.ad.jp
COMMENT=	Tools for complex network

USE_PYTHON=	yes
USE_PYDISTUTILS=easy_install
PYSETUP=	setup_egg.py

post-install:
.if !defined(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}
	cd ${WRKSRC}/examples \
		&& ${FIND} . -type d -exec ${MKDIR} ${EXAMPLESDIR}/\{} \; \
		&& ${FIND} . -type f -exec ${INSTALL_DATA} \{} ${EXAMPLESDIR}/\{} \;
.endif

	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
