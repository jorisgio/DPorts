# New ports collection makefile for:	p5-Math-String
# Date created:		2012-04-08
# Whom:			Steve Wills <swills@FreeBSD.org>
#
# $FreeBSD: ports/math/p5-Math-String/Makefile,v 1.2 2012/11/17 05:59:26 svnexp Exp $
#

PORTNAME=	Math-String
PORTVERSION=	1.28
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl module to calculate with strings as if they were big integers

BUILD_DEPENDS=	p5-Math-BigInt>=1.87:${PORTSDIR}/math/p5-Math-BigInt
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Math::String.3 \
		Math::String::Charset.3 \
		Math::String::Charset::Grouped.3 \
		Math::String::Charset::Nested.3 \
		Math::String::Sequence.3

.include <bsd.port.mk>
