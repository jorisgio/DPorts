# New ports collection makefile for:	devel/p5-Every
# Date created:				05 September 2008
# Whom:					Anton Berezin <tobez@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Every/Makefile,v 1.6 2012/11/17 05:56:15 svnexp Exp $
#

PORTNAME=	Every
PORTVERSION=	0.08
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:TEODOR
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Return true every N cycles or S seconds

BUILD_DEPENDS=	p5-Devel-Callsite>=0.04:${PORTSDIR}/devel/p5-Devel-Callsite
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Every.3

.include <bsd.port.mk>
