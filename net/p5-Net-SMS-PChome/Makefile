# New ports collection makefile for:	p5-Net-SMS-PChome
# Date created:		2007-04-05
# Whom:			Tsung-Han Yeh <snowfly@yuntech.edu.tw>
#
# $FreeBSD: ports/net/p5-Net-SMS-PChome/Makefile,v 1.6 2012/11/17 06:00:11 svnexp Exp $
#

PORTNAME=	Net-SMS-PChome
PORTVERSION=	0.11
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	snowfly@yuntech.edu.tw
COMMENT=	Send SMS messages via the sms.pchome.com.tw service

BUILD_DEPENDS=	p5-WWW-Mechanize>=0:${PORTSDIR}/www/p5-WWW-Mechanize \
		p5-HTML-TagParser>=0:${PORTSDIR}/www/p5-HTML-TagParser \
		p5-Date-Calc>=0:${PORTSDIR}/devel/p5-Date-Calc
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Net::SMS::PChome.3

.include <bsd.port.mk>
