# New ports collection makefile for:	openid
# Date created:				Dec 19, 2006
# Whom:					Cheng-Lung Sung <clsung@FreeBSD.org>
#
# $FreeBSD: ports/net/rubygem-openid/Makefile,v 1.14 2012/11/17 06:00:19 svnexp Exp $
#

PORTNAME=	openid
PORTVERSION=	2.2.0
CATEGORIES=	net rubygems
MASTER_SITES=	RG
DISTNAME=	ruby-${PORTNAME}-${PORTVERSION}

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	An OpenID library written in pure Ruby

RUN_DEPENDS=	rubygem-yadis>=0.3.4:${PORTSDIR}/net/rubygem-yadis

GEM_NAME=	${DISTNAME}

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
