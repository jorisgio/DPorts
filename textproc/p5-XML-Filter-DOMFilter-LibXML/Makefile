# New ports collection makefile for:   p5-XML-Filter-DOMFilter-LibXML
# Date created:        24 October 2005
# Whom:                Andrew Humphrey <ahumphrey@realestate.com.au>
#
# $FreeBSD: ports/textproc/p5-XML-Filter-DOMFilter-LibXML/Makefile,v 1.6 2012/11/17 06:02:12 svnexp Exp $
#

PORTNAME=	XML-Filter-DOMFilter-LibXML
PORTVERSION=	0.02
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ahumphrey@realestate.com.au
COMMENT=	Perl SAX Filter allowing DOM processing of selected subtrees

BUILD_DEPENDS=	p5-XML-LibXML>=0:${PORTSDIR}/textproc/p5-XML-LibXML
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		XML::Filter::DOMFilter::LibXML.3

.include <bsd.port.mk>
