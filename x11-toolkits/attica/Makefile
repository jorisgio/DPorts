# Created by: Dima Panov <fluffy@FreeBSD.org>
# $FreeBSD: ports/x11-toolkits/attica/Makefile,v 1.11 2013/02/04 01:04:54 svnexp Exp $

PORTNAME=	attica
PORTVERSION=	0.4.1
PORTEPOCH=	2
CATEGORIES=	x11-toolkits
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${PORTNAME}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Open Collaboration Services API library

USE_QT4=	network qtestlib_build xml \
		moc_build qmake_build rcc_build uic_build
USE_BZIP2=	yes
USE_LDCONFIG=	yes
USE_CMAKE=	yes
CMAKE_ARGS=	-DATTICA_ENABLE_TESTS:BOOL=OFF
MAKE_JOBS_SAFE=	yes

post-patch:
	${REINPLACE_CMD} \
		-e 's,$${LIB_DESTINATION}/pkgconfig,libdata/pkgconfig,' \
		-e 's,.$${CMAKE_LIBATTICA_VERSION_MINOR},,' \
		${WRKSRC}/lib/CMakeLists.txt

.include <bsd.port.mk>
