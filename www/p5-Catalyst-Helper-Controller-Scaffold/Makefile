# New ports collection makefile for:	www/p5-Catalyst-Helper-Controller-Scaffold
# Date created:		2005-07-11
# Whom:			Lars Balker Rasmussen <lbr@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Catalyst-Helper-Controller-Scaffold/Makefile,v 1.12 2012/11/17 06:02:46 svnexp Exp $
#

PORTNAME=	Catalyst-Helper-Controller-Scaffold
PORTVERSION=	0.04
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Catalyst helper for Scaffolding

BUILD_DEPENDS=	p5-Catalyst-Runtime>=0:${PORTSDIR}/www/p5-Catalyst-Runtime \
		p5-Catalyst-Devel>=1.00:${PORTSDIR}/www/p5-Catalyst-Devel \
		p5-Catalyst-Plugin-FormValidator>=0:${PORTSDIR}/www/p5-Catalyst-Plugin-FormValidator \
		p5-Catalyst-View-TT>=0:${PORTSDIR}/www/p5-Catalyst-View-TT \
		p5-Class-DBI>=0:${PORTSDIR}/databases/p5-Class-DBI \
		p5-Class-DBI-AsForm>=0:${PORTSDIR}/databases/p5-Class-DBI-AsForm \
		p5-Class-DBI-FromForm>=0:${PORTSDIR}/www/p5-Class-DBI-FromForm \
		p5-Path-Class>=0:${PORTSDIR}/devel/p5-Path-Class \
		p5-Template-Plugin-Class>=0:${PORTSDIR}/www/p5-Template-Plugin-Class
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Catalyst::Helper::Controller::Scaffold.3

.include <bsd.port.mk>
