# New ports collection makefile for:	Plack::Handler::AnyEvent::HTTPD
# Date created:		05 Apr 2010
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Plack-Handler-AnyEvent-HTTPD/Makefile,v 1.5 2012/11/17 06:02:52 svnexp Exp $
#

PORTNAME=	Plack-Handler-AnyEvent-HTTPD
PORTVERSION=	0.03
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for Plack handler to run PSGI apps on AnyEvent::HTTPD

RUN_DEPENDS=	\
	p5-AnyEvent-HTTPD>0:${PORTSDIR}/www/p5-AnyEvent-HTTPD \
	p5-libwww>0:${PORTSDIR}/www/p5-libwww \
	p5-Plack>=0.9903:${PORTSDIR}/www/p5-Plack \
	p5-URI>0:${PORTSDIR}/net/p5-URI
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	p5-Test-TCP>0:${PORTSDIR}/devel/p5-Test-TCP

PERL_CONFIGURE=	yes

MAN3=	Plack::Handler::AnyEvent::HTTPD.3

.include <bsd.port.mk>
