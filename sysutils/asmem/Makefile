# New ports collection makefile for:	asfsm
# Date created:		4 June 1999
# Whom:				jack
#
# $FreeBSD: ports/sysutils/asmem/Makefile,v 1.23 2012/11/17 06:01:25 svnexp Exp $
#

PORTNAME=	asmem
PORTVERSION=	1.12
PORTREVISION=	1
CATEGORIES=	sysutils afterstep
MASTER_SITES=	http://www.tigr.net/afterstep/download/asmem/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	An AfterStep look-n-feel memory utilization monitor

USE_XORG=	xpm
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-xpm \
		--with-xpm-includes=${LOCALBASE}/include \
		--with-xpm-library=${LOCALBASE}/lib

MAN1=		asmem.1
PLIST_FILES=	bin/asmem

do-install:
	${INSTALL_PROGRAM} -g kmem -m 2755 ${WRKSRC}/asmem ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/asmem.man ${MANPREFIX}/man/man1/asmem.1

.include <bsd.port.mk>
