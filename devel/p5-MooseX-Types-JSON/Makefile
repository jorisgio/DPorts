# New ports collection makefile for:	MooseX-Types-JSON
# Date created:	   2011-02-17
# Whom:		   milki <milki@rescomp.berkeley.edu>
#
# $FreeBSD: ports/devel/p5-MooseX-Types-JSON/Makefile,v 1.4 2012/11/17 05:56:23 svnexp Exp $
#

PORTNAME=	MooseX-Types-JSON
PORTVERSION=	0.02
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MILA
PKGNAMEPREFIX=	p5-

MAINTAINER=	milki@rescomp.berkeley.edu
COMMENT=	JSON and relaxedJSON datatype for Moose

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

RUN_DEPENDS=	p5-Moose>=0.82:${PORTSDIR}/devel/p5-Moose \
		p5-MooseX-Types>=0.15:${PORTSDIR}/devel/p5-MooseX-Types \
		p5-JSON-XS>=2.00:${PORTSDIR}/converters/p5-JSON-XS

TEST_DEPENDS=	p5-Test-Pod>=1.00:${PORTSDIR}/devel/p5-Test-Pod

PERL_CONFIGURE=	yes

MAN3=		MooseX::Types::JSON.3

.include <bsd.port.mk>
