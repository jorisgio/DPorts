# New ports collection makefile for:	Plack::Middleware::Session
# Date created:		17 Mar 2010
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Plack-Middleware-Session/Makefile,v 1.8 2012/11/17 06:02:53 svnexp Exp $
#

PORTNAME=	Plack-Middleware-Session
PORTVERSION=	0.15
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for session management middleware for Plack

RUN_DEPENDS=	\
	p5-Digest-HMAC>=1.03:${PORTSDIR}/security/p5-Digest-HMAC \
	p5-Digest-SHA1>0:${PORTSDIR}/security/p5-Digest-SHA1 \
	p5-Plack>=0.9910:${PORTSDIR}/www/p5-Plack
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	\
	p5-Test-Fatal>0:${PORTSDIR}/devel/p5-Test-Fatal \
	p5-Test-Requires>0:${PORTSDIR}/devel/p5-Test-Requires \
	p5-Test-TCP>0:${PORTSDIR}/devel/p5-Test-TCP

PERL_CONFIGURE=	yes

MAN3=	Plack::Middleware::Session.3 \
	Plack::Middleware::Session::Cookie.3 \
	Plack::Session.3 \
	Plack::Session::State.3 \
	Plack::Session::State::Cookie.3 \
	Plack::Session::Store.3 \
	Plack::Session::Store::Cache.3 \
	Plack::Session::Store::DBI.3 \
	Plack::Session::Store::File.3 \
	Plack::Session::Store::Null.3

.include <bsd.port.mk>
