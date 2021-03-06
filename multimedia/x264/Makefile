# New ports collection makefile for:	x264
# Date created:		2005-01-11
# Whom:			Michael Johnson <ahze@FreeBSD.org>
#
# $FreeBSD: ports/multimedia/x264/Makefile,v 1.94 2012/11/17 05:59:55 svnexp Exp $

PORTNAME=	x264
PORTVERSION=	0.${X264_BUILD}.${X264_REV}
CATEGORIES=	multimedia
MASTER_SITES=	ftp://ftp.videolan.org/pub/videolan/x264/snapshots/ \
		http://samples.mplayerhq.hu/yuv4mpeg2/:pgo
MASTER_SITE_SUBDIR=	mm/x264
DISTNAME=	${PORTNAME}-snapshot-${X264_SNAPSHOT}-2245-stable
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
DIST_SUBDIR=	x264
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

MAINTAINER=	mm@FreeBSD.org
COMMENT?=	Library and tool for encoding H.264/AVC video streams

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

BUILD_DEPENDS=	yasm>=0.6.0:${PORTSDIR}/devel/yasm \
		${LOCALBASE}/bin/bash:${PORTSDIR}/shells/bash

X264_BUILD=	125
X264_REV=	2201
X264_COMMIT=	37be55213a39db40cf159ada319bd482a1b00680
X264_GITVER=	${X264_COMMIT:C/^(.......).*$/\1/g}
X264_SNAPSHOT=	20120721

USE_BZIP2=	yes
USE_GCC=	any
WRKSRC=		${WRKDIR}/${DISTNAME}
USE_GMAKE=	yes
USE_LDCONFIG=	yes
HAS_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

OPTIONS_DEFINE=	ASM DEBUG PGO GPAC X11_OUTPUT
OPTIONS_DEFAULT=	ASM PGO GPAC
ASM_DESC=		Assembly optimizations
GPAC_DESC=		Enable MPEG-4 Output
X11_OUTPUT_DESC=	Enable X11 Output

CONFIGURE_ARGS+=	--extra-cflags="${CPPFLAGS} ${CFLAGS} -fPIC -I${LOCALBASE}/include" \
			--extra-ldflags="${LDFLAGS} -L${LOCALBASE}/lib" \
			--enable-static --enable-shared

PLIST_SUB+=	X264_BUILD=${X264_BUILD}

.include <bsd.port.options.mk>
.include <bsd.port.pre.mk>

.if ${PORT_OPTIONS:MASM} == ""
CONFIGURE_ARGS+=		--disable-asm
.endif

CONFIGURE_ENV+=	ARCH= \
		TARGET_ARCH=
MAKE_ENV+=	ARCH= \
		TARGET_ARCH=

.if ${PORT_OPTIONS:MDEBUG}
CONFIGURE_ARGS+=	--enable-debug
.endif

.if ${PORT_OPTIONS:MPGO} && ${SLAVE_PORT:tl}!="yes"
# y4m sample video
Y4M_VIDEO=example.y4m
Y4M_VIDEO_DISTFILE=example.y4m.bz2

DISTFILES+=	${Y4M_VIDEO_DISTFILE}:pgo
ALL_TARGET=	fprofiled
MAKE_ENV+=	VIDS="${WRKDIR}/${Y4M_VIDEO}"

RESTRICTED=	${Y4M_VIDEO_DISTFILE} file may not be mirrored
RESTRICTED_FILES=	${Y4M_VIDEO_DISTFILE}
.endif

.if ${PORT_OPTIONS:MGPAC}
BUILD_DEPENDS+=		gpac-libgpac>=0.4.5,1:${PORTSDIR}/multimedia/gpac-libgpac
LIB_DEPENDS+=		gpac.1:${PORTSDIR}/multimedia/gpac-libgpac
.else
CONFIGURE_ARGS+=	--disable-gpac
.endif

.if ${PORT_OPTIONS:MX11_OUTPUT}
CONFIGURE_ARGS+=	--enable-visualize
USE_XORG=	x11
.endif

post-extract:
.if ${PORT_OPTIONS:MPGO} && ${SLAVE_PORT:tl}!="yes"
	@( cd ${WRKDIR} && ${BZIP2_CMD} -dc ${DISTDIR}/${DIST_SUBDIR}/${Y4M_VIDEO_DISTFILE} > ${Y4M_VIDEO} )
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/local|${PREFIX}|; \
		s|-lpthread|${PTHREAD_LIBS}|g; \
		s|/bin/bash|${LOCALBASE}/bin/bash|; \
		s|gpac_static|gpac|g' \
		${WRKSRC}/configure
	@${REINPLACE_CMD} -e 's|bash|sh|' ${WRKSRC}/version.sh
	@${REINPLACE_CMD} -e 's|$$(libdir)/pkgconfig|${PREFIX}/libdata/pkgconfig|; \
		s|$${libdir}/pkgconfig|${PREFIX}/libdata/pkgconfig|' \
		${WRKSRC}/Makefile

.if ${SLAVE_PORT:tl}=="no"
.if 0 # BROKEN
post-build:
	cd ${WRKSRC}/tools && ${MAKE} avc2avi

pre-install:
	@${REINPLACE_CMD} -e 's|/usr/local|${PREFIX}|' \
		${WRKSRC}/x264.pc

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tools/avc2avi ${PREFIX}/bin
.endif # BROKEN
.endif

.include <bsd.port.post.mk>
