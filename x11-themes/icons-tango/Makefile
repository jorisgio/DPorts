# New ports collection makefile for:	icons-tango
# Date created:		2005-11-05
# Whom:			Phillip Neumann <pneumann@gmail.com>
#
# $FreeBSD: ports/x11-themes/icons-tango/Makefile,v 1.22 2012/11/17 06:03:32 svnexp Exp $
#

PORTNAME=	icons-tango
PORTVERSION=	0.8.90
PORTREVISION=	2
CATEGORIES=	x11-themes
MASTER_SITES=	${MASTER_SITE_GENTOO}
MASTER_SITE_SUBDIR=	distfiles
DISTNAME=	tango-icon-theme-${PORTVERSION}

MAINTAINER=	yuri.pankov@gmail.com
COMMENT=	A basic set of icons for the most common usage

BUILD_DEPENDS=	${LOCALBASE}/libexec/icon-name-mapping:${PORTSDIR}/x11-themes/icon-naming-utils \
		Magick-config:${PORTSDIR}/graphics/ImageMagick

GNU_CONFIGURE=	yes
USE_GZIP=	yes
USE_GMAKE=	yes
USE_GNOME=	intlhack gnomehack
INSTALLS_ICONS=	yes

.include <bsd.port.mk>
