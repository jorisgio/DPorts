# New ports collection makefile for:	epeg
# Date created:		05/09/2005
# Whom:			vanilla
#
# $FreeBSD: ports/graphics/epeg/Makefile,v 1.22 2012/11/17 05:58:04 svnexp Exp $
#

PORTNAME=	epeg
PORTVERSION=	0.9.1.042
PORTREVISION=	2
PORTEPOCH=	2
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.springdaemons.com/pub/snapshots/e17/ \
		http://download.enlightenment.org/snapshots/2008-01-25/

MAINTAINER=	bf@FreeBSD.org
COMMENT=	An immensely fast JPEG thumbnailing library

LIB_DEPENDS=	jpeg:${PORTSDIR}/graphics/jpeg

GNU_CONFIGURE=	yes
USE_BZIP2=	yes
USE_GNOME=	gnomehack
USE_LDCONFIG=	yes
CONFIGURE_ENV=	LIBS="-L${LOCALBASE}/lib"
CPPFLAGS+=	-I${LOCALBASE}/include

.include <bsd.port.mk>
