# New ports collection makefile for:	p5-Mail-Verify
# Date created:				2 August 2001
# Whom:					Pete Fritchman <petef@databits.net >
#
# $FreeBSD: ports/mail/p5-Mail-Verify/Makefile,v 1.14 2012/11/17 05:59:09 svnexp Exp $
#

PORTNAME=	Mail-Verify
PORTVERSION=	0.02
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	chifeng@gmail.com
COMMENT=	Perl module to verify email addresses

BUILD_DEPENDS=	p5-Net-DNS>=0:${PORTSDIR}/dns/p5-Net-DNS
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Mail::Verify.3

.include <bsd.port.mk>
