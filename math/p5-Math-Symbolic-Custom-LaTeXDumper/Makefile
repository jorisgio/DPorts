# New ports collection makefile for:	Math-Symbolic-Custom-LaTeXDumper
# Date created:				15 May 2006
# Whom:					Aaron Dalton <aaron@FreeBSD.org>
#
# $FreeBSD: ports/math/p5-Math-Symbolic-Custom-LaTeXDumper/Makefile,v 1.8 2012/11/17 05:59:26 svnexp Exp $
#

PORTNAME=	Math-Symbolic-Custom-LaTeXDumper
PORTVERSION=	0.207
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Math::Symbolic LaTeX output

BUILD_DEPENDS=	p5-Math-Symbolic>=0.201:${PORTSDIR}/math/p5-Math-Symbolic
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=	Math::Symbolic::Custom::LaTeXDumper.3

PERL_CONFIGURE=	yes

.include <bsd.port.mk>
