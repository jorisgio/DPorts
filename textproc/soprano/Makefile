# Created by: arved
# $FreeBSD: ports/textproc/soprano/Makefile,v 1.26 2013/02/04 01:04:44 svnexp Exp $

PORTNAME=	soprano
PORTVERSION=	2.9.0
CATEGORIES=	textproc
MASTER_SITES=	SF/${PORTNAME}/Soprano/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Qt/C++ RDF framework

LIB_DEPENDS=	raptor2:${PORTSDIR}/textproc/raptor2 \
		rdf:${PORTSDIR}/textproc/redland \
		iodbc:${PORTSDIR}/databases/libiodbc

USE_QT4=	corelib dbus qtestlib network \
		qmake_build moc_build uic_build rcc_build
USE_PKGCONFIG=	both
USE_BZIP2=	yes
USE_CMAKE=	yes
CMAKE_ARGS+=	-DSOPRANO_DISABLE_CLUCENE_INDEX=yes \
		-DSOPRANO_DISABLE_SESAME2_BACKEND=yes
MAKE_JOBS_SAFE=	yes
USE_LDCONFIG=	yes

post-patch:
	@${REINPLACE_CMD} -e 's,$${LIB_SUFFIX}/pkgconfig,data/pkgconfig,' \
		${WRKSRC}/CMakeLists.txt
	@${REINPLACE_CMD} -e 's,soprano/cmake,cmake/Modules,' \
		${WRKSRC}/cmake/modules/CMakeLists.txt

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
