# New ports collection makefile for:	xmaddressbook
# Date created:		31 Jul 1996
# Whom:			shanee@augusta.de
#
# $FreeBSD: ports/deskutils/xmaddressbook/Makefile,v 1.14 2012/11/17 05:55:31 svnexp Exp $
#

PORTNAME=	xmaddressbook
PORTVERSION=	1.5.3
PORTREVISION=	3
CATEGORIES=	deskutils
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	office
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@FreeBSD.org
COMMENT=	X11/Motif-based addressbook program

USE_MOTIF=	yes
USE_IMAKE=	yes
USE_XORG=	ice sm x11 xext xi xp xt oldx
WRKSRC=		${WRKDIR}/xmaddressbook
MAN1=		xmaddressbook.1

.include <bsd.port.mk>
