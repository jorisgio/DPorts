# New ports collection makefile for:	aXe
# Date created:		28 December 1994
# Whom:			jc@irbs.com John Capo
#
# $FreeBSD: ports/editors/axe/Makefile,v 1.17 2012/11/17 05:57:11 svnexp Exp $
#

PORTNAME=	aXe
PORTVERSION=	6.1.2
PORTREVISION=	3
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	editors
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Simple to use text editor for X

LIB_DEPENDS=	Xaw3d:${PORTSDIR}/x11-toolkits/Xaw3d

USE_IMAKE=	yes
USE_XORG=	ice sm x11 xaw xext xmu xpm xt
ALL_TARGET=	Xaw3d all
MAN1=		axe.1 axinfo.1
MAKE_JOBS_UNSAFE=	yes

.include <bsd.port.mk>
