# Ports collection makefile for:  pear-Horde_Crypt
# Date created:			  7 July 2011
# Whom:				  Martin Matuska <mm@FreeBSD.org>
#
# $FreeBSD: ports/security/pear-Horde_Crypt/Makefile,v 1.11 2013/01/10 10:41:48 svnexp Exp $
#

PORTNAME=	Horde_Crypt
PORTVERSION=	2.1.1
CATEGORIES=	security www pear
PKGNAMEPREFIX=	pear-

MAINTAINER=	horde@FreeBSD.org
COMMENT=	Horde Cryptography API

OPTIONS_DEFINE=	BCMATH
BCMATH_DESC=	Depend on bcmath PHP extension

USE_HORDE_RUN=	Horde_Exception \
		Horde_Mime \
		Horde_Stream_Filter \
		Horde_Translation \
		Horde_Util
USE_PHP=	hash openssl

.include <bsd.port.pre.mk>

.if ${PORT_OPTIONS:MBCMATH}
USE_PHP+=	bcmath
.endif

.include "${PORTSDIR}/devel/pear-channel-horde/bsd.horde.mk"
.include <bsd.port.post.mk>
