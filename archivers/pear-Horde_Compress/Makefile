# Ports collection makefile for:  pear-Horde_Compress
# Date created:			  6 July 2011
# Whom:				  Martin Matuska <mm@FreeBSD.org>
#
# $FreeBSD: ports/archivers/pear-Horde_Compress/Makefile,v 1.9 2012/12/12 15:19:45 svnexp Exp $

PORTNAME=	Horde_Compress
PORTVERSION=	2.0.1
CATEGORIES=	archivers www pear
PKGNAMEPREFIX=	pear-

MAINTAINER=	horde@FreeBSD.org
COMMENT=	Horde Compression API

OPTIONS_DEFAULT=	ZLIB
OPTIONS_DEFINE=		ZLIB
ZLIB_DESC=	Depend on PHP zlib extension

USE_HORDE_RUN=	Horde_Exception \
		Horde_Translation \
		Horde_Util \
		Horde_Stream_Filter

.include <bsd.port.pre.mk>

.if ${PORT_OPTIONS:MZLIB}
USE_PHP+=	zlib
.endif

.include "${PORTSDIR}/devel/pear-channel-horde/bsd.horde.mk"
.include <bsd.port.post.mk>