# New ports collection makefile for:	chimera
# Date created:		26 December 1994
# Whom:			asami
#
# $FreeBSD: ports/www/chimera/Makefile,v 1.32 2012/11/17 06:02:29 svnexp Exp $
#

PORTNAME=	chimera
PORTVERSION=	1.70p0
PORTREVISION=	3
CATEGORIES=	www
MASTER_SITES=	http://www.rocklinux.net/people/ripclaw/projects/software/chimera/devel/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	X/Athena World-Wide Web client

RUN_DEPENDS= 	${LOCALBASE}/etc/mime.types:${PORTSDIR}/misc/mime-support

NO_LATEST_LINK=	yes
USE_IMAKE=	yes
USE_XORG=	ice sm x11 xaw xext xmu xpm xt

MAN1=		chimera.1

.include <bsd.port.mk>
