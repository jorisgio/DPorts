# New ports collection makefile for:	p5-Encode-compat
# Date created:				Mon April 14th, 2003
# Whom:					Erwin Lansing <erwin@lansing.dk>
#
# $FreeBSD: ports/converters/p5-Encode-compat/Makefile,v 1.10 2012/11/17 05:55:04 svnexp Exp $
#

PORTNAME=	Encode-compat
PORTVERSION=	0.07
CATEGORIES=	converters perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Compatibility interfaces for Encode.pm on Perl < 5.7.1

BUILD_DEPENDS=	p5-Text-Iconv>=0:${PORTSDIR}/converters/p5-Text-Iconv
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Encode::compat.3 Encode::compat::Alias.3

.include <bsd.port.mk>
