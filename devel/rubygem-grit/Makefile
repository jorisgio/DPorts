# Ports collection makefile for:	rubygem-grit
# Date created:				2008-11-05
# Whom:					Daniel Roethlisberger <daniel@roe.ch>
#
# $FreeBSD: ports/devel/rubygem-grit/Makefile,v 1.15 2012/11/17 05:56:59 svnexp Exp $

PORTNAME=	grit
PORTVERSION=	2.5.0
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	An object-oriented ruby library to access git repositories

RUN_DEPENDS=	rubygem-diff-lcs>=1.1:${PORTSDIR}/textproc/rubygem-diff-lcs \
		rubygem-mime-types>=1.15:${PORTSDIR}/misc/rubygem-mime-types \
		rubygem-posix-spawn>=0.3.6:${PORTSDIR}/devel/rubygem-posix-spawn

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
