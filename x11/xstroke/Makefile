# Ports collection makefile for:	xstroke
# Date created:			May 14, 2002
# Whom:				ijliao
#
# $FreeBSD: ports/x11/xstroke/Makefile,v 1.26 2012/11/17 06:03:23 svnexp Exp $
#

PORTNAME=	xstroke
PORTVERSION=	0.5.12
PORTREVISION=	8
CATEGORIES=	x11
MASTER_SITES=	http://ftp.gwdg.de/pub/linux/handhelds/projects/xstroke/release-0.5/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Fullscreen gesture recognition

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

USE_BISON=	build
USE_XORG=	xft x11 xext xi xtst
USE_IMAKE=	yes

MAN1=		xstroke.1
PLIST_FILES=	bin/xstroke %%ETCDIR%%/alphabet
PLIST_DIRS=	%%ETCDIR%%

CFLAGS+=	-I.
CPPFLAGS+=	-I${LOCALBASE}/include ${PTHREAD_CFLAGS}
LDFLAGS+=	-L${LOCALBASE}/lib ${PTHREAD_LIBS}

post-patch:
	@${REINPLACE_CMD} -e "s,%%PREFIX%%,${PREFIX},g" ${WRKSRC}/etc/Imakefile
	@${REINPLACE_CMD} -e "s,etc/,${PREFIX}/etc/,g" ${WRKSRC}/args.h

.include <bsd.port.mk>
