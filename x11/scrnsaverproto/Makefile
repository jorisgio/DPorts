# New ports collection makefile for:	scrnsaverproto
# Date Created:				21 Feb 2006
# Whom:					Florent Thoumie <flz@FreeBSD.org>
#
# $FreeBSD: ports/x11/scrnsaverproto/Makefile,v 1.4 2012/11/17 06:03:19 svnexp Exp $
#

PORTNAME=	scrnsaverproto
PORTVERSION=	1.2.1
CATEGORIES=	x11

MAINTAINER=	x11@FreeBSD.org
COMMENT=	ScrnSaver extension headers

XORG_CAT=	proto

CONFIGURE_ARGS+=--disable-specs --without-xmlto

post-patch:
	@${REINPLACE_CMD} '/^SUBDIRS/,/^$$/ \
		s/specs//' ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
