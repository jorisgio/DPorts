# New ports collection makefile for:   pfscalibration
# Date created:        Fri Jun  1 15:44:40 UTC 2007
# Whom:                argv[0] (Iouri V. Ivliev)
#
# $FreeBSD: ports/graphics/pfscalibration/Makefile,v 1.9 2012/11/17 05:58:18 svnexp Exp $

PORTNAME=	pfscalibration
PORTVERSION=	1.3
PORTREVISION=	4
CATEGORIES=	graphics
MASTER_SITES=	SF/pfstools/${PORTNAME}/${PORTVERSION}

MAINTAINER=	ii@any.com.ru
COMMENT=	Photometric calibration of cameras and recovery HDR images from the set of LDR exposures

PFS_CPPFLAGS=	-I${LOCALBASE}/include
PFS_LDFLAGS=	-L${LOCALBASE}/lib

GNU_CONFIGURE=	yes
CPPFLAGS+=	${PFS_CPPFLAGS}
LDFLAGS+=	${PFS_LDFLAGS}
USE_GMAKE=	yes
USE_PERL5=	yes

LIB_DEPENDS=	pfs-1.2:${PORTSDIR}/graphics/pfstools

MAN1=		jpeg2hdrgen.1 \
		dcraw2hdrgen.1 \
		pfsinhdrgen.1 \
		pfshdrcalibrate.1

.include <bsd.port.pre.mk>

post-patch:
	@${REINPLACE_CMD} -e "s,#!/bin/bash,#!/bin/sh," \
		${WRKSRC}/src/dcraw2hdrgen \
		${WRKSRC}/src/jpeg2hdrgen

.include <bsd.port.post.mk>
