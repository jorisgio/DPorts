# New ports collection makefile for:	generatorrunner
# Date created:		2011-03-21
# Whom:			Nicola Vitale <nivit@FreeBSD.org>
#
# $FreeBSD: ports/devel/generatorrunner/Makefile,v 1.5 2012/11/17 05:55:44 svnexp Exp $
#

PORTNAME=	generatorrunner
PORTVERSION=	0.6.16
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://www.pyside.org/files/

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Tool to create binding generators for C++ and Qt libraries

LICENSE=	GPLv2

BUILD_DEPENDS=	sphinx-build:${PORTSDIR}/textproc/py-sphinx
LIB_DEPENDS=	apiextractor.0:${PORTSDIR}/devel/apiextractor

.if !defined(NO_INSTALL_MANPAGES)
MAN1=	docgenerator.1 generatorrunner.1
.else
CMAKE_ARGS=	-DNO_INSTALL_MANPAGES:BOOL=ON
.endif

PLIST_SUB=	PORTVERSION=${PORTVERSION}

USE_QT4=	gui qmake_build qtestlib moc_build rcc_build uic_build xml

USE_BZIP2=	yes
USE_CMAKE=	yes
USE_LDCONFIG=	yes

.include <bsd.port.mk>
