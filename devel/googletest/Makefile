# New ports collection makefile for:	googletest
# Date created:			        Oct 14, 2008
# Whom:				        Cheng-Lung Sung <clsung@FreeBSD.org>
#
# $FreeBSD: ports/devel/googletest/Makefile,v 1.9 2012/11/17 05:55:46 svnexp Exp $
#

PORTNAME=	googletest
PORTVERSION=	1.5.0
CATEGORIES=	devel
MASTER_SITES=	GOOGLE_CODE
DISTNAME=	gtest-${PORTVERSION}

MAINTAINER=	clsung@FreeBSD.org
COMMENT=	A framework for writing C++ tests on a variety of platforms

GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
USE_PYTHON_BUILD=	yes

regression-test:
	cd ${WRKSRC}; ${MAKE} check

.include <bsd.port.mk>
