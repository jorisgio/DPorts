# New ports collection makefile for:	devel/p5-POE-XS-Queue-Array
# Date created:				22 May 2006
# Whom:					Zach Thompson <hideo@lastamericanempire.com>
#
# $FreeBSD: ports/devel/p5-POE-XS-Queue-Array/Makefile,v 1.11 2012/11/17 05:56:25 svnexp Exp $
#

PORTNAME=	POE-XS-Queue-Array
PORTVERSION=	0.006
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	XS implementation of POE::Queue::Array

BUILD_DEPENDS=	p5-POE>=0:${PORTSDIR}/devel/p5-POE
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	POE::XS::Queue::Array.3

.include <bsd.port.mk>
