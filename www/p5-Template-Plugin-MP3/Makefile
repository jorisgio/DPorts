# New ports collection makefile for:	p5-Template-Plugin-MP3
# Date created:		13 June 2004
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: ports/www/p5-Template-Plugin-MP3/Makefile,v 1.8 2012/11/17 06:02:54 svnexp Exp $
#

PORTNAME=	Template-Plugin-MP3
PORTVERSION=	1.02
CATEGORIES=	www textproc audio perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	TT Plugin that wraps around the MP3::Info module

BUILD_DEPENDS=	p5-Template-Toolkit>=0:${PORTSDIR}/www/p5-Template-Toolkit \
		p5-MP3-Info>=0:${PORTSDIR}/audio/p5-MP3-Info
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Template::Plugin::MP3.3

.include <bsd.port.mk>
