# $FreeBSD: ports/devel/p5-Best/Makefile,v 1.9 2012/12/07 15:21:49 svnexp Exp $

PORTNAME=	Best
PORTVERSION=	0.15
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:GAAL
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Fallbackable module loader

BUILD_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Best.3

.include <bsd.port.mk>
