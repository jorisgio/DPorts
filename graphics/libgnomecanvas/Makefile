# New ports collection makefile for:	gnomecanvas
# Date created:				18 May 2001
# Whom:					Maxim Sobolev <sobomax@FreeBSD.org>
#
# $FreeBSD: ports/graphics/libgnomecanvas/Makefile,v 1.70 2012/11/17 05:58:13 svnexp Exp $
#   $MCom: ports/graphics/libgnomecanvas/Makefile,v 1.79 2010/09/28 07:31:27 kwm Exp $
#

PORTNAME=	libgnomecanvas
PORTVERSION=	2.30.3
PORTREVISION?=	1
CATEGORIES=	graphics gnome
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	A graphics library for GNOME

USE_BZIP2=	yes

.if !defined(REFERENCE_PORT)

USE_GMAKE=	yes
USE_GETTEXT=	yes
USE_LDCONFIG=	yes
USE_AUTOTOOLS=	libtool
USE_GNOME=	gnomehack libglade2 libartlgpl2 ltverhack referencehack
CONFIGURE_ARGS=	--with-html-dir=${PREFIX}/share/doc \
		--enable-glade \
		--disable-gtk-doc
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>

.endif
