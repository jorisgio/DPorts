# New ports collection makefile for:	p5-Crypt-Simple
# Date created:	   01 Jun 2010
# Whom:		   Alexander Kriventsov <avk@vl.ru>
#
# $FreeBSD: ports/security/p5-Crypt-Simple/Makefile,v 1.8 2012/11/17 06:01:11 svnexp Exp $
#

PORTNAME=	Crypt-Simple
PORTVERSION=	0.06
PORTREVISION=	1
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	avk@vl.ru
COMMENT=	Perl encrypt stuff simply

RUN_DEPENDS=	p5-Crypt-Blowfish>=0:${PORTSDIR}/security/p5-Crypt-Blowfish \
		p5-MIME-Base64>=0:${PORTSDIR}/converters/p5-MIME-Base64 \
		p5-FreezeThaw>=0:${PORTSDIR}/devel/p5-FreezeThaw
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Crypt::Simple.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 500703
RUN_DEPENDS+=	p5-Digest-MD5>=2.16:${PORTSDIR}/security/p5-Digest-MD5
.endif

.if ${PERL_LEVEL} < 500903
RUN_DEPENDS+=	p5-IO-Compress>=2.017:${PORTSDIR}/archivers/p5-IO-Compress
.endif

.include <bsd.port.post.mk>
