# New ports collection makefile for:	Devel-SmallProf
# Date created:	   11 August 2004
# Whom:		   Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: ports/devel/p5-Devel-SmallProf/Makefile,v 1.10 2012/11/17 05:56:14 svnexp Exp $
#

PORTNAME=	Devel-SmallProf
PORTVERSION=	2.02
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Per-line Perl profiler

BUILD_DEPENDS=	p5-Time-HiRes>=0:${PORTSDIR}/devel/p5-Time-HiRes
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Devel::SmallProf.3

.include <bsd.port.mk>
