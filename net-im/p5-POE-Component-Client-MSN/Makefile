# New ports collection makefile for:	p5-POE-Component-Client-MSN
# Date created:				2007/02/14
# Whom:					chinsan
#
# $FreeBSD: ports/net-im/p5-POE-Component-Client-MSN/Makefile,v 1.7 2012/11/17 06:00:28 svnexp Exp $
#

PORTNAME=	POE-Component-Client-MSN
PORTVERSION=	0.03
PORTREVISION=	2
CATEGORIES=	net-im perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	POE Component for MSN Messenger

BUILD_DEPENDS=	p5-Mail-Tools>=0:${PORTSDIR}/mail/p5-Mail-Tools \
		p5-POE>=0:${PORTSDIR}/devel/p5-POE \
		p5-POE-Component-Client-HTTP>=0:${PORTSDIR}/www/p5-POE-Component-Client-HTTP \
		p5-POE-Component-Client-Keepalive>=0:${PORTSDIR}/net/p5-POE-Component-Client-Keepalive \
		p5-POE-Component-SSLify>=0:${PORTSDIR}/security/p5-POE-Component-SSLify \
		p5-URI>=0:${PORTSDIR}/net/p5-URI
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=		POE::Component::Client::MSN.3

PERL_CONFIGURE=	yes

.include <bsd.port.mk>
