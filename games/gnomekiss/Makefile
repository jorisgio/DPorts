# New ports collection makefile for:	gnomekiss
# Date created:				4 Apr 2001
# Whom:					UMENO Takashi <umeno@rr.iij4u.or.jp>
#
# $FreeBSD: ports/games/gnomekiss/Makefile,v 1.27 2012/11/17 05:57:40 svnexp Exp $
#

PORTNAME=	gnomekiss
PORTVERSION=	2.0
PORTREVISION=	7
CATEGORIES=	games gnome
MASTER_SITES=	http://devel.tlrmx.org/kiss/source/

MAINTAINER=	umeno@rr.iij4u.or.jp
COMMENT=	GNOME version of Kisekae Set System

RUN_DEPENDS=	lha:${PORTSDIR}/archivers/lha

USE_GNOME=	gnomeprefix gnomehack libgnomeui
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
MAN1=		gnomekiss.1

.include <bsd.port.mk>
