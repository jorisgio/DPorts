# New ports collection makefile for:	Class-Mix
# Date created:				21 May 2009
# Whom:					brix@FreeBSD.org
#
# $FreeBSD: ports/devel/p5-Class-Mix/Makefile,v 1.5 2012/11/17 05:56:08 svnexp Exp $
#

PORTNAME=	Class-Mix
PORTVERSION=	0.005
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	brix@FreeBSD.org
COMMENT=	Perl module for dynamic class mixing

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-parent>=0:${PORTSDIR}/devel/p5-parent
RUN_DEPENDS=	p5-parent>=0:${PORTSDIR}/devel/p5-parent \
		p5-Params-Classify>=0:${PORTSDIR}/devel/p5-Params-Classify

PERL_MODBUILD=	yes

MAN3=	Class::Mix.3

.include <bsd.port.mk>
