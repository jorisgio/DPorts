# $FreeBSD: ports/devel/p5-MooseX-AttributeShortcuts/Makefile,v 1.2 2012/11/17 05:56:22 svnexp Exp $

PORTNAME=	MooseX-AttributeShortcuts
PORTVERSION=	0.015
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	MooseX
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Shorthand for common attribute options

BUILD_DEPENDS=	p5-Moose>=0:${PORTSDIR}/devel/p5-Moose \
		p5-MooseX-Role-Parameterized>=0:${PORTSDIR}/devel/p5-MooseX-Role-Parameterized \
		p5-MooseX-Types-Common>=0:${PORTSDIR}/devel/p5-MooseX-Types-Common \
		p5-MooseX-Types>=0:${PORTSDIR}/devel/p5-MooseX-Types \
		p5-namespace-autoclean>=0:${PORTSDIR}/devel/p5-namespace-autoclean
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	MooseX::AttributeShortcuts.3

.include <bsd.port.mk>
