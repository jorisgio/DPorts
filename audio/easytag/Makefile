# Created by:	Adam Weinberger <adamw@FreeBSD.org>
# $FreeBSD: ports/audio/easytag/Makefile,v 1.60 2012/11/17 05:54:30 svnexp Exp $

PORTNAME=	easytag
PORTVERSION=	2.1.7
PORTREVISION=	3
CATEGORIES=	audio
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}%20%28gtk%202%29/${PORTVERSION:C/\.[0-9]+$//}

MAINTAINER=	novel@FreeBSD.org
COMMENT=	GTK2 Tag editor for MP3 and OGG files

LIB_DEPENDS=	id3:${PORTSDIR}/audio/id3lib \
		id3tag:${PORTSDIR}/audio/libid3tag \
		vorbis:${PORTSDIR}/audio/libvorbis \
		FLAC:${PORTSDIR}/audio/flac \
		mp4v2:${PORTSDIR}/multimedia/mp4v2

MAN1=		easytag.1
CONFLICTS=	easytag-devel-[0-9]*

USE_BZIP2=	yes
USE_GETTEXT=	yes
USE_GNOME=	gnomehack gnomeprefix gtk20 desktopfileutils
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include -DHAVE_GTK
LDFLAGS+=	-L${LOCALBASE}/lib

.if defined(WITH_WAVPACK)
LIB_DEPENDS+=		wavpack:${PORTSDIR}/audio/wavpack
CONFIGURE_ARGS+=	--enable-wavpack
.else
CONFIGURE_ARGS+=	--disable-wavpack
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|<mp4\.h>|<mp4v2/mp4v2.h>|g' \
		${WRKSRC}/src/mp4_header.c \
		${WRKSRC}/src/mp4_tag.c

.include <bsd.port.mk>
