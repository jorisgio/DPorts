# Created by: Matthew Seaman
# $FreeBSD: ports/misc/p5-Business-Hours/Makefile,v 1.9 2012/12/15 09:34:27 svnexp Exp $

PORTNAME=	Business-Hours
PORTVERSION=	0.10
CATEGORIES=	misc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	matthew@FreeBSD.org
COMMENT=	Calculate business hours during a time period

BUILD_DEPENDS=	p5-Set-IntSpan>1.12:${PORTSDIR}/math/p5-Set-IntSpan
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Pod>-1.0:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Pod-Coverage>0:${PORTSDIR}/devel/p5-Test-Pod-Coverage

PERL_CONFIGURE=	yes

MAN3=		Business::Hours.3

.include <bsd.port.mk>
