# New ports collection makefile for:	p5-Crypt-CBCeasy
# Date created:				16 octobre 2003
# Whom:	      				mat
#
# $FreeBSD: ports/security/p5-Crypt-CBCeasy/Makefile,v 1.9 2012/11/17 06:01:10 svnexp Exp $
#

PORTNAME=	Crypt-CBCeasy
PORTVERSION=	0.24
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Easy things make really easy with Crypt::CBC

BUILD_DEPENDS=	p5-Crypt-CBC>=0:${PORTSDIR}/security/p5-Crypt-CBC \
		p5-MD5>=0:${PORTSDIR}/security/p5-MD5
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Crypt::CBCeasy.3

OPTIONS_DEFINE=	DES IDEA BLOWFISH BLOWFISH_PP TWOFISH2 RIJNDAEL
OPTIONS_DEFAULT=	DES IDEA BLOWFISH BLOWFISH_PP TWOFISH2 RIJNDAEL
DES_DESC=		Build with Crypt::DES support
IDEA_DESC=		Build with Crypt::IDEA support
BLOWFISH_DESC=		Build with Crypt::Blowfish support
BLOWFISH_PP_DESC=	Build with Crypt::Blowfish_PP support
TWOFISH2_DESC=		Build with Crypt::Twofish2 support
RIJNDAEL_DESC=		Build with Crypt::Rijndael support

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDES}
BUILD_DEPENDS+=	p5-Crypt-DES>=0:${PORTSDIR}/security/p5-Crypt-DES
.endif
.if ${PORT_OPTIONS:MIDEA}
BUILD_DEPENDS+=	p5-Crypt-IDEA>=0:${PORTSDIR}/security/p5-Crypt-IDEA
.endif
.if ${PORT_OPTIONS:MBLOWFISH}
BUILD_DEPENDS+=	p5-Crypt-Blowfish>=0:${PORTSDIR}/security/p5-Crypt-Blowfish
.endif
.if ${PORT_OPTIONS:MBLOWFISH_PP}
BUILD_DEPENDS+=	p5-Crypt-Blowfish_PP>=0:${PORTSDIR}/security/p5-Crypt-Blowfish_PP
.endif
.if ${PORT_OPTIONS:MTWOFISH2}
BUILD_DEPENDS+=	p5-Crypt-Twofish2>=0:${PORTSDIR}/security/p5-Crypt-Twofish2
.endif
.if ${PORT_OPTIONS:MRIJNDAEL}
BUILD_DEPENDS+=	p5-Crypt-Rijndael>=0:${PORTSDIR}/security/p5-Crypt-Rijndael
.endif

.include <bsd.port.mk>
