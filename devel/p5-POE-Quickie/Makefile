# New ports collection makefile for:	p5-POE-Quickie
# Date created:		2011-05-04
# Whom:			Takefu
#
# $FreeBSD: ports/devel/p5-POE-Quickie/Makefile,v 1.4 2012/11/17 05:56:25 svnexp Exp $
#

PORTNAME=	POE-Quickie
PORTVERSION=	0.18
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	takefu@airport.fm
COMMENT=	A lazy way to wrap blocking code and programs

LICENSE=	GPLv1 ART10
LICENSE_COMB=	dual
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	p5-POE>=1.350:${PORTSDIR}/devel/p5-POE
RUN_DEPENDS:=	${BUILD_DEPENDS}

TEST_DEPENDS=	p5-Capture-Tiny>=0.07:${PORTSDIR}/devel/p5-Capture-Tiny \
		p5-Test-Deep>=0:${PORTSDIR}/devel/p5-Test-Deep

PERL_CONFIGURE=	yes

MAN3=		POE::Quickie.3

post-patch:
	@${RM} ${WRKSRC}/lib/POE/Quickie.pm.orig

.include <bsd.port.mk>
