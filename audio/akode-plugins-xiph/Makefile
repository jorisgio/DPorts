# New ports collection makefile for:	mpeglib_artsplug
# Date created:				July 09 2004
# Whom:					Michael Nottebrock <lofi@FreeBSD.org>
#
# $FreeBSD: ports/audio/akode-plugins-xiph/Makefile,v 1.33 2012/11/17 05:54:27 svnexp Exp $
#

PORTNAME=	akode-plugins-${PORTNAMESUFX}
PORTVERSION=	2.0.2
PORTREVISION=	4
PORTEPOCH=	1
CATEGORIES=	audio kde
MASTER_SITES=	http://www.kde-apps.org/CONTENT/content-files/ \
		${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	laszlof
DISTNAME=	30375-akode-${PORTVERSION}

MAINTAINER=	swhetzel@gmail.com
COMMENT=	FLAC/Speex/Vorbis decoder plugin for akode
LICENSE=	LGPL20
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	FLAC:${PORTSDIR}/audio/flac \
		ogg:${PORTSDIR}/audio/libogg \
		speex:${PORTSDIR}/audio/speex \
		vorbis:${PORTSDIR}/audio/libvorbis

CONFLICTS=	kdemultimedia-3.[1-3]*

PLUGIN=		xiph_decoder
PORTNAMESUFX=	${PLUGIN:S/_sink//:S/_decoder//:S/src_//}

USE_AUTOTOOLS=	libltdl
USE_AUTOTOOLS=	libtool
USE_BZIP2=	yes
USE_GCC=	any
USE_GMAKE=	yes
WRKSRC=		${WRKDIR}/akode-${PORTVERSION}
USE_LDCONFIG=	yes

PLIST_FILES=	lib/libakode_xiph_decoder.a \
		lib/libakode_xiph_decoder.la \
		lib/libakode_xiph_decoder.so

LDFLAGS+=	-L${WRKSRC}/akode/lib/.libs
CONFIGURE_ARGS+=--with-extra-libs=${LOCALBASE}/lib \
		--with-extra-includes=${LOCALBASE}/include

post-patch:
	@${SETENV} TZ=UTC \
	${TOUCH} -t 200607222217.01 ${WRKSRC}/akode/lib/akode_export.h.in

pre-configure:
	@${REINPLACE_CMD} -e 's@%%SUBDIRS%%@${PLUGIN}@g' ${WRKSRC}/akode/plugins/Makefile.in

do-build:
	cd ${WRKSRC}/akode && ${GMAKE}

do-install:
	cd ${WRKSRC}/akode/plugins/${PLUGIN} && ${GMAKE} install

.include <bsd.port.mk>
