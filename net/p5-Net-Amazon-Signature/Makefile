# New ports collection makefile for:	p5-Net-Amazon-Signature
# Date created:		2008-03-20
# Whom:			Greg Larkin <glarkin@FreeBSD.org>
#
# $FreeBSD: ports/net/p5-Net-Amazon-Signature/Makefile,v 1.4 2012/11/17 06:00:10 svnexp Exp $
#

PORTNAME=	Net-Amazon-Signature
PORTVERSION=	0.03
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	glarkin@FreeBSD.org
COMMENT=	Perl interface to create Amazon AWS signatures

TEST_DEPENDS=	p5-Spiffy>=0:${PORTSDIR}/devel/p5-Spiffy \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime \
		p5-Digest-HMAC>=0:${PORTSDIR}/security/p5-Digest-HMAC

PERL_CONFIGURE=	yes

MAN3=		Net::Amazon::Signature.3

.include <bsd.port.mk>
