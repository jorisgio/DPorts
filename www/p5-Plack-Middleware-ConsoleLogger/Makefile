# New ports collection makefile for:	Plack::Middleware::ConsoleLogger
# Date created:		16 May 2010
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Plack-Middleware-ConsoleLogger/Makefile,v 1.5 2012/11/17 06:02:53 svnexp Exp $
#

PORTNAME=	Plack-Middleware-ConsoleLogger
PORTVERSION=	0.04
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to write logs to Firebug or Webkit Inspector

RUN_DEPENDS=	\
	p5-Plack>=0.99:${PORTSDIR}/www/p5-Plack \
	p5-JavaScript-Value-Escape>0:${PORTSDIR}/lang/p5-JavaScript-Value-Escape
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Plack::Middleware::ConsoleLogger.3

.include <bsd.port.mk>
