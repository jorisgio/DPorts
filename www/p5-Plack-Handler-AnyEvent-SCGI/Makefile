# New ports collection makefile for:	Plack::Handler::AnyEvent::SCGI
# Date created:		17 Apr 2010
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Plack-Handler-AnyEvent-SCGI/Makefile,v 1.4 2012/11/17 06:02:52 svnexp Exp $
#

PORTNAME=	Plack-Handler-AnyEvent-SCGI
PORTVERSION=	0.02
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for PSGI handler on AnyEvent::SCGI

RUN_DEPENDS=	\
	p5-AnyEvent-SCGI>0:${PORTSDIR}/www/p5-AnyEvent-SCGI \
	p5-Plack>=0.9901:${PORTSDIR}/www/p5-Plack
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	p5-Test-TCP>0:${PORTSDIR}/devel/p5-Test-TCP

PERL_CONFIGURE=	yes

MAN3=	Plack::Handler::AnyEvent::SCGI.3

.include <bsd.port.mk>
