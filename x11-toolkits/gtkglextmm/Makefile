# New ports collection makefile for:	gtkglextmm
# Date created:				22 March 2003
# Whom:					Kimura Fuyuki <fuyuki@hadaly.org>
#
# $FreeBSD: ports/x11-toolkits/gtkglextmm/Makefile,v 1.36 2012/11/17 06:03:35 svnexp Exp $
#

PORTNAME=	gtkglextmm
PORTVERSION=	1.2.0
PORTREVISION=	7
CATEGORIES=	x11-toolkits
MASTER_SITES=	SF/gtkglext/${PORTNAME}/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	C++ wrapper for GtkGLExt

LIB_DEPENDS=	gtkglext-x11-1.0.0:${PORTSDIR}/x11-toolkits/gtkglext \
		gtkmm-2.4.1:${PORTSDIR}/x11-toolkits/gtkmm24

USE_BZIP2=	yes
USE_GETTEXT=	yes
USE_GNOME=	gnomehack gnomeprefix gtk20
USE_GMAKE=	yes
USE_AUTOTOOLS=	libtool
USE_PKGCONFIG=	build
USE_LDCONFIG=	yes

post-patch:
	@${REINPLACE_CMD} -e 's|-DGDK_DISABLE_DEPRECATED||g' \
		-e 's|-DGDK_PIXBUF_DISABLE_DEPRECATED||g' \
		-e 's|-DGTK_DISABLE_DEPRECATED||g' \
		${WRKSRC}/gdkglext/gdkmm/gl/Makefile.in \
		${WRKSRC}/gtkglext/gtkmm/gl/Makefile.in

.include <bsd.port.mk>
