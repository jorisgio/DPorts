# Created by: Lars Balker Rasmussen <lbr@FreeBSD.org>
# $FreeBSD: ports/www/p5-HTTP-Body/Makefile,v 1.28 2012/12/17 12:20:07 svnexp Exp $

PORTNAME=	HTTP-Body
PORTVERSION=	1.17
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:GETTY
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	HTTP Body Parser

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-HTTP-Message>=0:${PORTSDIR}/www/p5-HTTP-Message
RUN_DEPENDS=	p5-HTTP-Message>=0:${PORTSDIR}/www/p5-HTTP-Message

TEST_DEPENDS=	p5-Test-Deep>=0:${PORTSDIR}/devel/p5-Test-Deep \
		p5-Test-Pod>=1.14:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Pod-Coverage>=1.04:${PORTSDIR}/devel/p5-Test-Pod-Coverage

PERL_CONFIGURE=	yes

MAN3=		HTTP::Body.3 \
		HTTP::Body::MultiPart.3 \
		HTTP::Body::OctetStream.3 \
		HTTP::Body::UrlEncoded.3 \
		HTTP::Body::XForms.3 \
		HTTP::Body::XFormsMultipart.3

.include <bsd.port.mk>
