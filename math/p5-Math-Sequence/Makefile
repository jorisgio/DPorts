# New ports collection makefile for:	Math-Sequence
# Date created:				15 May 2006
# Whom:					Aaron Dalton <aaron@FreeBSD.org>
#
# $FreeBSD: ports/math/p5-Math-Sequence/Makefile,v 1.7 2012/11/17 05:59:26 svnexp Exp $
#

PORTNAME=	Math-Sequence
PORTVERSION=	1.00
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl extension dealing with mathematic sequences

BUILD_DEPENDS=	p5-Math-Symbolic>=0:${PORTSDIR}/math/p5-Math-Symbolic
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=	Math::Sequence.3

PERL_CONFIGURE=	yes

.include <bsd.port.mk>
