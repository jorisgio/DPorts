# New ports collection makefile for:	FSA-Rules
# Date created:				11 Feb 2006
# Whom:					Aaron Dalton <aaron@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-FSA-Rules/Makefile,v 1.21 2012/11/17 05:56:15 svnexp Exp $
#

PORTNAME=	FSA-Rules
PORTVERSION=	0.31
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DWHEELER
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Build simple rules-based state machines in Perl

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-GraphViz>=2:${PORTSDIR}/graphics/p5-GraphViz \
		p5-Text-Tabs+Wrap>=0:${PORTSDIR}/textproc/p5-Text-Tabs+Wrap
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		FSA::Rules.3

.include <bsd.port.mk>
