# New ports collection makefile for: seejpeg-1.10.tgz
# Date created:		2000 Oct 19
#
# Whom:			Donn Miller <dmmiller@cvzoom.net>
# $FreeBSD: ports/graphics/seejpeg/Makefile,v 1.14 2012/11/17 05:58:23 svnexp Exp $
#

PORTNAME=	seejpeg
PORTVERSION=	1.10
PORTREVISION=	4
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/graphics/viewers/svga
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A console graphics viewer using the svga console graphics library

LIB_DEPENDS=	vga.1:${PORTSDIR}/graphics/svgalib \
		jpeg.11:${PORTSDIR}/graphics/jpeg

ALL_TARGET=	seejpeg

MAN1=		seejpeg.1
MANCOMPRESSED=	yes
PLIST_FILES=	bin/seejpeg
USE_GMAKE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

post-extract:
	${CHMOD} 0644 ${WRKSRC}/Makefile

post-patch:
	${MV}	${WRKSRC}/Makefile ${WRKSRC}/Makefile.prev
	${SED}	"s|-O3|${CFLAGS}|g" ${WRKSRC}/Makefile.prev >  ${WRKSRC}/Makefile

.include <bsd.port.mk>
