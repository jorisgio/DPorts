# New ports collection makefile for:   libXtst
# Date Created:			8 Feb 2006
# Whom:				Eric Anholt <anholt@FreeBSD.org>
#
# $FreeBSD: ports/x11/libXtst/Makefile,v 1.10 2012/11/17 06:03:17 svnexp Exp $
#

PORTNAME=	libXtst
PORTVERSION=	1.2.0
CATEGORIES=	x11

MAINTAINER=	x11@FreeBSD.org
COMMENT=	X Test extension

LICENSE=	MIT

XORG_CAT=	lib
USE_XORG=	x11 xext recordproto:both xextproto inputproto:both \
		xi
USE_AUTOTOOLS=	libtool

CONFIGURE_ARGS+=--disable-specs --without-xmlto

MAN3=	XTestCompareCurrentCursorWithWindow.3 \
	XTestCompareCursorWithWindow.3 \
	XTestDiscard.3 \
	XTestFakeButtonEvent.3 \
	XTestFakeKeyEvent.3 \
	XTestFakeMotionEvent.3 \
	XTestFakeRelativeMotionEvent.3 \
	XTestGrabControl.3 \
	XTestQueryExtension.3 \
	XTestSetGContextOfGC.3 \
	XTestSetVisualIDOfVisual.3

post-patch:
	@${REINPLACE_CMD} '/^SUBDIRS/,/^$$/ \
		s/specs//' ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
