# New ports collection makefile for:	XML-Compile-SOAP-AnyEvent
# Date created:	   12 Jan 2011
# Whom:		   Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: ports/net/p5-XML-Compile-SOAP-AnyEvent/Makefile,v 1.4 2012/11/17 06:00:13 svnexp Exp $
#

PORTNAME=	XML-Compile-SOAP-AnyEvent
PORTVERSION=	0.01
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Exchange XML via AnyEvent::HTTP

BUILD_DEPENDS=	p5-XML-Compile-SOAP>=2.18:${PORTSDIR}/net/p5-XML-Compile-SOAP \
		p5-AnyEvent-HTTP>=1.46:${PORTSDIR}/www/p5-AnyEvent-HTTP \
		p5-Log-Report>=0.28:${PORTSDIR}/devel/p5-Log-Report
RUN_DEPENDS:=	${BUILD_DEPENDS}

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

PERL_CONFIGURE=	yes

MAN3=		XML::Compile::Transfer::SOAPHTTP_AnyEvent.3

.include <bsd.port.mk>
