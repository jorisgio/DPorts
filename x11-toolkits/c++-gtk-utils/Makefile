# Created by: Pawel Pekala <pawel@FreeBSD.org>
# $FreeBSD: ports/x11-toolkits/c++-gtk-utils/Makefile,v 1.14 2013/01/02 19:42:11 svnexp Exp $

PORTNAME=	c++-gtk-utils
PORTVERSION=	2.0.14
CATEGORIES=	x11-toolkits
MASTER_SITES=	SF/cxx-gtk-utils/cxx-gtk-utils/${PORTVERSION}/
DISTNAME=	c%2B%2B-gtk-utils-${PORTVERSION}

MAINTAINER=	pawel@FreeBSD.org
COMMENT=	Lightweight library for programming GTK+ programs

LICENSE=	LGPL21

LIB_DEPENDS=	dbus-glib-1:${PORTSDIR}/devel/dbus-glib \
		pthread-stubs:${PORTSDIR}/devel/libpthread-stubs \
		pcre:${PORTSDIR}/devel/pcre \
		cairo:${PORTSDIR}/graphics/cairo \
		png15:${PORTSDIR}/graphics/png \
		freetype:${PORTSDIR}/print/freetype2 \
		expat:${PORTSDIR}/textproc/expat2 \
		fontconfig:${PORTSDIR}/x11-fonts/fontconfig \
		xcb:${PORTSDIR}/x11/libxcb

GNU_CONFIGURE=	yes
USE_GETTEXT=	yes
USE_ICONV=	yes
USE_GCC=	4.4+
USE_PKGCONFIG=	build
USE_GNOME=	gdkpixbuf2 gtk20 gnomehack
USE_XORG=	pixman x11 xau xcomposite xcursor xdamage xdmcp xext xfixes \
		xi xinerama xrandr xrender
USE_LDCONFIG=	yes

CONFIGURE_SCRIPT=	configure-gtk2
CONFIGURE_ARGS+=	--docdir=${DOCSDIR}

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

OPTIONS_DEFINE=	DEBUG

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDEBUG}
CONFIGURE_ARGS+=--enable-debug
.endif

.include <bsd.port.mk>
