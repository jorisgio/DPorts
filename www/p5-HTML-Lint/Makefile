# Created by: Anton Berezin <tobez@FreeBSD.org>
# $FreeBSD: ports/www/p5-HTML-Lint/Makefile,v 1.9 2012/11/17 06:02:49 svnexp Exp $

PORTNAME=	HTML-Lint
PORTVERSION=	2.20
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:PETDANCE
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	HTML::Lint - check for HTML errors in a string or file

BUILD_DEPENDS=	p5-HTML-Tagset>0:${PORTSDIR}/www/p5-HTML-Tagset \
		p5-libwww>0:${PORTSDIR}/www/p5-libwww \
		p5-HTML-Parser>0:${PORTSDIR}/www/p5-HTML-Parser
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	HTML::Lint.3 \
	HTML::Lint::Error.3 \
	HTML::Lint::HTML4.3 \
	HTML::Lint::Parser.3 \
	Test::HTML::Lint.3

.include <bsd.port.mk>
