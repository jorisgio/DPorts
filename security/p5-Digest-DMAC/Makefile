# Ports collection Makefile for:	p5-Digest-DMAC
# Date created:				17 Dec 2005
# Whom:					Gabor Kovesdan
# $FreeBSD: ports/security/p5-Digest-DMAC/Makefile,v 1.10 2012/11/17 06:01:12 svnexp Exp $

PORTNAME=	Digest-DMAC
PORTVERSION=	1.1.4
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	skreuzer@FreeBSD.org
COMMENT=	Perl5 interface to DMAC Double Message-Digest Algorithms

BUILD_DEPENDS=	p5-Crypt-CBC>=0:${PORTSDIR}/security/p5-Crypt-CBC \
		p5-MIME-Base64>=0:${PORTSDIR}/converters/p5-MIME-Base64
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Digest::DMAC.3

.include <bsd.port.mk>
