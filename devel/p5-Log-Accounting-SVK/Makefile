# New ports collection makefile for:	devel/p5-Log-Accounting-SVK
# Date created:				21 Oct 2004
# Whom:					Yuan-Chung Hsiao <ychsiao@ychsiao.idv.tw>
#
# $FreeBSD: ports/devel/p5-Log-Accounting-SVK/Makefile,v 1.18 2012/11/17 05:56:20 svnexp Exp $
#

PORTNAME=	Log-Accounting-SVK
PORTVERSION=	0.05
PORTREVISION=	9
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ychsiao@ychsiao.org
COMMENT=	Perl module for accounting SVK repository

BUILD_DEPENDS=	svk>=0:${PORTSDIR}/devel/svk \
		p5-Spiffy>=0:${PORTSDIR}/devel/p5-Spiffy \
		p5-Graph-SocialMap>=0:${PORTSDIR}/graphics/p5-Graph-SocialMap \
		p5-Graph-Writer-GraphViz>=0:${PORTSDIR}/graphics/p5-Graph-Writer-GraphViz \
		p5-Algorithm-Accounting>=0:${PORTSDIR}/devel/p5-Algorithm-Accounting
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN1=	svk-accounting.pl.1 svk-developer-graph.pl.1
MAN3=	Log::Accounting::SVK.3

.include <bsd.port.mk>
