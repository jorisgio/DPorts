# New ports collection makefile for:	rubygem-unicorn
# Date created:		2011-11-16
# Whom:			Steve Wills <swills@FreeBSD.org>
#
# $FreeBSD: ports/www/rubygem-unicorn/Makefile,v 1.4 2012/11/17 06:03:05 svnexp Exp $
#

PORTNAME=	unicorn
PORTVERSION=	4.3.1
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Unicorn is an HTTP server for Rack applications

RUN_DEPENDS=	rubygem-rack>=0:${PORTSDIR}/www/rubygem-rack \
		rubygem-kgio>=2.6:${PORTSDIR}/devel/rubygem-kgio \
		rubygem-raindrops>=0.7:${PORTSDIR}/www/rubygem-raindrops

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/unicorn bin/unicorn_rails

.include <bsd.port.mk>
