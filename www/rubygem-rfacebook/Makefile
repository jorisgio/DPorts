# Ports collection makefile for:	rfacebook
# Date created:				16 April 2008
# Whom:					Steven Kreuzer
#
# $FreeBSD: ports/www/rubygem-rfacebook/Makefile,v 1.8 2012/11/17 06:03:05 svnexp Exp $
#

PORTNAME=	rfacebook
PORTVERSION=	0.9.8
PORTREVISION=	1
CATEGORIES=	www rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby interface to the Facebook API

RUN_DEPENDS=	rubygem-hpricot>=0.6.0:${PORTSDIR}/www/rubygem-hpricot \
		rubygem-mocha>=0.5.3:${PORTSDIR}/devel/rubygem-mocha

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
