# New ports collection makefile for:   pangomm
# Date created:        23 July 2008
# Whom:                Joe Marcus Clarke <marcus@FreeBSD.org>
#
# $FreeBSD: ports/x11-toolkits/pangomm/Makefile,v 1.14 2012/11/17 06:03:38 svnexp Exp $
#   $MCom: ports/x11-toolkits/pangomm/Makefile,v 1.21 2011/03/30 22:18:12 kwm Exp $
#

PORTNAME=	pangomm
PORTVERSION=	2.28.2
PORTREVISION?=	1
CATEGORIES=	x11-toolkits
MASTER_SITES=	GNOME
DIST_SUBDIR=	gnome2

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	C++ wrapper for Pango

USE_BZIP2=	yes

.if !defined(REFERENCE_PORT)

LIB_DEPENDS=	glibmm-2.4.1:${PORTSDIR}/devel/glibmm \
		cairomm-1.0.1:${PORTSDIR}/graphics/cairomm
BUILD_DEPENDS=	gm4:${PORTSDIR}/devel/m4

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
USE_GNOME=	gnomehack pango
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS=	--disable-documentation \
		--enable-static=yes

PLIST_SUB=	VERSION="2.4" API_VERSION="1.4"

post-patch:
.for d in tests
	@${REINPLACE_CMD} -e '/^SUBDIRS =/s/${d}//' \
		${WRKSRC}/Makefile.in
.endfor

.include <bsd.port.mk>

.endif
