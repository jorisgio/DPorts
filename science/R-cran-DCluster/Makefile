# New ports collection makefile for:	R-cran-DCluster
# Date created:		2011-08-16
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/science/R-cran-DCluster/Makefile,v 1.10 2012/11/17 06:00:56 svnexp Exp $
#

PORTNAME=	DCluster
DISTVERSION=	0.2-5
PORTREVISION=	2
CATEGORIES=	science
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Functions for the detection of spatial clusters of diseases

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

RUN_DEPENDS=	R-cran-spdep>0:${PORTSDIR}/math/R-cran-spdep

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
