# New ports collection makefile for:   p5-Net-SCP
# Date created:                                12 May 2002
# Whom:                                        Erich Zigler <erich@tacni.net>
#
# $FreeBSD: ports/net/p5-Net-SCP/Makefile,v 1.10 2012/11/17 06:00:11 svnexp Exp $
#

PORTNAME=	Net-SCP
PORTVERSION=	0.08
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl5 module to access and use scp protocol

BUILD_DEPENDS=	p5-Net-SSH>=0:${PORTSDIR}/net/p5-Net-SSH \
		p5-String-ShellQuote>=0:${PORTSDIR}/textproc/p5-String-ShellQuote \
		p5-IO>=0:${PORTSDIR}/devel/p5-IO
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Net::SCP.3

.include <bsd.port.mk>
