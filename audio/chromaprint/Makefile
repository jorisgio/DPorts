# $FreeBSD: ports/audio/chromaprint/Makefile,v 1.2 2012/11/17 05:54:29 svnexp Exp $

PORTNAME=	chromaprint
PORTVERSION=	0.7
CATEGORIES=	audio
MASTER_SITES=	http://cloud.github.com/downloads/lalinsky/${PORTNAME}/

MAINTAINER=	jhale@FreeBSD.org
COMMENT=	AcoustID audio fingerprinting library

LICENSE=	LGPL21

LIB_DEPENDS=	avcodec:${PORTSDIR}/multimedia/ffmpeg

USE_CMAKE=	yes
USE_LDCONFIG=	yes
MAKE_JOBS_SAFE=	yes

CMAKE_ARGS=	-DBUILD_EXAMPLES:BOOL=ON \
		-DWITH_AVFFT:BOOL=ON

post-patch:
	${REINPLACE_CMD} -e '/pkgconfig/s|$${LIB_INSTALL_DIR}|libdata|' \
		 ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
