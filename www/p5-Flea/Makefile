# New ports collection makefile for:	Flea
# Date created:		21 Nov 2010
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Flea/Makefile,v 1.5 2012/11/17 06:02:48 svnexp Exp $
#

PORTNAME=	Flea
PORTVERSION=	0.04
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:FRODWITH
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for minimalistic sugar for your Plack

RUN_DEPENDS=	\
	p5-Devel-Declare-Parser>0:${PORTSDIR}/devel/p5-Devel-Declare-Parser \
	p5-Exception-Class>0:${PORTSDIR}/devel/p5-Exception-Class \
	p5-Exporter-Declare>=0.100:${PORTSDIR}/devel/p5-Exporter-Declare \
	p5-HTTP-Exception>0:${PORTSDIR}/www/p5-HTTP-Exception \
	p5-JSON>0:${PORTSDIR}/converters/p5-JSON \
	p5-Plack>0:${PORTSDIR}/www/p5-Plack \
	p5-Try-Tiny>0:${PORTSDIR}/lang/p5-Try-Tiny \
	p5-URI>0:${PORTSDIR}/net/p5-URI
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Flea.3

.include <bsd.port.mk>
