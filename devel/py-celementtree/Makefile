# Ports collection makefile for:	py-cElementTree
# Date created:				11 January 2006
# Whom:					Nicola Vitale <nivit@email.it>
#
# $FreeBSD: ports/devel/py-celementtree/Makefile,v 1.6 2012/11/17 05:56:45 svnexp Exp $
#

PORTNAME=	cElementTree
PORTVERSION=	1.0.5
PORTREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	http://effbot.org/media/downloads/ \
		http://nivi.interfree.it/distfiles/${PORTNAME}/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PORTNAME}-${PORTVERSION}-20051216

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	A fast C implementation of the ElementTree API

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/elementtree/__init__.py:${PORTSDIR}/devel/py-elementtree

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGVERSION=	1.0.5-20051216

EXAMPLESDIR=	${PREFIX}/share/examples/py-${PORTNAME}

.if !defined(NOPORTDOCS)
post-install:
	@${MKDIR} ${EXAMPLESDIR}
	${CP} -R ${WRKSRC}/samples/ ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
