# New ports collection makefile for:	py-gvgen
# Date created:				19 May 2008
# Whom:					Sofian Brabez <sbrabez@gmail.com>
#
# $FreeBSD: ports/graphics/py-gvgen/Makefile,v 1.3 2012/11/17 05:58:20 svnexp Exp $
#

PORTNAME=	gvgen
PORTVERSION=	0.9
CATEGORIES=	graphics python
MASTER_SITES=	http://software.inl.fr/releases/GvGen/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	sbz@FreeBSD.org
COMMENT=	An easy python interface to generate dot files

USE_PYTHON=	2.5+
USE_PYDISTUTILS=easy-install
PYDISTUTILS_PKGVERSION=	0.9
PYDISTUTILS_EGGINFO=	GvGen-${PORTVERSION}-py${PYTHON_VER}.egg-info

PORTDOCS=	user-guide.tex.lyx

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for f in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
