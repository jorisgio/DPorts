# New ports collection makefile for:	Plack::Middleware::Status
# Date created:		01 Nov 2010
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Plack-Middleware-Status/Makefile,v 1.3 2012/11/17 06:02:53 svnexp Exp $
#

PORTNAME=	Plack-Middleware-Status
PORTVERSION=	1.101150
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to map urls to status code-driven responses for Plack

RUN_DEPENDS=	\
	p5-libwww>0:${PORTSDIR}/www/p5-libwww \
	p5-Plack>0:${PORTSDIR}/www/p5-Plack
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Plack::Middleware::Status.3

.include <bsd.port.mk>
