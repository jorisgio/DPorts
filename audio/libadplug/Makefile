# New ports collection makefile for:	libadplug
# Date created:				10 August 2004
# Whom:					Emanuel Haupt <ehaupt@critical.ch>
#
# $FreeBSD: ports/audio/libadplug/Makefile,v 1.28 2012/11/17 05:54:35 svnexp Exp $
#

PORTNAME=	libadplug
PORTVERSION=	2.2.1
CATEGORIES=	audio
MASTER_SITES=	SF/adplug/AdPlug%20core%20library/${PORTVERSION}
DISTNAME=	adplug-${PORTVERSION}

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	AdLib emulator library supporting many formats

LIB_DEPENDS=	binio.1:${PORTSDIR}/devel/libbinio

USE_AUTOTOOLS=	libtool
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
USE_PKGCONFIG=	build
USE_CSTD=	gnu89

MAKE_JOBS_SAFE=	yes

CPPFLAGS+=	-I${LOCALBASE}/include

LICENSE=	GPLv2
INFO=		libadplug
MAN1=		adplugdb.1

post-patch:
	@${REINPLACE_CMD} -E 's#<(binfile.h|binio.h|binstr.h)>#<libbinio/\1>#' \
		${WRKSRC}/adplugdb/adplugdb.cpp \
		${WRKSRC}/src/adplug.cpp \
		${WRKSRC}/src/fprovide.cpp \
		${WRKSRC}/src/database.cpp \
		${WRKSRC}/src/rix.cpp \
		${WRKSRC}/src/fprovide.h \
		${WRKSRC}/src/database.h \
		${WRKSRC}/src/fprovide.cpp \
		${WRKSRC}/src/database.cpp \
		${WRKSRC}/src/dmo.cpp
	@${REINPLACE_CMD} -e 's|^\(pkgconfigdir\ =.*\)|\1 $$(prefix)/libdata/pkgconfig|' \
		${WRKSRC}/Makefile.in \
		${WRKSRC}/Makefile.am

.include <bsd.port.mk>
