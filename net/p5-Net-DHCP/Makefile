# New ports collection makefile for:   p5-Net-DHCP
# Date created:                2006-07-13
# Whom:                        Jin-Shan Tseng <tjs@cdpa.nsysu.edu.tw>
#
# $FreeBSD: ports/net/p5-Net-DHCP/Makefile,v 1.9 2012/11/17 06:00:10 svnexp Exp $
#

PORTNAME=	Net-DHCP
PORTVERSION=	0.691
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tjs@cdpa.nsysu.edu.tw
COMMENT=	A DHCP set of classes designed to handle basic DHCP handling

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

TEST_DEPENDS=	p5-Test-Warn>=0:${PORTSDIR}/devel/p5-Test-Warn

PERL_MODBUILD=	yes

MAN3=		Net::DHCP::Constants.3 \
		Net::DHCP::Packet.3

.include <bsd.port.mk>
