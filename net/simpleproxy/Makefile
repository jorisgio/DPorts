# New ports collection makefile for:	simpleproxy
# Date created:		06 May 2009
# Whom:			Sergey Kandaurov <pluknet@gmail.com>
#
# $FreeBSD: ports/net/simpleproxy/Makefile,v 1.3 2012/11/17 06:00:20 svnexp Exp $
#

PORTNAME=	simpleproxy
PORTVERSION=	3.4
CATEGORIES=	net
MASTER_SITES=	SF

MAINTAINER=	pluknet@gmail.com
COMMENT=	Simple TCP proxy

GNU_CONFIGURE=	yes

PLIST_FILES=	bin/${PORTNAME}

.if !defined(NO_INSTALL_MANPAGES)
MAN1=		simpleproxy.1
.endif

.include <bsd.port.mk>
