# New ports collection makefile for:	p5-Net-OpenID-Server
# Date created:				7 Nov 2011
# Whom:					Cheng-Lung Sung <clsung@FreeBSD.org>
#
# $FreeBSD: ports/security/p5-Net-OpenID-Common/Makefile,v 1.6 2012/11/17 06:01:13 svnexp Exp $
#

PORTNAME=	Net-OpenID-Common
PORTVERSION=	1.14
CATEGORIES=	security net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Libraries shared between Net::OpenID::Consumer and Net::OpenID::Server

BUILD_DEPENDS=	p5-Crypt-DH-GMP>=0:${PORTSDIR}/net/p5-Crypt-DH-GMP \
		p5-Email-MIME-ContentType>=0:${PORTSDIR}/mail/p5-Email-MIME-ContentType \
		p5-HTML-Parser>=0:${PORTSDIR}/www/p5-HTML-Parser \
		p5-HTTP-Message>=0:${PORTSDIR}/www/p5-HTTP-Message \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-XML-Simple>=0:${PORTSDIR}/textproc/p5-XML-Simple
RUN_DEPENDS=	p5-Crypt-DH-GMP>=0:${PORTSDIR}/net/p5-Crypt-DH-GMP \
		p5-Email-MIME-ContentType>=0:${PORTSDIR}/mail/p5-Email-MIME-ContentType \
		p5-HTML-Parser>=0:${PORTSDIR}/www/p5-HTML-Parser \
		p5-HTTP-Message>=0:${PORTSDIR}/www/p5-HTTP-Message \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-XML-Simple>=0:${PORTSDIR}/textproc/p5-XML-Simple

PERL_CONFIGURE=	yes

MAN3=		Net::OpenID::Common.3 \
		Net::OpenID::Extension.3 \
		Net::OpenID::Extension::SimpleRegistration.3 \
		Net::OpenID::ExtensionMessage.3 \
		Net::OpenID::IndirectMessage.3 \
		Net::OpenID::URIFetch.3 \
		Net::OpenID::Yadis.3 \
		Net::OpenID::Yadis::Service.3

.if defined(MAINTAINER_MODE)
regression-test: build
	cd ${WRKSRC} && ${MAKE} test
.endif

.include <bsd.port.mk>
