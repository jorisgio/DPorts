# New ports collection makefile for:	Business::OnlinePayment::Jettis
# Date created:				27 December 2002
# Whom:					Maxim Sobolev <sobomax@FreeBSD.org>
#
# $FreeBSD: ports/finance/p5-Business-OnlinePayment-Jettis/Makefile,v 1.12 2012/11/17 05:57:26 svnexp Exp $
#

PORTNAME=	Business-OnlinePayment-Jettis
PORTVERSION=	0.02
CATEGORIES=	finance perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	A Business::OnlinePayment backend module for Jettis

BUILD_DEPENDS=	p5-Business-CreditCard>=0:${PORTSDIR}/finance/p5-Business-CreditCard \
		p5-Business-OnlinePayment>=0:${PORTSDIR}/finance/p5-Business-OnlinePayment
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Business::OnlinePayment::Jettis.3

.include <bsd.port.mk>
