# New ports collection makefile for:	Data-Section
# Date created:		27 December 2009
# Whom:		Andrey Kostenko <andrey@kostenko.name>
#
# $FreeBSD: ports/devel/p5-Data-Section/Makefile,v 1.10 2012/11/17 05:56:10 svnexp Exp $
#

PORTNAME=	Data-Section
PORTVERSION=	0.101621
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Read multiple hunks of data out of your DATA section

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Sub-Exporter>=0.979:${PORTSDIR}/devel/p5-Sub-Exporter \
		p5-MRO-Compat>=0.09:${PORTSDIR}/devel/p5-MRO-Compat
RUN_DEPENDS=	p5-Sub-Exporter>=0.979:${PORTSDIR}/devel/p5-Sub-Exporter \
		p5-MRO-Compat>=0.09:${PORTSDIR}/devel/p5-MRO-Compat
TEST_DEPENDS=	p5-Test-Simple>=0.90:${PORTSDIR}/devel/p5-Test-Simple

PERL_CONFIGURE=	YES

MAN3=	Data::Section.3

.include <bsd.port.mk>
