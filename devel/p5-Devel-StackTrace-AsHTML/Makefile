# New ports collection makefile for:	Devel::StackTrace::AsHTML
# Date created:		13 Oct 2009
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Devel-StackTrace-AsHTML/Makefile,v 1.8 2012/11/17 05:56:14 svnexp Exp $
#

PORTNAME=	Devel-StackTrace-AsHTML
PORTVERSION=	0.11
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MIYAGAWA
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to display stack trace in HTML

RUN_DEPENDS=	p5-Devel-StackTrace>0:${PORTSDIR}/devel/p5-Devel-StackTrace
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Devel::StackTrace::AsHTML.3

.include <bsd.port.mk>
