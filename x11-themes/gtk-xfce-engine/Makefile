# New ports collection makefile for:	gtk-xfce-engine
# Date Created:				10 October 2002
# Whom:				 	olgeni@FreeBSD.org
#
# $FreeBSD: ports/x11-themes/gtk-xfce-engine/Makefile,v 1.62 2012/11/17 06:03:31 svnexp Exp $
#

PORTNAME=	gtk-xfce-engine
PORTVERSION=	3.0.1
CATEGORIES=	x11-themes xfce
MASTER_SITES=	${MASTER_SITE_XFCE}
MASTER_SITE_SUBDIR=	src/xfce/${PORTNAME}/${PORTVERSION:R}
DIST_SUBDIR=	xfce4

MAINTAINER=	xfce@FreeBSD.org
COMMENT=	Xfce gtk theme engine

GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USE_GNOME=	glib20 gnomehack gtk20
USE_XFCE=	configenv	# to get MASTER_SITE_SUBDIR something has to be defined
USE_PKGCONFIG=	build

CONFIGURE_ARGS+=--disable-glibtest \
	--enable-gtk2 \
	--disable-gtk3

.include <bsd.port.mk>
