# New ports collection makefile for:	p5-SMS-Send-TW-PChome
# Date created:		2007-04-06
# Whom:			Tsung-Han Yeh <snowfly@yuntech.edu.tw>
#
# $FreeBSD: ports/comms/p5-SMS-Send-TW-PChome/Makefile,v 1.7 2012/11/17 05:55:00 svnexp Exp $
#

PORTNAME=	SMS-Send-TW-PChome
PORTVERSION=	0.03
CATEGORIES=	comms perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	 p5-

MAINTAINER=	snowfly@yuntech.edu.tw
COMMENT=	SMS::Send driver for sms.pchome.com.tw

RUN_DEPENDS=	p5-SMS-Send>=0:${PORTSDIR}/comms/p5-SMS-Send \
  		p5-Text-Iconv>=0:${PORTSDIR}/converters/p5-Text-Iconv \
		p5-WWW-Mechanize>=0:${PORTSDIR}/www/p5-WWW-Mechanize \
		p5-Crypt-SSLeay>=0:${PORTSDIR}/security/p5-Crypt-SSLeay
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		SMS::Send::TW::PChome.3

.include <bsd.port.mk>
