# New ports collection makefile for:	p5-Pod-Coverage-TrustPod
# Date created:				2011-02-16
# Whom:					milki <milki@rescomp.berkeley.edu>
#
# $FreeBSD: ports/devel/p5-Pod-Coverage-TrustPod/Makefile,v 1.8 2012/11/17 05:56:26 svnexp Exp $
#

PORTNAME=	Pod-Coverage-TrustPod
PORTVERSION=	0.100002
CATEGORIES=	devel textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:RJBS
PKGNAMEPREFIX=	p5-

MAINTAINER=	milki@rescomp.berkeley.edu
COMMENT=	Declare trusted symbol names in POD

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

.include <bsd.port.pre.mk>

BUILD_DEPENDS+=	p5-Pod-Coverage>=0:${PORTSDIR}/devel/p5-Pod-Coverage \
		p5-Pod-Eventual>=0:${PORTSDIR}/textproc/p5-Pod-Eventual
RUN_DEPENDS+=	p5-Pod-Coverage>=0:${PORTSDIR}/devel/p5-Pod-Coverage \
		p5-Pod-Eventual>=0:${PORTSDIR}/textproc/p5-Pod-Eventual

TEST_DEPENDS+=	p5-Test-Pod>=1.41:${PORTSDIR}/devel/p5-Test-Pod

.if ${PERL_LEVEL} < 501001
TEST_DEPENDS+=	p5-Test-Simple>=0.88:${PORTSDIR}/devel/p5-Test-Simple
.endif

PERL_CONFIGURE=	yes

MAN3=		Pod::Coverage::TrustPod.3

.include <bsd.port.post.mk>
