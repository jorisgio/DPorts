# New ports collection makefile for:	p5-MouseX-Traits
# Date created:		2011-06-02
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-MouseX-Traits/Makefile,v 1.2 2012/11/17 05:56:24 svnexp Exp $
#

PORTNAME=	MouseX-Traits
PORTVERSION=	0.1102
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:GFUJI
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Automatically apply roles at object creation time

RUN_DEPENDS=	p5-Mouse>=0.81:${PORTSDIR}/devel/p5-Mouse
TEST_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception

PERL_CONFIGURE=	yes

MAN3=		MouseX::Traits.3

.include <bsd.port.mk>
