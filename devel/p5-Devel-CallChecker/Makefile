# New ports collection makefile for:	p5-Devel-CallChecker
# Date created:		2012-02-07
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Devel-CallChecker/Makefile,v 1.5 2012/11/17 05:56:13 svnexp Exp $
#

PORTNAME=	Devel-CallChecker
PORTVERSION=	0.005
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Custom op checking attached to subroutines

BUILD_DEPENDS=	p5-DynaLoader-Functions>=0.001:${PORTSDIR}/devel/p5-DynaLoader-Functions
RUN_DEPENDS=	p5-DynaLoader-Functions>=0.001:${PORTSDIR}/devel/p5-DynaLoader-Functions

TEST_DEPENDS=	p5-Test-Pod>=1:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Pod-Coverage>=0:${PORTSDIR}/devel/p5-Test-Pod-Coverage

PERL_CONFIGURE=	yes

MAN3=		Devel::CallChecker.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501000
TEST_DEPENDS+=	p5-ExtUtils-CBuilder>=0.1500:${PORTSDIR}/devel/p5-ExtUtils-CBuilder
.endif

.include <bsd.port.post.mk>
