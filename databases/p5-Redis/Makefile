# New ports collection makefile for:	p5-Redis
# Date created:		2009-09-19
# Whom:			Gea-Suan Lin <gslin@gslin.org>
#
# $FreeBSD: ports/databases/p5-Redis/Makefile,v 1.13 2012/12/17 09:41:16 svnexp Exp $
#

PORTNAME=	Redis
PORTVERSION=	1.9510
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MELO
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:C/0$//}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl binding for Redis database

BUILD_DEPENDS=	p5-IO-String>=0:${PORTSDIR}/devel/p5-IO-String \
		p5-Try-Tiny>=0:${PORTSDIR}/lang/p5-Try-Tiny
RUN_DEPENDS=	p5-IO-String>=0:${PORTSDIR}/devel/p5-IO-String \
		p5-Try-Tiny>=0:${PORTSDIR}/lang/p5-Try-Tiny

TEST_DEPENDS=	p5-Test-Deep>=0:${PORTSDIR}/devel/p5-Test-Deep \
		p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception \
		p5-Test-Fatal>=0:${PORTSDIR}/devel/p5-Test-Fatal

PERL_CONFIGURE=	yes

MAN3=		Redis.3 Redis::Hash.3 Redis::List.3

.include <bsd.port.mk>
