# New ports collection makefile for:	devel/p5-Algorithm-Accounting
# Date created:				25 Oct 2004
# Whom:					Yuan-Chung Hsiao <ychsiao@ychsiao.idv.tw>
#
# $FreeBSD: ports/devel/p5-Algorithm-Accounting/Makefile,v 1.13 2012/11/17 05:56:03 svnexp Exp $
#

PORTNAME=	Algorithm-Accounting
PORTVERSION=	0.08
PORTREVISION=	6
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ychsiao@ychsiao.org
COMMENT=	Generate accounting statistic for general logs

BUILD_DEPENDS=	p5-Spiffy>=0:${PORTSDIR}/devel/p5-Spiffy \
		p5-Perl6-Form>=0:${PORTSDIR}/devel/p5-Perl6-Form \
		p5-FreezeThaw>=0:${PORTSDIR}/devel/p5-FreezeThaw \
		p5-Array-Compare>=0:${PORTSDIR}/misc/p5-Array-Compare \
		p5-Array-Iterator>=0:${PORTSDIR}/devel/p5-Array-Iterator \
		p5-Clone>=0:${PORTSDIR}/devel/p5-Clone \
		p5-GD-Graph>=0:${PORTSDIR}/graphics/p5-GD-Graph \
		p5-Imager-Graph>=0:${PORTSDIR}/graphics/p5-Imager-Graph \
		p5-YAML>=0:${PORTSDIR}/textproc/p5-YAML
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Algorithm::Accounting.3 \
		Algorithm::Accounting::Report.3 \
		Algorithm::Accounting::Report::Imager.3 \
		Algorithm::Accounting::Report::GDGraph.3 \
		Algorithm::Accounting::Report::Text.3

.include <bsd.port.mk>
