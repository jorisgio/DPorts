# Ports collection Makefile for:	rox-wallpaper
# Date created:				Jan 13 2003
# Whom:					olgeni@FreeBSD.org
#
# $FreeBSD: ports/x11/rox-wallpaper/Makefile,v 1.19 2012/11/17 06:03:19 svnexp Exp $
#

PORTNAME=	rox-wallpaper
PORTVERSION=	2.3
PORTREVISION=	1
CATEGORIES=	x11
MASTER_SITES=	SF/rox/Wallpaper/${PORTVERSION}
DISTNAME=	Wallpaper-${PORTVERSION}

MAINTAINER=	olgeni@FreeBSD.org
COMMENT=	Wallpaper management tool for the ROX desktop

RUN_DEPENDS=	${LOCALBASE}/bin/rox:${PORTSDIR}/x11-fm/rox-filer \
		${LOCALBASE}/lib/ROX-Lib2/python/rox/__init__.py:${PORTSDIR}/devel/py-roxlib

USE_PYTHON=	yes

WRKSRC=		${WRKDIR}/Wallpaper

do-build:
	@${PYTHON_CMD} -m compileall ${WRKSRC}
	@${PYTHON_CMD} -O -m compileall ${WRKSRC}

do-install:
	@${MKDIR} ${PREFIX}/apps
	@${CP} -r ${WRKSRC} ${PREFIX}/apps/Wallpaper
	@${CHOWN} -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/apps/Wallpaper

.include <bsd.port.mk>
