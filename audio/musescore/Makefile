# New ports collection makefile for:	musescore
# Date created:		28 Jul 2011
# Whom:			Dmitry Marakasov <amdmi3@FreeBSD.org>
#
# $FreeBSD: ports/audio/musescore/Makefile,v 1.7 2012/11/17 05:54:39 svnexp Exp $
#

PORTNAME=	musescore
PORTVERSION=	1.2
CATEGORIES=	audio
MASTER_SITES=	SF/mscore/mscore/MuseScore-${PORTVERSION}
DISTNAME=	mscore-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Free music composition & notation software

LICENSE=	GPLv2

BUILD_DEPENDS=	qtscriptgenerator>0:${PORTSDIR}/devel/qtscriptgenerator
LIB_DEPENDS=	sndfile:${PORTSDIR}/audio/libsndfile
RUN_DEPENDS=	qtscriptgenerator>0:${PORTSDIR}/devel/qtscriptgenerator

OPTIONS_DEFINE=	JACK PORTAUDIO
OPTIONS_DEFAULT=PORTAUDIO

USE_LDCONFIG=	yes
USE_BZIP2=	yes
USE_QT4=	corelib designer gui network script scripttools svg webkit xml \
		linguist_build moc_build qmake_build rcc_build uic_build
USE_CMAKE=	yes
CMAKE_OUTSOURCE=	yes
CMAKE_SOURCE_PATH=	${WRKSRC}/mscore
CMAKE_ARGS=	-DBUILD_ALSA:BOOL=OFF
ALL_TARGET=	lrelease all
MAKE_JOBS_UNSAFE=	yes

DATADIR=	${PREFIX}/share/mscore-${PORTVERSION}

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MJACK}
LIB_DEPENDS+=	jack:${PORTSDIR}/audio/jack
CMAKE_ARGS+=	-DBUILD_JACK:BOOL=ON
.else
CMAKE_ARGS+=	-DBUILD_JACK:BOOL=OFF
.endif

.if ${PORT_OPTIONS:MPORTAUDIO}
BUILD_DEPENDS+=	portaudio>=19:${PORTSDIR}/audio/portaudio2
RUN_DEPENDS+=	portaudio>=19:${PORTSDIR}/audio/portaudio2
CMAKE_ARGS+=	-DBUILD_PORTAUDIO:BOOL=ON
.else
CMAKE_ARGS+=	-DBUILD_PORTAUDIO:BOOL=OFF
.endif

post-patch:
	@${FIND} ${WRKSRC} -name "CMakeLists.txt" -print0 | ${XARGS} -0 \
		${REINPLACE_CMD} -e \
		's|%%LOCALBASE%%|${LOCALBASE}|g ; \
		 s|-g -Wall|-Wall|g'
# add newline
.for file in mscore.cpp updatechecker.h webpage.cpp
	@${ECHO_CMD} >> ${WRKSRC}/mscore/mscore/${file}
.endfor

.include <bsd.port.mk>
