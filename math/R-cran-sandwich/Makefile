# New ports collection makefile for:	R-cran-sandwich
# Date created:		2011-09-23
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/math/R-cran-sandwich/Makefile,v 1.11 2012/11/17 05:59:19 svnexp Exp $
#

PORTNAME=	sandwich
DISTVERSION=	2.2-9
PORTREVISION=	3
CATEGORIES=	math
DISTNAME=	${PORTNAME}_${DISTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Robust Covariance Matrix Estimators

LICENSE=	GPLv2

RUN_DEPENDS=	R-cran-zoo>0:${PORTSDIR}/math/R-cran-zoo

USE_R_MOD=	yes
R_MOD_AUTOPLIST=	yes

.include <bsd.port.mk>
