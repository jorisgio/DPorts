# New ports collection makefile for:		libgeotiff
# Date created:					9 December 2005
# Whom:						Sam Lawrance
#
# $FreeBSD: ports/graphics/libgeotiff/Makefile,v 1.18 2012/11/17 05:58:12 svnexp Exp $
#

PORTNAME=	libgeotiff
PORTVERSION=	1.4.0
PORTREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	http://download.osgeo.org/geotiff/libgeotiff/ \
		ftp://ftp.remotesensing.org/geotiff/libgeotiff/ \
		LOCAL/sunpoet

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Library for reading and writing GeoTIFF information tags

LIB_DEPENDS=	jbig:${PORTSDIR}/graphics/jbigkit \
		jpeg:${PORTSDIR}/graphics/jpeg \
		proj:${PORTSDIR}/graphics/proj \
		tiff:${PORTSDIR}/graphics/tiff

CPPFLAGS+=	-fPIC
CONFIGURE_ARGS=	--datadir=${DATADIR} \
		--disable-doxygen-doc \
		--disable-doxygen-dot \
		--disable-doxygen-html \
		--disable-doxygen-man \
		--with-jpeg=${LOCALBASE} \
		--with-proj=${LOCALBASE} \
		--with-libtiff=${LOCALBASE} \
		--with-zlib=/usr
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes

MAN1=		listgeo.1

.include <bsd.port.mk>
