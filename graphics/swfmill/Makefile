# New ports collection makefile for:	swfmill
# Date created:	   09 June 2006
# Whom:		   Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: ports/graphics/swfmill/Makefile,v 1.12 2012/11/17 05:58:23 svnexp Exp $
#

PORTNAME=	swfmill
PORTVERSION=	0.3.0
PORTREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	http://swfmill.org/releases/

MAINTAINER=	skv@FreeBSD.org
COMMENT=	xml2swf and swf2xml processor with import functionalities

LIB_DEPENDS=	png15:${PORTSDIR}/graphics/png \
		freetype.9:${PORTSDIR}/print/freetype2

USE_AUTOTOOLS=	libtool
USE_GNOME=	pkgconfig libxml2 libxslt

GNU_CONFIGURE=	YES
CONFIGURE_ENV+=	PKG_CONFIG=${LOCALBASE}/bin/pkg-config

USE_LDCONFIG=	YES

post-patch:
	@${REINPLACE_CMD} -e 's|libpng|libpng15|' ${WRKSRC}/configure

.include <bsd.port.mk>
