# New ports collection makefile for:	unfs3
# Date created:				Mon Feb 16
# Whom:					Clement Laforet <clement@FreeBSD.org>
#
# $FreeBSD: ports/net/unfs3/Makefile,v 1.26 2012/11/17 06:00:23 svnexp Exp $
#

PORTNAME=	unfs3
PORTVERSION=	0.9.22
PORTREVISION=	1
CATEGORIES=	net
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A user-space implementation of the NFSv3 server specification

USE_AUTOTOOLS=	autoconf
USE_BISON=	build

MAN7=		tags.7
MAN8=		unfsd.8
PLIST_FILES=	sbin/unfsd

MAKE_JOBS_UNSAFE=	yes

.if defined(WITH_CLUSTER_EXT)
CONFIGURE_ARGS+=	--enable-cluster
.endif

.include <bsd.port.mk>
