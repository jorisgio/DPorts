# New ports collection makefile for:	Starlet
# Date created:		02 Apr 2010
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Starlet/Makefile,v 1.12 2012/11/17 06:02:54 svnexp Exp $
#

PORTNAME=	Starlet
PORTVERSION=	0.16
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:KAZUHO
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for standalone HTTP/1.0 server

RUN_DEPENDS=	\
	p5-Parallel-Prefork>=0.13:${PORTSDIR}/devel/p5-Parallel-Prefork \
	p5-Plack>=0.992:${PORTSDIR}/www/p5-Plack \
	p5-Server-Starter>=0.06:${PORTSDIR}/net/p5-Server-Starter
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	p5-Test-TCP>0:${PORTSDIR}/devel/p5-Test-TCP

PERL_CONFIGURE=	yes

MAN3=	Starlet.3

.include <bsd.port.mk>
