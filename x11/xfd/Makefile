# New ports collection makefile for:	xfd
# Date Created:				17 Feb 2006
# Whom:					Florent Thoumie <flz@FreeBSD.org>
#
# $FreeBSD: ports/x11/xfd/Makefile,v 1.4 2012/11/17 06:03:21 svnexp Exp $
#

PORTNAME=	xfd
PORTVERSION=	1.1.0
CATEGORIES=	x11

MAINTAINER=	x11@FreeBSD.org
COMMENT=	Display all characters in an X font

LICENSE=	MIT

LIB_DEPENDS=	freetype.9:${PORTSDIR}/print/freetype2
BUILD_DEPENDS=	fc-cache:${PORTSDIR}/x11-fonts/fontconfig
RUN_DEPENDS=	fc-cache:${PORTSDIR}/x11-fonts/fontconfig

XORG_CAT=	app
USE_XORG=	xft xt xaw

MAN1=		xfd.1

.include <bsd.port.mk>
