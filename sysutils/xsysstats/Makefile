# Create by: asami
# $FreeBSD: ports/sysutils/xsysstats/Makefile,v 1.32 2012/12/10 01:26:33 svnexp Exp $

PORTNAME=	xsysstats
PORTVERSION=	1.51
PORTREVISION=	3
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	utilities
DISTNAME=	${PORTNAME}${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A system information display tool

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_XORG=	x11
MAN1=		xsysstats.1

ALL_TARGET=	xsysstats

PLIST_FILES=	bin/xsysstats

pre-patch:
	${RM} ${WRKSRC}/headers.h && ${TOUCH} ${WRKSRC}/headers.h

.include <bsd.port.mk>
