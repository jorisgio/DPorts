# New ports collection makefile for:	devel/p5-Test-XML
# Date created:				04 November 2005
# Whom:					Lars Thegler <lth@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Test-XML/Makefile,v 1.7 2012/11/17 05:56:34 svnexp Exp $
#

PORTNAME=	Test-XML
PORTVERSION=	0.08
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Compare XML in perl tests

BUILD_DEPENDS=	p5-XML-SemanticDiff>=0:${PORTSDIR}/textproc/p5-XML-SemanticDiff \
		p5-XML-Parser>=0:${PORTSDIR}/textproc/p5-XML-Parser
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Test::XML.3 \
	Test::XML::SAX.3 \
	Test::XML::Twig.3 \
	Test::XML::XPath.3

.include <bsd.port.mk>
