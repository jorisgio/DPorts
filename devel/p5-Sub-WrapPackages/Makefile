# Created by: George Hartzell <hartzell@alerce.com>
# $FreeBSD: ports/devel/p5-Sub-WrapPackages/Makefile,v 1.10 2012/11/17 05:56:30 svnexp Exp $

PORTNAME=	Sub-WrapPackages
PORTVERSION=	2.0
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Add pre- and post-execution wrappers

RUN_DEPENDS=	p5-Hook-LexWrap>=0:${PORTSDIR}/devel/p5-Hook-LexWrap \
		p5-Devel-Caller-IgnoreNamespaces>=1:${PORTSDIR}/devel/p5-Devel-Caller-IgnoreNamespaces \
		p5-Sub-Prototype>=0.02:${PORTSDIR}/devel/p5-Sub-Prototype
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Sub::WrapPackages.3

.include <bsd.port.mk>
