# New ports collection makefile for:	Test-POE-Client-TCP
# Date created:				25 Mar 2009
# Whom:					Lars Thegler <lth@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Test-POE-Client-TCP/Makefile,v 1.8 2012/11/17 05:56:33 svnexp Exp $
#

PORTNAME=	Test-POE-Client-TCP
PORTVERSION=	1.10
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	A POE Component providing TCP client services for test cases

BUILD_DEPENDS=	p5-POE>=1.28:${PORTSDIR}/devel/p5-POE
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Test::POE::Client::TCP.3

.include <bsd.port.mk>
