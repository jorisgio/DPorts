# Ports collection makefile for:	bzr-git
# Date created:		9 August 2010
# Whom:			Carlo Strub
#
# $FreeBSD: ports/devel/bzr-git/Makefile,v 1.14 2012/11/17 05:55:36 svnexp Exp $
#

PORTNAME=	bzr-git
PORTVERSION=	0.6.8
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	https://launchpadlibrarian.net/98666746/ \
		http://www.c-s.li/ports/

MAINTAINER=	cs@FreeBSD.org
COMMENT=	Plugin for bzr to work with git trees

LICENSE=	GPLv2

BUILD_DEPENDS=	bzr:${PORTSDIR}/devel/bzr
RUN_DEPENDS=	bzr:${PORTSDIR}/devel/bzr \
		py*-dulwich>=0.8.0:${PORTSDIR}/devel/dulwich \
		${PYTHON_SITELIBDIR}/_sqlite3.so:${PORTSDIR}/databases/py-sqlite3

WRKSRC=	${WRKDIR}/${PORTNAME}-${PORTVERSION}
USE_PYTHON=	2.5+
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	bzr_git

.include <bsd.port.mk>
