# New ports collection makefile for:	p5-Mail-DeliveryStatus-BounceParser
# Date created:				Thu Mar 25 20:40:31 MSK 2004
# Whom:					Alexander Zhuravlev <zaa@zaa.pp.ru>
#
# $FreeBSD: ports/mail/p5-Mail-DeliveryStatus-BounceParser/Makefile,v 1.14 2012/11/17 05:59:08 svnexp Exp $
#

PORTNAME=	Mail-DeliveryStatus-BounceParser
PORTVERSION=	1.5.24
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:R}${PORTVERSION:E}

MAINTAINER=	chifeng@gmail.com
COMMENT=	Perl extension to analyze bounce messages

RUN_DEPENDS=	p5-MIME-Tools>=5.418:${PORTSDIR}/mail/p5-MIME-Tools \
		p5-Mail-Tools>=2.04:${PORTSDIR}/mail/p5-Mail-Tools
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Mail::DeliveryStatus::BounceParser.3

.include <bsd.port.mk>
