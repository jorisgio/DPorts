# New ports collection makefile for:	xdaliclock
# Date created:				10th February 1995
# Whom:					gpalmer
#
# $FreeBSD: ports/x11-clocks/xdaliclock/Makefile,v 1.47 2012/11/17 06:03:24 svnexp Exp $
#

PORTNAME=	xdaliclock
PORTVERSION=	2.37
CATEGORIES=	x11-clocks
MASTER_SITES=	http://www.jwz.org/xdaliclock/
MASTER_SITE_SUBDIR=	applications

MAINTAINER=	wxs@FreeBSD.org
COMMENT=	A rather neat animated clock

WRKSRC=		${WRKDIR}/${DISTNAME}/X11

GNU_CONFIGURE=	yes
USE_XORG=	xt sm ice xext x11
MAN1=		xdaliclock.1
PLIST_FILES=	bin/xdaliclock
MAKE_JOBS_SAFE=	yes

.include <bsd.port.mk>
