# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: ports/textproc/p5-XML-XML2JSON/Makefile,v 1.4 2012/11/17 06:02:14 svnexp Exp $

PORTNAME=	XML-XML2JSON
PORTVERSION=	0.06
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Convert XML into JSON (and back again) using XML::LibXML

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-XML-LibXML>=1.59:${PORTSDIR}/textproc/p5-XML-LibXML
RUN_DEPENDS:=	${BUILD_DEPENDS}

# the order of options follows the search order of JSON module by XML::XML2JSON
OPTIONS_DEFINE=	JSON_SYCK JSON_XS JSON JSON_DWIW
OPTIONS_DEFAULT=JSON_SYCK
JSON_SYCK_DESC=	Use JSON::Syck
JSON_XS_DESC=	Use JSON::XS
JSON_DESC=	Use JSON
JSON_DWIW_DESC=	Use JSON::DWIW

PERL_CONFIGURE=	yes

MAN3=		XML::XML2JSON.3

.include <bsd.port.options.mk>

.if empty(PORT_OPTIONS:MJSON_SYCK) && empty(PORT_OPTIONS:MJSON_XS) && empty(PORT_OPTIONS:MJSON) && empty(PORT_OPTIONS:MJSON_DWIW)
IGNORE=		you must choose at least one JSON module
.endif

.if ${PORT_OPTIONS:MJSON_SYCK}
BUILD_DEPENDS+=	p5-YAML-Syck>=0:${PORTSDIR}/textproc/p5-YAML-Syck
RUN_DEPENDS+=	p5-YAML-Syck>=0:${PORTSDIR}/textproc/p5-YAML-Syck
.endif

.if ${PORT_OPTIONS:MJSON_XS}
BUILD_DEPENDS+=	p5-JSON-XS>=0:${PORTSDIR}/converters/p5-JSON-XS
RUN_DEPENDS+=	p5-JSON-XS>=0:${PORTSDIR}/converters/p5-JSON-XS
.endif

.if ${PORT_OPTIONS:MJSON}
BUILD_DEPENDS+=	p5-JSON>=0:${PORTSDIR}/converters/p5-JSON
RUN_DEPENDS+=	p5-JSON>=0:${PORTSDIR}/converters/p5-JSON
.endif

.if ${PORT_OPTIONS:MJSON_DWIW}
BUILD_DEPENDS+=	p5-JSON-DWIW>=0:${PORTSDIR}/converters/p5-JSON-DWIW
RUN_DEPENDS+=	p5-JSON-DWIW>=0:${PORTSDIR}/converters/p5-JSON-DWIW
.endif

.include <bsd.port.mk>
