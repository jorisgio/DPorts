# New ports collection makefile for:	gTimelapse
# Date created:				29 Aug 2011
# Whom:					Alexey Dokuchaev <danfe@FreeBSD.org>
#
# $FreeBSD: ports/graphics/gtimelapse/Makefile,v 1.4 2012/11/17 05:58:09 svnexp Exp $
#

PORTNAME=	gtimelapse
DISTVERSION=	0.1
PORTREVISION=	1
CATEGORIES=	graphics
MASTER_SITES=	SF/${PORTNAME}/Relase	# yes, this is not a typo (here)

MAINTAINER=	ports@FreeBSD.org
COMMENT=	An application for capturing images to generate timelapse videos

LICENSE=	GPLv2

LIB_DEPENDS=	gphoto2.2:${PORTSDIR}/graphics/libgphoto2

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-wx-config=${WX_CONFIG}
USE_WX=		2.8+
WRKSRC=		${WRKDIR}/${PORTNAME}

PLIST_FILES=	bin/${PORTNAME}

.include <bsd.port.mk>
