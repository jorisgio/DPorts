# New ports collection makefile for:	videoproto
# Date Created:				09 Aug 2005
# Whom:					Dejan Lesjak <lesi@FreeBSD.org>
#
# $FreeBSD: ports/x11/videoproto/Makefile,v 1.4 2012/11/17 06:03:20 svnexp Exp $
#

PORTNAME=	videoproto
PORTVERSION=	2.3.1
CATEGORIES=	x11

MAINTAINER=	x11@FreeBSD.org
COMMENT=	Video extension headers

XORG_CAT=	proto

post-patch:
	@${REINPLACE_CMD} '/^install-data-am:/,/^$$/ \
		s/install-dist_docDATA//' ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
