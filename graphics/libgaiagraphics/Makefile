# New ports collection makefile for:	libgaiagraphics
# Date created:		2012-06-14
# Whom:			lbartoletti <coder@tuxfamily.org>
#
# $FreeBSD: ports/graphics/libgaiagraphics/Makefile,v 1.2 2012/11/17 05:58:12 svnexp Exp $
#

PORTNAME=	libgaiagraphics
PORTVERSION=	0.4b
CATEGORIES=	graphics geography
MASTER_SITES=	http://www.gaia-gis.it/gaia-sins/

MAINTAINER=	coder@tuxfamily.org
COMMENT=	Library supporting common-utility raster handling methods

LIB_DEPENDS=	png15:${PORTSDIR}/graphics/png \
		tiff:${PORTSDIR}/graphics/tiff \
		geotiff:${PORTSDIR}/graphics/libgeotiff \
		jpeg:${PORTSDIR}/graphics/jpeg \
		cairo:${PORTSDIR}/graphics/cairo

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_ICONV=	yes

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -liconv
CONFIGURE_ARGS+=CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
USE_LDCONFIG=	yes

post-patch:
	@${REINPLACE_CMD} -e 's|(libdir)/pkgconfig|(prefix)/libdata/pkgconfig|g' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
