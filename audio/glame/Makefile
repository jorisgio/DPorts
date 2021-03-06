# New ports collection makefile for:	glame
# Date created:				26 September 2000
# Whom:					Maxim Sobolev <sobomax@FreeBSD.org>
#
# $FreeBSD: ports/audio/glame/Makefile,v 1.56 2012/11/17 05:54:32 svnexp Exp $
#

PORTNAME=	glame
PORTVERSION=	2.0.1
PORTREVISION=	22
CATEGORIES=	audio gnome
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A powerful, fast, stable, and easily extensible sound editor for GNOME

BUILD_DEPENDS=	${LOCALBASE}/include/ladspa.h:${PORTSDIR}/audio/ladspa
LIB_DEPENDS=	mp3lame.0:${PORTSDIR}/audio/lame \
		mad.2:${PORTSDIR}/audio/libmad \
		vorbis.4:${PORTSDIR}/audio/libvorbis \
		guile.21:${PORTSDIR}/lang/guile

USE_XORG=	xbitmaps x11
USE_GNOME=	gnomehack gnomeprefix libgnomeui
USE_GETTEXT=	yes
GNU_CONFIGURE=	yes
USE_AUTOTOOLS=	libltdl libtool
USE_GMAKE=	yes
CONFIGURE_ENV=	MAKEINFO="makeinfo --no-split"

INFO=		glame glame-dev

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib -lltdl

post-extract:
	@cd ${WRKSRC}/doc && ${RM} -f *.info*

post-patch:
	@${REINPLACE_CMD} -e 's| libltdl||g ; \
		 s|,$$LIBLTDL,|,,|g ; \
		 s|,$$LTDLINCL,|,,|g ; \
		 s|,$$LTLIBOBJS,|,,|g' ${WRKSRC}/configure

.include <bsd.port.mk>
