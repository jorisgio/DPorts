# Created by: Erwin Lansing <erwin@FreeBSD.org>
# $FreeBSD: ports/devel/p5-Test-Class/Makefile,v 1.38 2012/11/25 16:12:00 svnexp Exp $

PORTNAME=	Test-Class
PORTVERSION=	0.38
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Test::Class - Easily create test classes in an xUnit style

RUN_DEPENDS=	p5-MRO-Compat>=0.11:${PORTSDIR}/devel/p5-MRO-Compat
BUILD_DEPENDS:=	${RUN_DEPENDS}
BUILD_DEPENDS+=	p5-Test-Exception>=0.25:${PORTSDIR}/devel/p5-Test-Exception

PERL_MODBUILD=	yes

MAN3=		Test::Class.3 \
		Test::Class::Load.3 \
		Test::Class::MethodInfo.3

.include <bsd.port.mk>
