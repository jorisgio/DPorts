# New ports collection makefile for:	xcolors
# Date created:		10 May 1995
# Whom:			asami
#
# $FreeBSD: ports/x11/xcolors/Makefile,v 1.31 2012/11/17 06:03:21 svnexp Exp $
#

PORTNAME=	xcolors
PORTVERSION=	1.3
PORTREVISION=	4
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	markp
DISTNAME=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Display all (ok, most of) the colors in the universe

RUN_DEPENDS=	showrgb:${PORTSDIR}/x11/rgb

WRKSRC=		${WRKDIR}/xcolors
USE_XORG=	xaw xmu xt sm ice xpm xp xext x11
USE_IMAKE=	yes
MAN1=		xcolors.1

.include <bsd.port.mk>
