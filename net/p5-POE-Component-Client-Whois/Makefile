# New ports collection makefile for:	p5-POE-Component-Client-Whois
# Date created:		2007-02-23
# Whom:			Jin-Shan Tseng <tjs@cdpa.nsysu.edu.tw>
#
# $FreeBSD: ports/net/p5-POE-Component-Client-Whois/Makefile,v 1.11 2012/11/17 06:00:12 svnexp Exp $
#

PORTNAME=	POE-Component-Client-Whois
PORTVERSION=	1.28
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	A one shot non-blocking RFC 812 WHOIS query

RUN_DEPENDS=	p5-POE>=0.38:${PORTSDIR}/devel/p5-POE \
		p5-Net-Netmask>=1.9012:${PORTSDIR}/net-mgmt/p5-Net-Netmask

PERL_CONFIGURE=	yes

MAN3=		POE::Component::Client::Whois.3 \
		POE::Component::Client::Whois::IPBlks.3 \
		POE::Component::Client::Whois::TLDList.3

.include <bsd.port.mk>
