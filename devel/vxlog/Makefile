# New ports collection makefile for:	vxlog
# Date created:               2010-05-18
# Whom:                       Konstantin Lepa <konstantin.lepa@gmail.com>
#
# $FreeBSD: ports/devel/vxlog/Makefile,v 1.5 2012/11/17 05:57:06 svnexp Exp $
#

PORTNAME=	vxlog
PORTVERSION=	1.0.3
CATEGORIES=	devel
MASTER_SITES=	http://bitbucket.org/klepa/vxlog/downloads/ \
		SF/${PORTNAME}

MAINTAINER=	konstantin.lepa@gmail.com
COMMENT=	C++ logging library

LICENSE=	MIT

USE_CMAKE=	yes
USE_LDCONFIG=	yes
USE_GCC=	4.2+

CMAKE_ARGS+=	-DTESTING:BOOL=OFF

.include <bsd.port.mk>
