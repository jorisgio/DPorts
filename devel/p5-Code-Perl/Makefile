# New ports collection makefile for:	p5-Code-Perl
# Date created:				26 May 2006
# Whom:					Aaron Dalton <aaron@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Code-Perl/Makefile,v 1.8 2012/11/17 05:56:08 svnexp Exp $
#

PORTNAME=	Code-Perl
PORTVERSION=	0.03
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:FDALY
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Produce Perl code from a tree

BUILD_DEPENDS=	p5-Class-MethodMaker>=0:${PORTSDIR}/devel/p5-Class-MethodMaker \
		p5-Test-Deep>=0:${PORTSDIR}/devel/p5-Test-Deep
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=	Code::Perl.3 Code::Perl::Expr.3

PERL_CONFIGURE=	yes

.include <bsd.port.mk>
