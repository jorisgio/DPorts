# New ports collection makefile for:	py-qt4-qct
# Date created:				10 Apr 2007
# Whom:					Boris Samorodov <bsam@FreeBSD.org>
#
# $FreeBSD: ports/devel/qct/Makefile,v 1.21 2012/11/17 05:56:54 svnexp Exp $
#

PORTNAME=	qct
PORTVERSION=	1.7
PORTREVISION=	7
CATEGORIES=	devel python
MASTER_SITES=	http://qct.sourceforge.net/ \
		ftp://ftp.ipt.ru/pub/download/${PORTNAME}/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	QCT GUI commit tool

LICENSE=	GPLv2

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}qt4-gui>=0:${PORTSDIR}/x11-toolkits/py-qt4-gui
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}qt4-gui>=0:${PORTSDIR}/x11-toolkits/py-qt4-gui

USE_PYTHON=	2.5+
USE_PYDISTUTILS=	yes
WRKSRC=		${WRKDIR}/qct

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_MAN} ${WRKSRC}/doc/qct.1.txt ${DOCSDIR}/qct.1.txt
.endif

.include <bsd.port.mk>
