# New ports collection makefile for:	Class-C3-Componentised
# Date created:	   2007-08-13
# Whom:		   Lars Balker Rasmussen <lbr@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Class-C3-Componentised/Makefile,v 1.14 2012/11/17 05:56:06 svnexp Exp $
#

PORTNAME=	Class-C3-Componentised
PORTVERSION=	1.0009
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:RIBASUSHI
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Load mix-ins or components to your C3-based class

RUN_DEPENDS=	p5-Class-C3>=0.20:${PORTSDIR}/devel/p5-Class-C3 \
		p5-MRO-Compat>0:${PORTSDIR}/devel/p5-MRO-Compat \
		p5-Class-Inspector>=0:${PORTSDIR}/devel/p5-Class-Inspector
BUILD_DEPENDS:=	${RUN_DEPENDS}

TEST_DEPENDS=	p5-Class-Inspector>=0:${PORTSDIR}/devel/p5-Class-Inspector \
	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception \
	p5-Test-Pod-Coverage>=1.04:${PORTSDIR}/devel/p5-Test-Pod-Coverage \
	p5-Test-Pod>=1.14:${PORTSDIR}/devel/p5-Test-Pod \
	p5-Test-Simple>=0:${PORTSDIR}/devel/p5-Test-Simple

PERL_CONFIGURE=	yes

MAN3=		Class::C3::Componentised.3

post-extract:
	@${PERL} -i.bak -ne 'print unless m,Test::,' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
