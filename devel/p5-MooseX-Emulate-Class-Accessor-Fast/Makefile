# New ports collection makefile for:	MooseX-Emulate-Class-Accessor-Fast
# Date created:	   13 May 2009
# Whom:		   Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: ports/devel/p5-MooseX-Emulate-Class-Accessor-Fast/Makefile,v 1.9 2012/11/17 05:56:23 svnexp Exp $
#

PORTNAME=	MooseX-Emulate-Class-Accessor-Fast
PORTVERSION=	0.00903
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Emulate Class::Accessor::Fast behavior using Moose attributes

BUILD_DEPENDS=	p5-Moose>=0.84:${PORTSDIR}/devel/p5-Moose \
		p5-namespace-clean>=0:${PORTSDIR}/devel/p5-namespace-clean
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception

PERL_CONFIGURE=	yes

MAN3=		MooseX::Adopt::Class::Accessor::Fast.3 \
		MooseX::Emulate::Class::Accessor::Fast.3

.include <bsd.port.mk>
