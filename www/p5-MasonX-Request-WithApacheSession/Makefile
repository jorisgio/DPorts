# New ports collection makefile for:	p5-MasonX-Request-WithApacheSession
# Date created:			2003.07.21
# Whom:				Nick Hilliard <nick@foobar.org>
#
# $FreeBSD: ports/www/p5-MasonX-Request-WithApacheSession/Makefile,v 1.11 2012/11/17 06:02:51 svnexp Exp $
#

PORTNAME=	MasonX-Request-WithApacheSession
PORTVERSION=	0.31
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	An interface to Apache::Session for HTML::Mason

BUILD_DEPENDS=	p5-HTML-Mason>=0:${PORTSDIR}/www/p5-HTML-Mason \
		p5-Apache-Session-Wrapper>=0:${PORTSDIR}/www/p5-Apache-Session-Wrapper
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_MODBUILD=	yes

MAN3=		MasonX::Request::WithApacheSession.3 \
		MasonX::Request::WithMultiSession.3

.include <bsd.port.mk>
