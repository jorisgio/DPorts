# New ports collection makefile for:	libshout
# Date created:				06 Jun 2000
# Whom:					Zach Zurflu <zach@pabst.bendnet.com>
#
# $FreeBSD: ports/audio/libshout/Makefile,v 1.18 2012/11/17 05:54:36 svnexp Exp $
#

PORTNAME=	libshout
PORTVERSION=	1.0.7
CATEGORIES=	audio net
#MASTER_SITES=	http://downloads.xiph.org/releases/libshout/

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Connect and transmit data to an Icecast media streaming server

CONFLICTS=	libshout2-*

USE_AUTOTOOLS=	libtool
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
DOCSDIR=	${PREFIX}/share/doc/${PORTNAME}-${PORTVERSION}
EXAMPLESDIR=	${PREFIX}/share/examples/${PORTNAME}-${PORTVERSION}

post-patch:
	@${REINPLACE_CMD} -e 's|-O20||' ${WRKSRC}/configure

.include <bsd.port.mk>
