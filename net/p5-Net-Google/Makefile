# New ports collection makefile for:	Net-Google
# Date created:	   04 June 2002
# Whom:		   Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: ports/net/p5-Net-Google/Makefile,v 1.15 2012/11/17 06:00:10 svnexp Exp $
#

PORTNAME=	Net-Google
PORTVERSION=	1.0.1
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Simple OOP-ish interface to the Google SOAP API

BUILD_DEPENDS=	p5-SOAP-Lite>=0:${PORTSDIR}/net/p5-SOAP-Lite
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_MODBUILD=	yes

MAN3=		Net::Google.3 Net::Google::Cache.3 Net::Google::Response.3 \
		Net::Google::Search.3 Net::Google::Service.3 \
		Net::Google::Spelling.3 Net::Google::tool.3

post-patch:
	@${PERL} -pi -e 's/CPAN/ExtUtils/' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
