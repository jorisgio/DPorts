# Ports collection makefile for:	p5-Catalyst-Plugin-Cache-FastMmap
# Date created:				Dec 19, 2005
# Whom:					Lars Balker Rasmussen <lbr@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Catalyst-Plugin-Cache-FastMmap/Makefile,v 1.14 2012/11/17 06:02:47 svnexp Exp $
#

PORTNAME=	Catalyst-Plugin-Cache-FastMmap
PORTVERSION=	0.9
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Mmap cache for Catalyst

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Cache-FastMmap>=0:${PORTSDIR}/devel/p5-Cache-FastMmap \
		p5-Catalyst-Runtime>=5.7000:${PORTSDIR}/www/p5-Catalyst-Runtime \
		p5-Class-Data-Inheritable>0:${PORTSDIR}/devel/p5-Class-Data-Inheritable
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Catalyst::Plugin::Cache::FastMmap.3

.include <bsd.port.mk>
