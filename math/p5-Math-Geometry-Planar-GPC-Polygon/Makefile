# New ports collection makefile for:	p5-Math-Geometry-Planar-GPC-Polygon
# Date created:		03 Mar 2011
# Whom:			Dmitry Marakasov <amdmi3@FreeBSD.org>
#
# $FreeBSD: ports/math/p5-Math-Geometry-Planar-GPC-Polygon/Makefile,v 1.4 2012/11/17 05:59:26 svnexp Exp $
#

PORTNAME=	Math-Geometry-Planar-GPC-Polygon
PORTVERSION=	0.05
PORTREVISION=	1
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	OO wrapper to gpc library

BUILD_DEPENDS=	p5-Inline>=0:${PORTSDIR}/devel/p5-Inline
RUN_DEPENDS=	p5-Inline>=0:${PORTSDIR}/devel/p5-Inline

PERL_CONFIGURE=	yes
MAKE_JOBS_UNSAFE=	yes

MAN3=		Math::Geometry::Planar::GPC::Polygon.3

.include <bsd.port.mk>
