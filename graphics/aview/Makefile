# New ports collection Makefile for:	aview
# Date created:		Dec 18 1997
# Whom:			frankch@waru.life.nthu.edu.tw
#
# $FreeBSD: ports/graphics/aview/Makefile,v 1.22 2012/11/17 05:58:01 svnexp Exp $
#

PORTNAME=	aview
PORTVERSION=	1.3.0.r1
PORTREVISION=	5
CATEGORIES=	graphics
MASTER_SITES=	SF/aa-project/${PORTNAME}/1.3.0rc1
DISTNAME=	${PORTNAME}-${PORTVERSION:S/.r/rc/}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Graphics viewer for viewing netpbm format on console or X using aalib

RUN_DEPENDS=	anytopnm:${PORTSDIR}/graphics/netpbm \
		convert:${PORTSDIR}/graphics/ImageMagick
LIB_DEPENDS=	aa.1:${PORTSDIR}/graphics/aalib

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION:R}

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-x=no

MAN1=		asciiview.1 aview.1

post-patch:
	@${REINPLACE_CMD} -e 's|/bash|/sh|g' ${WRKSRC}/asciiview
	@${FIND} ${WRKSRC} -name '*.[ch]' | ${XARGS} ${REINPLACE_CMD} -e \
		's|<malloc.h>|<stdlib.h>|g'

.include <bsd.port.mk>
