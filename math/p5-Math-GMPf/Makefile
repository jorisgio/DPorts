# New ports collection makefile for:	p5-Math-GMPf
# Date created:		2011-11-30
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: ports/math/p5-Math-GMPf/Makefile,v 1.2 2012/11/17 05:59:26 svnexp Exp $
#

PORTNAME=	Math-GMPf
PORTVERSION=	0.35
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SISYPHUS
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Perl interface to the GMP library floating point (mpf) functions

LIB_DEPENDS=	gmp:${PORTSDIR}/math/gmp
TEST_DEPENDS=	p5-Math-GMP>=0:${PORTSDIR}/math/p5-Math-GMP \
		p5-Test-Pod>=1:${PORTSDIR}/devel/p5-Test-Pod

CONFIGURE_ARGS=	INC=-I${LOCALBASE}/include LIBS="-L${LOCALBASE}/lib -lgmp"
PERL_CONFIGURE=	yes

MAN3=		Math::GMPf.3

.include <bsd.port.mk>
