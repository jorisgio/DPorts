# New ports collection makefile for:	mail/p5-Net-QMTP
# Date created:				15 October 2003
# Whom:					James Raftery <james@now.ie>
#
# $FreeBSD: ports/mail/p5-Net-QMTP/Makefile,v 1.5 2012/11/17 05:59:09 svnexp Exp $
#

PORTNAME=	Net-QMTP
PORTVERSION=	0.06
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	james@now.ie
COMMENT=	Perl module to provide a Quick Mail Transfer Protocol (QMTP) client

BUILD_DEPENDS=	p5-Text-Netstring>=0:${PORTSDIR}/textproc/p5-Text-Netstring
RUN_DEPENDS=	p5-Text-Netstring>=0:${PORTSDIR}/textproc/p5-Text-Netstring

PERL_CONFIGURE=	yes

MAN3=		Net::QMTP.3

.include <bsd.port.mk>
