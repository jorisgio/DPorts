# New ports collection makefile for:   PyGtkGLExt
# Date created:                18 April 2003
# Whom:                        Kimura Fuyuki <fuyuki@hadaly.org>
#
# $FreeBSD: ports/x11-toolkits/py-gtkglext/Makefile,v 1.26 2012/11/17 06:03:38 svnexp Exp $
#

PORTNAME=	gtkglext
PORTVERSION=	1.1.0
PORTREVISION=	6
CATEGORIES=	x11-toolkits python
MASTER_SITES=	SF/${PORTNAME}/py${PORTNAME}/${PORTVERSION}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	pygtkglext-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Python binding for GtkGLExt

BUILD_DEPENDS=	${PYTHON_SITELIBDIR}/OpenGL/__init__.py:${PORTSDIR}/graphics/py-opengl
LIB_DEPENDS=	gtkglext-x11-1.0.0:${PORTSDIR}/x11-toolkits/gtkglext
RUN_DEPENDS=	${PYTHON_SITELIBDIR}/OpenGL/__init__.py:${PORTSDIR}/graphics/py-opengl

USE_BZIP2=	yes
USE_PYTHON=	yes
USE_GNOME=	gnomehack pygtk2
USE_PKGCONFIG=	build
GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.include <bsd.port.mk>
