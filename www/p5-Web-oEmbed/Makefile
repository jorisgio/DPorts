# New ports collection makefile for:	p5-Web-oEmbed
# Date created:		2011-01-14
# Whom:			Gea-Suan Lin <gslin@gslin.org>
#
# $FreeBSD: ports/www/p5-Web-oEmbed/Makefile,v 1.2 2012/11/17 06:02:56 svnexp Exp $
#

PORTNAME=	Web-oEmbed
PORTVERSION=	0.04
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	gslin@gslin.org
COMMENT=	oEmbed consumer

RUN_DEPENDS=	p5-Any-Moose>=0:${PORTSDIR}/devel/p5-Any-Moose \
		p5-HTML-Tree>=0:${PORTSDIR}/www/p5-HTML-Tree \
		p5-JSON-XS>=0:${PORTSDIR}/converters/p5-JSON-XS \
		p5-XML-LibXML-Simple>=0:${PORTSDIR}/textproc/p5-XML-LibXML-Simple \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww

PERL_CONFIGURE=	yes

MAN3=		Web::oEmbed.3

.include <bsd.port.mk>
