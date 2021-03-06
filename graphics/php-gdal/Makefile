# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: ports/graphics/php-gdal/Makefile,v 1.3 2012/12/09 06:19:20 svnexp Exp $

PORTNAME=	gdal
PORTVERSION=	1.9.2
CATEGORIES=	graphics
MASTER_SITES=	http://download.osgeo.org/gdal/ \
		ftp://ftp.remotesensing.org/pub/gdal/ \
		LOCAL/sunpoet
PKGNAMEPREFIX=	php-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	PHP binding for GDAL

BUILD_DEPENDS=	${LOCALBASE}/bin/swig:${PORTSDIR}/devel/swig13
LIB_DEPENDS=	gdal:${PORTSDIR}/graphics/gdal

ALL_TARGET=	php_gdal.so php_gdalconst.so php_ogr.so php_osr.so
CFLAGS+=	-I${LOCALBASE}/include -fPIC
DEFAULT_PHP_VER=53
IGNORE_WITH_PHP=5
LIBTOOLFILES=	# empty
MAKEFILE=	GNUmakefile
PHP_MOD_NAME=	php_${PORTNAME}
USE_AUTOTOOLS=	libtool
USE_GMAKE=	yes
USE_PHP=	yes
USE_PHP_BUILD=	yes
WRKSRC=		${WRKDIR}/${DISTNAME}/swig/php

post-patch:
	@${REINPLACE_CMD} -e 's|^CC=.*$$|CC=${CC}|; s|^CXX=.*$$|CXX=${CXX}|; s|^CFLAGS=.*$$|CFLAGS=${CFLAGS}|' ${WRKSRC}/${MAKEFILE}

do-configure:
	@${DO_NADA}

# include/cpl_config.h will exist after build phase
pre-build:
	${SED} -e '/^GDAL_ROOT/d' ${DATADIR}/GDALmake.opt > ${WRKSRC}/../../GDALmake.opt
	${CP} ${LOCALBASE}/include/cpl_config.h ${WRKSRC}/../../port/

do-install:
	${MKDIR} ${PREFIX}/lib/php/${PHP_EXT_DIR}/ ${PREFIX}/include/php/ext/${PORTNAME}/
	${INSTALL_LIB} ${WRKSRC}/*.so ${PREFIX}/lib/php/${PHP_EXT_DIR}/
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include/php/ext/${PORTNAME}/

.include <bsd.port.mk>
