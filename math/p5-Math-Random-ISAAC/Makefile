# New ports collection makefile for:	Math::Random::ISAAC
# Date created:				07 Dec, 2009
# Whom:					Wen Heping <wen@FreeBSD.org>
#
# $FreeBSD: ports/math/p5-Math-Random-ISAAC/Makefile,v 1.6 2012/11/17 05:59:26 svnexp Exp $
#

PORTNAME=	Math-Random-ISAAC
PORTVERSION=	1.004
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:JAWNSY
PKGNAMEPREFIX=	p5-

MAINTAINER=	wen@FreeBSD.org
COMMENT=	Perl interface to the ISAAC PRNG Algorithm

BUILD_DEPENDS=	p5-Test-NoWarnings>0:${PORTSDIR}/devel/p5-Test-NoWarnings
RUN_DEPENDS:=	${BUILD_DEPENDS} \
		p5-Math-Random-ISAAC-XS>0:${PORTSDIR}/math/p5-Math-Random-ISAAC-XS

PERL_CONFIGURE=	yes

MAN3=		Math::Random::ISAAC::PP.3 \
		Math::Random::ISAAC.3

.include <bsd.port.mk>
