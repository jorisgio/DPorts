# New ports collection makefile for:	rubygem-main
# Date created:		07, Nov 2008
# Whom:			Wen Heping <wenheping@gmail.com>
#
# $FreeBSD: ports/devel/rubygem-main/Makefile,v 1.15 2012/11/17 05:57:00 svnexp Exp $
#

PORTNAME=	main
PORTVERSION=	5.0.1
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	A Class Factory and Dsl for Generating Command Line Programs

RUN_DEPENDS=	rubygem-fattr>=2.2.0:${PORTSDIR}/devel/rubygem-fattr \
		rubygem-arrayfields>=4.7.4:${PORTSDIR}/devel/rubygem-arrayfields \
		rubygem-chronic>=0.6.2:${PORTSDIR}/devel/rubygem-chronic \
		rubygem-map>=5.1.0:${PORTSDIR}/devel/rubygem-map

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
