# New ports collection makefile for:	p5-Net-Telnet-Netscreen
# Date created:		2006-07-30
# Whom:			Tsung-Han Yeh <snowfly@yuntech.edu.tw>
#
# $FreeBSD: ports/net/p5-Net-Telnet-Netscreen/Makefile,v 1.7 2012/11/17 06:00:12 svnexp Exp $
#

PORTNAME=	Net-Telnet-Netscreen
PORTVERSION=	1.2
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	snowfly@yuntech.edu.tw
COMMENT=	A Perl interface for interact with a Netscreen firewall

BUILD_DEPENDS=	p5-Net-Telnet>=0:${PORTSDIR}/net/p5-Net-Telnet
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Net::Telnet::Netscreen.3

.include <bsd.port.mk>
