# New ports collection makefile for:	Test-POE-Server-TCP
# Date created:				23 Feb 2009
# Whom:					Lars Thegler <lth@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Test-POE-Server-TCP/Makefile,v 1.11 2012/11/17 05:56:33 svnexp Exp $
#

PORTNAME=	Test-POE-Server-TCP
PORTVERSION=	1.16
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	A POE Component providing TCP server services for test cases

BUILD_DEPENDS=	p5-POE>=1.004:${PORTSDIR}/devel/p5-POE
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Test::POE::Server::TCP.3

.include <bsd.port.mk>
