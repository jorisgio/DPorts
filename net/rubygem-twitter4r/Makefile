# ex:ts=8
# Ports collection makefile for:	rubygem-twitter4r
# Date created:			Jul 9, 2007
# Whom:				Cheng-Lung Sung <clsung@FreeBSD.org>
#
# $FreeBSD: ports/net/rubygem-twitter4r/Makefile,v 1.18 2012/11/17 06:00:19 svnexp Exp $
#

PORTNAME=	twitter4r
PORTVERSION=	0.7.0
CATEGORIES=	net rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Twitter client API in pure Ruby

RUN_DEPENDS=	rubygem-oauth>=0.4.1:${PORTSDIR}/net/rubygem-oauth \
		rubygem-json>=1.1.1:${PORTSDIR}/devel/rubygem-json

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/t4r-oauth-access bin/t4rsh

.include <bsd.port.mk>
