# New ports collection makefile for:   libXrandr
# Date Created:			9 Nov, 2003
# Whom:				Eric Anholt <anholt@FreeBSD.org>
#
# $FreeBSD: ports/x11/libXrandr/Makefile,v 1.20 2012/11/17 06:03:17 svnexp Exp $
#

PORTNAME=	libXrandr
PORTVERSION=	1.3.2
CATEGORIES=	x11

MAINTAINER=	x11@FreeBSD.org
COMMENT=	X Resize and Rotate extension library

LICENSE=	MIT

XORG_CAT=	lib
USE_XORG=	x11 randrproto:both xext xextproto xrender renderproto xproto:both

MAN3=		Xrandr.3 \
		XRRConfigCurrentConfiguration.3 \
		XRRConfigCurrentRate.3 \
		XRRConfigRates.3 \
		XRRConfigRotations.3 \
		XRRConfigSizes.3 \
		XRRConfigTimes.3 \
		XRRFreeScreenConfigInfo.3 \
		XRRGetScreenInfo.3 \
		XRRQueryExtension.3 \
		XRRQueryVersion.3 \
		XRRRootToScreen.3 \
		XRRSelectInput.3 \
		XRRSetScreenConfig.3 \
		XRRSetScreenConfigAndRate.3

.include <bsd.port.mk>
