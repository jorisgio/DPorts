# New ports collection makefile for:	meanwhile
# Date created:		24 June 2004
# Whom:		 	Joe Marcus Clarke <marcus@FreeBSD.org>
#
# $FreeBSD: ports/net-im/meanwhile/Makefile,v 1.32 2012/11/17 06:00:28 svnexp Exp $
#

PORTNAME=	meanwhile
PORTVERSION=	1.0.2
PORTREVISION=	2
CATEGORIES=	net-im
MASTER_SITES=	SF

MAINTAINER=	marcus@FreeBSD.org
COMMENT=	Open Source implementation of the Lotus Sametime protocol

USE_AUTOTOOLS=	libtool
USE_GMAKE=	yes
USE_GNOME=	gnomehack glib20
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-doxygen=no \
		--with-gmp-prefix=${LOCALBASE}
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}-doc-${PORTVERSION}

.include <bsd.port.mk>
