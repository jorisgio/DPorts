# New ports collection makefile for:	Time-Duration
# Date created:	   09 December 2002
# Whom:		   Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: ports/devel/p5-Time-Duration/Makefile,v 1.9 2012/11/17 05:56:35 svnexp Exp $
#

PORTNAME=	Time-Duration
PORTVERSION=	1.06
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Rounded or exact English expression of durations

TEST_DEPENDS=	p5-Test-Pod>=0:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Pod-Coverage>=0:${PORTSDIR}/devel/p5-Test-Pod-Coverage

PERL_CONFIGURE=	yes

MAN3=		Time::Duration.3

.include <bsd.port.mk>
