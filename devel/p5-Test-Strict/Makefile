# Created by: Zach Thompson <hideo@lastamericanempire.com>
# $FreeBSD: ports/devel/p5-Test-Strict/Makefile,v 1.13 2013/01/02 08:53:47 svnexp Exp $

PORTNAME=	Test-Strict
PORTVERSION=	0.17
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Test and report on use strict/warnings coverage

BUILD_DEPENDS=	p5-Devel-Cover>=0.43:${PORTSDIR}/devel/p5-Devel-Cover
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Test::Strict.3

.include <bsd.port.mk>
